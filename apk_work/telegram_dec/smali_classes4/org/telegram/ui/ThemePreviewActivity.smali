.class public Lorg/telegram/ui/ThemePreviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;,
        Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;,
        Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;,
        Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;,
        Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$BlurButton;,
        Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;,
        Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;
    }
.end annotation


# instance fields
.field private TAG:I

.field private accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field private actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animationHint:Lorg/telegram/ui/Components/HintView;

.field private applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

.field private applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

.field private applyColorAction:Ljava/lang/Runnable;

.field private applyColorScheduled:Z

.field private applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private backgroundButtonsContainer:Landroid/widget/FrameLayout;

.field private backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

.field private backgroundColor:I

.field private backgroundGradientColor1:I

.field private backgroundGradientColor2:I

.field private backgroundGradientColor3:I

.field private backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

.field private backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

.field private backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

.field private backgroundPlayAnimationImageView:Landroid/widget/ImageView;

.field private backgroundPlayAnimationView:Landroid/widget/FrameLayout;

.field private backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

.field private backgroundRotation:I

.field private backupAccentColor:I

.field private backupAccentColor2:I

.field private backupBackgroundGradientOverrideColor1:J

.field private backupBackgroundGradientOverrideColor2:J

.field private backupBackgroundGradientOverrideColor3:J

.field private backupBackgroundOverrideColor:J

.field private backupBackgroundRotation:I

.field private backupIntensity:F

.field private backupMyMessagesAccentColor:I

.field private backupMyMessagesAnimated:Z

.field private backupMyMessagesGradientAccentColor1:I

.field private backupMyMessagesGradientAccentColor2:I

.field private backupMyMessagesGradientAccentColor3:I

.field private backupSlug:Ljava/lang/String;

.field private final blendMode:Landroid/graphics/PorterDuff$Mode;

.field private blurredBitmap:Landroid/graphics/Bitmap;

.field private blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private cancelButton:Landroid/widget/TextView;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private checkColor:I

.field private checkedBoostsLevel:Z

.field private checkingBoostsLevel:Z

.field private colorPicker:Lorg/telegram/ui/Components/ColorPicker;

.field private colorType:I

.field croppedWidth:F

.field private currentIntensity:F

.field currentScrollOffset:F

.field private currentWallpaper:Ljava/lang/Object;

.field private currentWallpaperBitmap:Landroid/graphics/Bitmap;

.field private dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field defaultScrollOffset:F

.field private delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

.field private deleteOnCancel:Z

.field dialogId:J

.field private dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

.field private dimAmount:F

.field private dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

.field private dimmingSliderContainer:Landroid/widget/FrameLayout;

.field private doneButton:Landroid/widget/TextView;

.field private dotsContainer:Landroid/view/View;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private editingTheme:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private frameLayout:Landroid/widget/FrameLayout;

.field gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

.field private hasScrollingBackground:Z

.field private imageFilter:Ljava/lang/String;

.field private intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

.field private isBlurred:Z

.field private isMotion:Z

.field private lastDrawableToBlur:Ljava/lang/ref/WeakReference;

.field private lastPickedColor:I

.field private lastPickedColorNum:I

.field private lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private lastSizeHash:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listView2:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingFile:Ljava/lang/String;

.field private loadingFileObject:Ljava/io/File;

.field private loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

.field maxScrollOffset:F

.field private maxWallpaperSize:I

.field private messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

.field private messagesButtonsContainer:Landroid/widget/FrameLayout;

.field private messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

.field private messagesPlayAnimationImageView:Landroid/widget/ImageView;

.field private messagesPlayAnimationView:Landroid/widget/FrameLayout;

.field private messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

.field private motionAnimation:Landroid/animation/AnimatorSet;

.field msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private nightTheme:Z

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

.field private originalBitmap:Landroid/graphics/Bitmap;

.field private page1:Landroid/widget/FrameLayout;

.field private page2:Landroid/widget/FrameLayout;

.field private parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

.field private parallaxScale:F

.field private patternColor:I

.field private patternLayout:[Landroid/widget/FrameLayout;

.field private patternTitleView:Landroid/widget/TextView;

.field private patternViewAnimation:Landroid/animation/AnimatorSet;

.field private patterns:Ljava/util/ArrayList;

.field private patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

.field private patternsButtonsContainer:[Landroid/widget/FrameLayout;

.field private patternsCancelButton:[Landroid/widget/TextView;

.field private patternsDict:Ljava/util/HashMap;

.field private patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private patternsSaveButton:[Landroid/widget/TextView;

.field private previousBackgroundColor:I

.field private previousBackgroundGradientColor1:I

.field private previousBackgroundGradientColor2:I

.field private previousBackgroundGradientColor3:I

.field private previousBackgroundRotation:I

.field private previousIntensity:F

.field private previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private progressToDarkTheme:F

.field private progressVisible:Z

.field private removeBackgroundOverride:Z

.field private rotatePreview:Z

.field private saveButtonsContainer:Landroid/widget/FrameLayout;

.field private saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final screenType:I

.field private scroller:Landroid/widget/Scroller;

.field private selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field self:Z

.field serverWallpaper:Lorg/telegram/messenger/MessageObject;

.field private setupFinished:Z

.field private sheetDrawable:Landroid/graphics/drawable/Drawable;

.field private shouldShowBrightnessControll:Z

.field private shouldShowDayNightIcon:Z

.field private showColor:Z

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public final themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

.field private themeDescriptions:Ljava/util/List;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field public useDefaultThemeForButtons:Z

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private wasScroll:Z

.field private watchForKeyboardEndTime:J


# direct methods
.method public static synthetic $r8$lambda$1NbvpStwepf-VDa_AAqQbAYfgNA(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$10(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1m_hOflpM6xj9C82btMnIOrCxE4()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$onFragmentDestroy$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$2_eHBBt6BCIuI7vPNNwgGWViXxk(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$13(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2i4CDrimH8j2VLE_CYXrB74-oqk()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$3VBFZAo3FGBpCKbvZEY8iEbqsDM(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$35(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Ocn8fX67CEAIw11qzaYjS5qRUs(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$15(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6YZ0ReR8pdv4SiQrcV8P531z23U(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6v2qeXkA9uQMHaheGToXZeLTfTQ(Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8OgX8ATzZHWjtlgaHFfk3PpGc_g(Lorg/telegram/ui/ThemePreviewActivity;IIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$7(IIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$AzlB9vz1nsQx1rAvzvaYPoMCNc8(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6F14OY8MG2OW_TWx_GVUH07dmI(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JJ1TlYDc3dGtrSX2-I0W_tkI0qA(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$KRc6_gFlzwNQbkdyPLR7UMzAhJU(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QL3hckfE11bflQFil0yLsG9XVgY(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QNnRY6EpEivTVXSy3ORCO-WMi6Y(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SYZDOhqtZEiS6wgO2ZfYZSofEVQ(Lorg/telegram/ui/ThemePreviewActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$14(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UXVCt3v_yObF_A1amwR25ll5bTM(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vi7T5WWz0lQdvntjdFvAOYufYJw(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ax_kgf-ea6syIqVRChMKyBENhT8(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDEn2Ex-5ZrvOIO-JR-pxJVOfkQ(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3RaOEckOO52UD_94oeXOrTSkGw(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g4zxTy8DWZDBESqlEGMhg5NKfYI(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$12(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gD4HqCNx__ulLMgFF7T_Yrp331Q(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gw7VHMT_d8xxvRDe8qqoA1688xs(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$11(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCJ3QFgQflxazbFgeA72bxQNWtY(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hgI32JY_2MnOr_EA_PQkThVFdaQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$34(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$imLDks32R2Ur2yjv8v-cXv1SEKM(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$28(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBWfaBTMyKKZyIXh10d1aDZi6DE(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$selectColorType$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcX8ZbTIzaUpIuGC5KA2x2RZN1o(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$didReceivedNotification$30(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mxPVSGvN3hJPwWs7u42kcNPav-8(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$getThemeDescriptionsInternal$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$oas9-CTr2XW-9LE5om3hyG7dg0w(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$toggleTheme$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$sflEnhuHtd-EAXWIHmerLdo3NV4(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$ujzXCAm4yqYVDw_aFmuwwQ-B6eU(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkBoostsLevel$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wNlvLhgUdukqUU8JNOvHLWpmxI8(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$checkDiscard$26(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1Zgc3jsqHZ-u_u_wxarUZEzhGg(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$showAnimationHint$32(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUgoS-DSIx920vGr5qa_ApbKjww(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0Xbo2o3aptP1NUk5Nfqh0Kgvpk(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->lambda$applyWallpaperBackground$20(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V
    .locals 7

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v3, v1, [Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingFile:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingFileObject:Ljava/io/File;

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v4, "640_360"

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v4, 0x780

    iput v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    new-instance v4, Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ThemePreviewActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-boolean p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->motion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_0

    iget p1, p1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V
    .locals 5

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v2, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;

    invoke-direct {v1, p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity$MessageDrawable;-><init>(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-array v3, v1, [Landroid/widget/FrameLayout;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-array v3, v1, [Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-array v3, v1, [Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-array v1, v1, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingFile:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingFileObject:Ljava/io/File;

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->loadingSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v1, "640_360"

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    const/16 v1, 0x780

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    new-instance v1, Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemePreviewActivity$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    iput-boolean p5, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    iput-boolean p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-ne p3, v0, :cond_0

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iget-wide p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iput-wide p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    :cond_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_4

    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeTemporary(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->goingToPreviewTheme:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->themePreview:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    return p1
.end method

.method static synthetic access$12300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    return-object p0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressVisible:Z

    return p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->setupFinished:Z

    return p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$12702(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$12800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12902(Lorg/telegram/ui/ThemePreviewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$13002(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemePreviewActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemePreviewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemePreviewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ThemePreviewActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Stories/recorder/SliderView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemePreviewActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/ThemePreviewActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/ThemePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSizeHash:I

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/ThemePreviewActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSizeHash:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemePreviewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    return-void
.end method

.method static synthetic access$5402(Lorg/telegram/ui/ThemePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/Components/WallpaperCheckBoxView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    return p0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemePreviewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ThemePreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->wasScroll:Z

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ThemePreviewActivity;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemePreviewActivity;)[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->onColorsRotate()V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/ColorPicker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateIntensity()V

    return-void
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ThemePreviewActivity;IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ThemePreviewActivity;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemePreviewActivity;->scheduleApplyColor(IIZ)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemePreviewActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    return-wide v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ThemePreviewActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ThemePreviewActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8502(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8602(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8702(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8802(Lorg/telegram/ui/ThemePreviewActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ThemePreviewActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private animateMotionChange()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    new-array v7, v2, [F

    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v1

    aput-object v5, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v2, [F

    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    aput v6, v8, v1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x0

    new-array v9, v2, [F

    aput v8, v9, v1

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v8, v10, v1

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v4, v8, v1

    aput-object v5, v8, v2

    aput-object v6, v8, v0

    const/4 v0, 0x3

    aput-object v7, v8, v0

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$37;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private applyColor(II)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    goto/16 :goto_4

    :cond_0
    if-ne p2, v2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    :cond_1
    :goto_0
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->setHasChanges(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_2

    :cond_3
    const-wide v5, 0x100000000L

    if-ne p2, v2, :cond_5

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_2

    :cond_5
    if-ne p2, v4, :cond_7

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_2

    :cond_7
    if-ne p2, v3, :cond_9

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p2

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    int-to-long v3, p1

    iput-wide v3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    :cond_9
    :goto_2
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    goto :goto_1

    :cond_a
    if-ne v0, v3, :cond_10

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_3

    :cond_b
    if-ne p2, v2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_3

    :cond_c
    if-ne p2, v4, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_3

    :cond_d
    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    :cond_f
    :goto_3
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-ltz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    goto/16 :goto_0

    :cond_10
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_12
    return-void
.end method

.method private applyWallpaperBackground(Z)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-wide v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getCustomWallpaperLevelMin()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iget-object v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v6}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v7

    iget-boolean v11, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v11, :cond_3

    invoke-virtual {v0, v8, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_3
    move-object v11, v7

    :goto_0
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-direct {v12, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v13, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v14, "jpg"

    const-string v15, "t"

    const/16 v9, 0x57

    if-eqz v13, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v13, v1, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v13, v3, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v13, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v0, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    :try_start_2
    invoke-static {v0, v12}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v8

    goto/16 :goto_10

    :cond_7
    :goto_3
    move-object v10, v8

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_8
    instance-of v3, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v3, :cond_e

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_d

    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v13, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v13, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_9
    iget v13, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_a

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    iget v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    invoke-static {v8}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v8

    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget v10, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    invoke-direct {v13, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v13, v5, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v13, v6}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    iget v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_5
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    iget v10, v1, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v13, v1, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz v6, :cond_b

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v3, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_6

    :cond_b
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x57

    invoke-virtual {v3, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_7
    const/4 v10, 0x0

    goto/16 :goto_d

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_d
    move-object v10, v8

    goto/16 :goto_d

    :cond_e
    instance-of v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_13

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-nez v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    :try_start_4
    iget-boolean v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    if-eqz v3, :cond_11

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iget v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->defaultScrollOffset:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_11

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->croppedWidth:F

    float-to-int v3, v3

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iget v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    div-float/2addr v8, v9

    iget-object v9, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v8, v8, v9

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v6, v8, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Ljava/io/File;

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".jpg"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v8, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x57

    invoke-virtual {v3, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    iget-object v0, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_9
    const/4 v6, 0x0

    goto :goto_c

    :catch_3
    move-exception v0

    const/4 v10, 0x0

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    iget-object v3, v0, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v3, :cond_10

    goto :goto_b

    :goto_a
    move-object v3, v0

    :goto_b
    invoke-virtual {v3, v12}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v6, :cond_12

    goto :goto_e

    :cond_12
    :try_start_6
    invoke-static {v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_11

    :goto_d
    const/4 v6, 0x0

    :goto_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_13
    const/4 v10, 0x0

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_15

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_14

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_f

    :cond_14
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0, v14}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_f
    :try_start_7
    invoke-static {v0, v12}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_4

    :goto_11
    iget-boolean v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v3, :cond_16

    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x57

    invoke-virtual {v0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x1

    goto :goto_12

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_16
    :goto_12
    iget-object v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v9, "c"

    const-string v13, "d"

    const/16 v16, 0x2d

    if-eqz v8, :cond_17

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    move-object/from16 v16, v3

    move/from16 v24, v6

    move-object/from16 v23, v12

    :goto_13
    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_17
    instance-of v8, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v8, :cond_1a

    check-cast v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move/from16 v24, v6

    move-object/from16 v16, v10

    move-object/from16 v23, v12

    move-object v8, v13

    goto :goto_13

    :cond_18
    iget-object v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_19

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    move-object v8, v3

    goto :goto_14

    :cond_19
    move-object v8, v9

    :goto_14
    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget v14, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iget v10, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    iget v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    move/from16 v24, v6

    move-object/from16 v23, v12

    const/16 v16, 0x0

    move v12, v5

    move v5, v10

    const/4 v10, 0x0

    goto :goto_18

    :cond_1a
    instance-of v4, v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v4, :cond_1b

    check-cast v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object v8, v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    :goto_15
    move-object v10, v3

    move/from16 v24, v6

    move-object/from16 v23, v12

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v5, 0x0

    :goto_16
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_18

    :cond_1b
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_1d

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_1c

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    goto :goto_17

    :cond_1c
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v3, v14}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_17
    const-string v8, ""

    goto :goto_15

    :cond_1d
    move/from16 v24, v6

    move-object/from16 v23, v12

    move-object v8, v13

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_16

    :goto_18
    new-instance v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {v6}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>()V

    iput-object v11, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    iput-object v8, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    iput-boolean v7, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iput-boolean v7, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    iput v14, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    iput v5, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    iput v12, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    iput v4, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iget-boolean v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v7, :cond_1e

    iget v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    const/4 v11, 0x0

    cmpl-float v17, v7, v11

    if-ltz v17, :cond_1e

    :goto_19
    iput v7, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    goto :goto_1a

    :cond_1e
    iget v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    goto :goto_19

    :goto_1a
    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v11, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_22

    check-cast v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    move-object v9, v8

    goto :goto_1b

    :cond_1f
    const/4 v9, 0x0

    :goto_1b
    iget v11, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    const/4 v13, 0x0

    cmpg-float v17, v11, v13

    if-gez v17, :cond_20

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v13

    if-nez v13, :cond_20

    const/high16 v13, -0x40800000    # -1.0f

    mul-float v11, v11, v13

    :cond_20
    iget-object v13, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v13, :cond_22

    iget v13, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    if-ne v13, v3, :cond_22

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-ne v3, v14, :cond_22

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-ne v3, v5, :cond_22

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-ne v3, v12, :cond_22

    iget-object v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    if-ne v3, v4, :cond_22

    iget-object v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_21

    iget v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    sub-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    :cond_21
    iget-object v3, v7, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v4, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->wallpaperId:J

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->accessHash:J

    :cond_22
    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->dialogId:J

    const-wide/16 v11, 0x0

    cmp-long v5, v3, v11

    if-eqz v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->prevUserWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_23
    iput-boolean v2, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->forBoth:Z

    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v17

    if-eqz v8, :cond_24

    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-nez v5, :cond_24

    const/16 v20, 0x1

    goto :goto_1c

    :cond_24
    const/16 v20, 0x0

    :goto_1c
    const-wide/16 v21, 0x0

    move-object/from16 v18, v10

    move-object/from16 v19, v6

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/messenger/MessagesController;->saveWallpaperToServer(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;ZJ)V

    if-eqz v0, :cond_2c

    iget-wide v3, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_2a

    if-eqz v10, :cond_28

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaperInfo:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-ne v0, v6, :cond_28

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    iget-boolean v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    iget-boolean v3, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x32

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    div-float v5, v6, v5

    iget-object v7, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-le v5, v6, :cond_25

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1d

    :cond_25
    const/4 v6, 0x0

    iget-object v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v8, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1d
    iget v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iput v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget-object v6, v1, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v6, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iput v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    const/4 v6, 0x3

    const/4 v7, 0x1

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/ThemePreviewActivity;->createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    iget-wide v5, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v0, v6, v5

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_26
    const/4 v5, 0x0

    goto :goto_1e

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    const/4 v8, 0x1

    aput-object v6, v7, v8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    aput-object v0, v7, v6

    const/4 v6, 0x3

    aput-object v0, v7, v6

    invoke-virtual {v2, v3, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_1e
    const/4 v2, 0x1

    goto :goto_1f

    :cond_28
    const/4 v5, 0x0

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v24

    iget-wide v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    new-instance v30, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda27;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda27;-><init>()V

    const/16 v27, 0x0

    move-wide/from16 v25, v2

    move-object/from16 v28, v6

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ChatThemeController;->setWallpaperToPeer(JLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)I

    move-object/from16 v4, v16

    goto :goto_1e

    :goto_1f
    iput-boolean v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->setupFinished:Z

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_29

    invoke-interface {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_22

    :cond_2a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->serviceMessageColorBackup:I

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v8, 0x0

    goto :goto_20

    :cond_2b
    move-object v8, v6

    :goto_20
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setOverrideWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    if-nez v24, :cond_2d

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->getHttpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@100_100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    goto :goto_21

    :cond_2c
    const/4 v2, 0x1

    :cond_2d
    :goto_21
    move-object/from16 v4, v16

    const/4 v5, 0x1

    :goto_22
    if-eqz v5, :cond_2f

    iget-object v0, v1, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    if-eqz v0, :cond_2e

    invoke-interface {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;->didSetNewBackground(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2f
    return-void
.end method

.method private cancelThemeApply(Z)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPreviousTheme()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iput-boolean v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iput-wide v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupSlug:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    iput v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {v0, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, v2, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->isThemeInstalled(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_0
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_6
    return-void
.end method

.method private checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastDrawableToBlur:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const v3, 0x3f70a3d7    # 0.94f

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1

    :cond_4
    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private checkBoostsLevel()V
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkDiscard()Z
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iget-wide v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupIntensity:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    if-ne v2, v3, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-ne v2, v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->SaveChangesAlertText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method private createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$WallPaper;Z)V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :goto_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;->for_both:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {p2, v0, v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    return-void
.end method

.method private getButtonsColor(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getCustomWallpaperLevelMin()I
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupCustomWallpaperLevelMin:I

    return v0
.end method

.method private hasChanges(I)Z
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    cmp-long v9, v3, v7

    if-eqz v9, :cond_4

    return v2

    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v4, v7

    if-nez v4, :cond_3

    move v4, v3

    :cond_3
    if-eq v4, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_b

    iget-wide v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_b

    iget-wide v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_c

    if-nez v3, :cond_6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    :cond_6
    if-ne v3, v2, :cond_7

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_1

    :cond_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    :goto_1
    long-to-int v9, v7

    if-nez v9, :cond_8

    cmp-long v10, v7, v5

    if-eqz v10, :cond_8

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    if-nez v9, :cond_9

    move v9, v4

    :cond_9
    :goto_2
    if-eq v9, v4, :cond_a

    return v2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_19

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_19

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    iget-wide v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    if-eq p1, v2, :cond_e

    if-ne p1, v0, :cond_18

    :cond_e
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupAccentColor:I

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eq p1, v3, :cond_f

    return v2

    :cond_f
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz p1, :cond_10

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eq p1, v3, :cond_11

    return v2

    :cond_10
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p1, :cond_11

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eq p1, v3, :cond_11

    return v2

    :cond_11
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz p1, :cond_12

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eq p1, v3, :cond_13

    return v2

    :cond_12
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz p1, :cond_13

    return v2

    :cond_13
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz p1, :cond_14

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eq p1, v3, :cond_15

    return v2

    :cond_14
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz p1, :cond_15

    return v2

    :cond_15
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz p1, :cond_16

    iget v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eq p1, v3, :cond_17

    return v2

    :cond_16
    iget p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz p1, :cond_17

    return v2

    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAnimated:Z

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    if-eq p1, v0, :cond_18

    return v2

    :cond_18
    return v1

    :cond_19
    :goto_4
    return v2
.end method

.method private invalidateBlur()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    mul-float v3, v3, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setDimAmount(F)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity;->setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_9

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$applyWallpaperBackground$19()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$applyWallpaperBackground$20(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v4, 0x17

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    iget-wide v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$applyWallpaperBackground$21()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$checkBoostsLevel$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkedBoostsLevel:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->updateApplyButton1(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkingBoostsLevel:Z

    return-void
.end method

.method private synthetic lambda$checkDiscard$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$26(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private synthetic lambda$createView$10(Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private synthetic lambda$createView$11(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 3

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_10

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    goto/16 :goto_4

    :cond_3
    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-eq p3, v0, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_c

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_a

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_5

    invoke-direct {p0, v1, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_7

    const/4 p2, -0x1

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v0, :cond_8

    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_9

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_4

    :cond_e
    if-eq p3, v0, :cond_10

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    :cond_10
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$12(ILorg/telegram/ui/Components/WallpaperCheckBoxView;Landroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-static {p3, p3}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$13(ILandroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    invoke-direct {v0, v5, v2, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    invoke-direct {v0, v5, v4, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    invoke-direct {v0, v5, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v13, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v12, "jpg"

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v7 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    :goto_2
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v5, v2, :cond_4

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-eqz v1, :cond_5

    iput-boolean v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    :cond_6
    invoke-direct {v0, v3, v4, v4}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$14(ILandroid/view/View;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectPattern(I)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->animateMotionChange()V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateMotionButton()V

    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->updateSelectedPattern(Z)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p2, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    :cond_4
    add-int/2addr p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-le p1, p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$16()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->watchForKeyboardEndTime:J

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getPreviousTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->prevAccentId:I

    if-ltz v3, :cond_1

    iget-object v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->saveAccentWallpaper()V

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v4, v0, v1, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->clearPreviousTheme()V

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->nightTheme:Z

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    invoke-static {v4, v6, v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v1}, Lorg/telegram/messenger/MessagesController;->saveTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;ZZ)V

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "themeconfig"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lastDayTheme"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v5, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didApplyNewTheme:I

    iget-boolean v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->deleteOnCancel:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    aput-object v7, v8, p1

    invoke-virtual {v5, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->turnOffAutoNight(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseDayNightWallpaperSiwtchHint()V

    new-instance v0, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->PreviewWallpaperDay:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->PreviewWallpaperNight:I

    goto :goto_0

    :goto_1
    const v1, -0x15d8d0c8

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->setBackgroundColor(II)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static synthetic lambda$createView$3(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 2

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p4, p4, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez p4, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, p4, v0, p1, v1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    if-nez p3, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 0

    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$7(IIF)V
    .locals 2

    iget-boolean p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->motionAnimation:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result p3

    sub-float/2addr p3, v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxScale:F

    sub-float/2addr v1, v0

    div-float v0, p3, v1

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    int-to-float p1, p1

    mul-float p1, p1, v0

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    int-to-float p2, p2

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->applyWallpaperBackground(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->applyWallpaperBackground(Z)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$28(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda36;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$30(Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v4}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptionsInternal$33()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_8

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->applyColor(II)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$27()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    return-void
.end method

.method private synthetic lambda$selectColorType$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    int-to-long v3, v3

    iput-wide v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    iput v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    iput v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    if-eqz v3, :cond_1

    const-string p1, "c"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_7

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v2, 0x64

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    goto :goto_3

    :cond_6
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float p2, p1, v2

    if-gez p2, :cond_7

    neg-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_8

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_8
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$selectColorType$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    iput-wide v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    invoke-direct {p0, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->removeBackgroundOverride:Z

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->resetCustomWallpaper(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private synthetic lambda$showAnimationHint$32(Landroid/content/SharedPreferences;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "bganimationhint"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private static synthetic lambda$toggleTheme$34(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$35(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private synthetic lambda$toggleTheme$36()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->switchDayNight(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->isDark()Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setForceDark(ZZ)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateBlurred()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4, v1, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/SliderView;->animateValueTo(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->animateValueTo(F)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v1

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$44;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$44;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private onColorsRotate()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    const/16 v2, 0x168

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    add-int/lit8 v0, v0, 0x2d

    :goto_0
    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    if-lt v0, v2, :cond_0

    add-int/lit16 v0, v0, -0x168

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_3

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    add-int/lit8 v1, v1, 0x2d

    :goto_1
    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-lt v1, v2, :cond_2

    add-int/lit16 v1, v1, -0x168

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    :cond_3
    :goto_2
    return-void
.end method

.method private saveAccentWallpaper()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    instance-of v3, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v4, 0x57

    if-eqz v3, :cond_1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private scheduleApplyColor(IIZ)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_11

    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    if-ne p1, p3, :cond_9

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundOverrideColor:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor1:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    :goto_1
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor2:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    :goto_2
    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundGradientOverrideColor3:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v2, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-wide v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    if-ne p1, p3, :cond_9

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result p1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v7, v6

    iget-wide v8, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v6, v8

    iget-wide v8, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v9, v8

    iget-wide v10, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v5, v10

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v9, :cond_5

    move v4, v9

    :cond_5
    invoke-virtual {v8, v4, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v6, :cond_6

    move v3, v6

    :cond_6
    invoke-virtual {v4, v3, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_7

    move v2, v7

    :cond_7
    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_8

    move p1, v5

    :cond_8
    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq p1, v0, :cond_a

    if-ne p1, p2, :cond_10

    :cond_a
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesAccentColor:I

    if-eqz v2, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v1, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    :goto_4
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor1:I

    if-eqz v2, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v1, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    :goto_5
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor2:I

    if-eqz v2, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    goto :goto_6

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v1, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    :goto_6
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backupMyMessagesGradientAccentColor3:I

    if-eqz v2, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v2, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput v1, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    :goto_7
    if-ne p1, p2, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz p3, :cond_f

    goto :goto_8

    :cond_f
    iget p3, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_8
    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    :cond_10
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    :cond_11
    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eq v2, v1, :cond_12

    if-eq v2, p2, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_12
    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColor:I

    iput p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastPickedColorNum:I

    if-eqz p3, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    if-nez p1, :cond_14

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorScheduled:Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyColorAction:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    :goto_9
    return-void
.end method

.method private selectColorType(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(IZ)V

    return-void
.end method

.method private selectColorType(IZ)V
    .locals 28

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_29

    iget v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    if-eq v2, v1, :cond_29

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_29

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v2, :cond_0

    goto/16 :goto_15

    :cond_0
    const/4 v2, 0x2

    if-eqz p2, :cond_4

    if-ne v1, v2, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v5, 0x100000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomWallpaperColor()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->ChangeWallpaperToColor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Change:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    :goto_1
    sget v2, Lorg/telegram/messenger/R$string;->ChangeColorToColor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda30;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_4
    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    iput v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_20

    const/high16 v7, 0x42700000    # 60.0f

    if-eq v1, v2, :cond_d

    if-eq v1, v4, :cond_5

    goto/16 :goto_13

    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v10, :cond_8

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v10, :cond_6

    const/4 v13, 0x4

    goto :goto_3

    :cond_6
    iget v8, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v8, :cond_7

    const/4 v13, 0x3

    goto :goto_3

    :cond_7
    const/4 v13, 0x2

    goto :goto_3

    :cond_8
    const/4 v13, 0x1

    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-direct {v0, v4}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v9, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v9, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v9, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v10, :cond_9

    goto :goto_4

    :cond_9
    iget v10, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    :goto_4
    invoke-virtual {v8, v10, v5}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v8, v5, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v8, v6, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-virtual {v8, v2, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v8, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    if-ne v3, v6, :cond_a

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_5

    :cond_b
    if-ne v3, v2, :cond_c

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_c
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v8, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->showAnimationHint()V

    goto/16 :goto_13

    :cond_d
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    :goto_6
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v8, v14

    const-wide/16 v16, 0x0

    if-nez v8, :cond_11

    cmp-long v18, v14, v16

    if-eqz v18, :cond_11

    const/4 v10, 0x0

    :cond_11
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v7, v14

    if-nez v7, :cond_12

    cmp-long v19, v14, v16

    if-eqz v19, :cond_12

    const/4 v11, 0x0

    :cond_12
    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v5, v14

    if-nez v5, :cond_13

    cmp-long v20, v14, v16

    if-eqz v20, :cond_13

    const/4 v12, 0x0

    :cond_13
    iget-wide v13, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v14, v13

    if-nez v8, :cond_15

    if-eqz v10, :cond_14

    goto :goto_9

    :cond_14
    const/16 v24, 0x1

    goto :goto_c

    :cond_15
    :goto_9
    if-nez v5, :cond_19

    if-eqz v12, :cond_16

    goto :goto_b

    :cond_16
    if-nez v7, :cond_18

    if-eqz v11, :cond_17

    goto :goto_a

    :cond_17
    const/16 v24, 0x2

    goto :goto_c

    :cond_18
    :goto_a
    const/16 v24, 0x3

    goto :goto_c

    :cond_19
    :goto_b
    const/16 v24, 0x4

    :goto_c
    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v22

    iget-object v15, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v15, v15, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v21, 0x2

    const/16 v23, 0x4

    move-object/from16 v20, v13

    move/from16 v26, v15

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v5, :cond_1a

    goto :goto_d

    :cond_1a
    move v5, v12

    :goto_d
    invoke-virtual {v13, v5, v4}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v7, :cond_1b

    goto :goto_e

    :cond_1b
    move v7, v11

    :goto_e
    invoke-virtual {v5, v7, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v8, :cond_1c

    goto :goto_f

    :cond_1c
    move v8, v10

    :goto_f
    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v14, :cond_1d

    move v9, v14

    :cond_1d
    const/4 v7, 0x0

    invoke-virtual {v5, v9, v7}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    if-eq v3, v6, :cond_1f

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v5, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_11

    :cond_1f
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_13

    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_21

    const/4 v11, 0x2

    goto :goto_12

    :cond_21
    const/4 v11, 0x1

    :goto_12
    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v5, :cond_22

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v7, v5, v6}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    :cond_22
    if-eq v3, v2, :cond_23

    if-ne v3, v4, :cond_24

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v5, :cond_24

    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_24
    :goto_13
    if-eq v1, v6, :cond_25

    if-ne v1, v4, :cond_28

    :cond_25
    if-ne v3, v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x0

    invoke-direct {v0, v2, v6, v6}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :cond_26
    if-ne v1, v6, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_15

    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v2, 0x3f4ccccd    # 0.8f

    :goto_14
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    goto :goto_15

    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_29
    :goto_15
    return-void
.end method

.method private selectPattern(I)V
    .locals 14

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->lastSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    const/4 v12, 0x0

    aget-object v2, v1, v12

    const/4 v13, 0x1

    aget-object v3, v1, v13

    aput-object v3, v1, v12

    aput-object v2, v1, v13

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v3, v3, v12

    add-int/2addr v1, v13

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v2, v1, v12

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->updateIntensity()V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v13

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$32;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$32;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$33;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$33;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v9, "jpg"

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    invoke-direct {p0, v12, v13}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBackgroundColor(IIZZ)V
    .locals 3

    const/4 p3, 0x1

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    const/4 p4, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v2, v1

    if-ge p4, v2, :cond_5

    aget-object v1, v1, p4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2, p1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_2

    :cond_7
    new-instance p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    iget-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_8
    :goto_2
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {p1, p2, p4, v1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 p1, 0x2d000000

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_4

    :cond_9
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz p1, :cond_a

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    invoke-static {p2}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p2

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    filled-new-array {p4, v1}, [I

    move-result-object p4

    invoke-direct {p1, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p1

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    goto :goto_3

    :goto_4
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p4}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, p1, p4, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    goto :goto_6

    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p4}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, p2, p4, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    :cond_d
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p4

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p4

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p4, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_10

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    :cond_10
    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    :cond_12
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_13

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_8
    if-ge p2, p1, :cond_15

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_9
    if-ge v0, p1, :cond_16

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method

.method private setCurrentImage(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/16 v8, 0x64

    if-eqz v7, :cond_3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_1

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v4, :cond_2

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v6, "b"

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v14, v5

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v15, "jpg"

    const/16 v18, 0x1

    const-string v13, "100_100_b"

    move-wide/from16 v16, v3

    move-object/from16 v19, v1

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;JILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_3
    instance-of v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v7, :cond_7

    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    iput v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundRotation:I

    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    invoke-direct {v0, v5, v2, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-eqz v5, :cond_4

    invoke-direct {v0, v5, v6, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    :cond_4
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    invoke-direct {v0, v5, v4, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget v4, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-direct {v0, v4, v3, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setBackgroundColor(IIZZ)V

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v9, "jpg"

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_5
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_6

    const/high16 v1, 0x57000000

    goto :goto_1

    :cond_6
    iget v5, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    iget v6, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    iget v7, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-static {v5, v6, v7, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v1

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    sget v6, Lorg/telegram/messenger/R$raw;->default_pattern:I

    invoke-static {v6, v3, v4, v1}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_10

    :cond_7
    instance-of v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_10

    :cond_8
    check-cast v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->path:Ljava/io/File;

    if-eqz v3, :cond_a

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v4, "t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedWallpaper(ZLandroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    :cond_b
    iget v1, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->resId:I

    if-eqz v1, :cond_2a

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_10

    :cond_c
    instance-of v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_2a

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-ne v4, v3, :cond_d

    goto :goto_3

    :cond_d
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_e

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    int-to-long v3, v4

    const-string v14, "jpg"

    const/16 v17, 0x1

    const-string v13, "100_100_b"

    move-wide v15, v3

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string v6, "100_100_b"

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v1, :cond_11

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;->dispose()V

    iput-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    :cond_12
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v1

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v8, v7

    if-eqz v8, :cond_13

    move v1, v8

    :cond_13
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v10, v8

    const-wide/16 v11, 0x0

    if-nez v10, :cond_14

    cmp-long v13, v8, v11

    if-eqz v13, :cond_14

    const/4 v7, 0x0

    goto :goto_6

    :cond_14
    if-eqz v10, :cond_15

    move v7, v10

    :cond_15
    :goto_6
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v13, v9

    if-nez v13, :cond_16

    cmp-long v14, v9, v11

    if-eqz v14, :cond_16

    const/4 v8, 0x0

    goto :goto_7

    :cond_16
    if-eqz v13, :cond_17

    move v8, v13

    :cond_17
    :goto_7
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v13, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v15, v13

    if-nez v15, :cond_18

    cmp-long v16, v13, v11

    if-eqz v16, :cond_18

    const/4 v9, 0x0

    goto :goto_8

    :cond_18
    if-eqz v15, :cond_19

    move v9, v15

    :cond_19
    :goto_8
    iget-object v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v10

    if-nez v10, :cond_1e

    if-eqz v8, :cond_1c

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v11, v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v11, :cond_1a

    check-cast v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_9

    :cond_1a
    new-instance v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    iget-boolean v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    if-eqz v11, :cond_1b

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatePreview(Z)V

    :cond_1b
    :goto_9
    invoke-virtual {v10, v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    goto :goto_a

    :cond_1c
    if-eqz v7, :cond_1d

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v10, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    invoke-static {v10}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    filled-new-array {v1, v7}, [I

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v10, Lorg/telegram/ui/ThemePreviewActivity$40;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ThemePreviewActivity$40;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-static {}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;->ofDeviceScreen()Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;

    move-result-object v12

    const-wide/16 v13, 0x64

    invoke-virtual {v11, v12, v10, v13, v14}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->startDithering(Lorg/telegram/ui/Components/BackgroundGradientDrawable$Sizes;Lorg/telegram/ui/Components/BackgroundGradientDrawable$Listener;J)Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientDisposable:Lorg/telegram/ui/Components/BackgroundGradientDrawable$Disposable;

    move-object v10, v11

    goto :goto_a

    :cond_1d
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_a
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_20

    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v16, "jpg"

    const/16 v19, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v20, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-wide/from16 v17, v20

    move-object/from16 v20, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_b

    :cond_1e
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_20

    instance-of v11, v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v11, :cond_1f

    move-object v11, v10

    check-cast v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    :cond_1f
    iget-object v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    :goto_b
    if-nez v7, :cond_21

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v10

    :goto_c
    iput v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    iput v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    goto :goto_d

    :cond_21
    if-eqz v8, :cond_22

    invoke-static {v1, v7, v8, v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    const/high16 v10, 0x2d000000

    iput v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    goto :goto_d

    :cond_22
    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v10

    goto :goto_c

    :goto_d
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-eqz v10, :cond_26

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iget v12, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternColor:I

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->blendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    iget v11, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v10, :cond_24

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v5, :cond_23

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    :cond_23
    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v10, 0x0

    cmpg-float v5, v5, v10

    if-gez v5, :cond_25

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e

    :cond_24
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v5, :cond_25

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/SeekBarView;->setTwoSided(Z)V

    :cond_25
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v5, :cond_26

    iget v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_26
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_27

    const/4 v5, 0x0

    :goto_f
    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    array-length v11, v10

    if-ge v5, v11, :cond_27

    aget-object v10, v10, v5

    invoke-virtual {v10, v2, v1}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v10, v10, v5

    invoke-virtual {v10, v6, v7}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v10, v10, v5

    invoke-virtual {v10, v4, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    iget-object v10, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v10, v10, v5

    invoke-virtual {v10, v3, v9}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setColor(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_28

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_29

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_29
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    :cond_2a
    :goto_10
    iput-boolean v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->rotatePreview:Z

    return-void
.end method

.method private setCurrentServerWallpaper(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method private setVisiblePart(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->access$8400(Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v0, v0, v2

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    add-float v2, v0, v1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget v0, v0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->ty:F

    neg-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v4, :cond_2

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    mul-float v1, v1, v4

    :cond_2
    invoke-virtual {p1, v3, v2, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FFIF)V

    return-void
.end method

.method private showAnimationHint()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bganimationhint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    if-nez v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    sget v2, Lorg/telegram/messenger/R$string;->BackgroundAnimateInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->animationHint:Lorg/telegram/ui/Components/HintView;

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/SharedPreferences;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v9

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    iget-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    const/4 v12, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;-><init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v3, v1, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$3;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v9, p0

    move v10, v1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ThemePreviewActivity$3;-><init>(Ljava/lang/Object;Landroid/graphics/Bitmap;ZZLorg/telegram/ui/ChatActivity;Z)V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setInitialModes(ZZF)V

    :cond_3
    invoke-direct {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentServerWallpaper(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/ui/ThemePreviewActivity$4;

    invoke-direct {p1, v1, p0}, Lorg/telegram/ui/ThemePreviewActivity$4;-><init>(ZLorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    return-void
.end method

.method private showPatternsView(IZZ)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v4, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-ne v4, v1, :cond_0

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eqz p2, :cond_7

    if-nez v4, :cond_4

    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v7, v0, :cond_7

    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundColor:I

    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor1:I

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor2:I

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    iput v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundGradientColor3:I

    iget v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->backupBackgroundRotation:I

    iput v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousBackgroundRotation:I

    const/4 v14, 0x3

    if-eqz v9, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    :goto_1
    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v9, 0x3

    move v14, v7

    move v7, v15

    move v15, v8

    move/from16 v16, v7

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor3:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    invoke-virtual {v7, v8, v0}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v7, v8, v2}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto :goto_4

    :cond_4
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousSelectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iput v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->previousIntensity:F

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v8, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v8, v0, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    add-int/2addr v7, v8

    :goto_3
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x42f80000    # 124.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v0

    invoke-virtual {v8, v7, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_7
    :goto_4
    iget v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v7, v1, :cond_8

    if-ne v7, v0, :cond_a

    :cond_8
    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_9

    const/4 v8, 0x2

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const/4 v7, 0x0

    if-ne v4, v1, :cond_b

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SeekBarView;->isTwoSided()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpg-float v9, v8, v7

    if-gez v9, :cond_b

    neg-float v8, v8

    iput v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    :cond_b
    const/16 v8, 0x3a

    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1a

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_c

    const/4 v11, 0x1

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    if-eqz p2, :cond_19

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v1, :cond_11

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne v4, v1, :cond_d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    new-array v13, v1, [F

    aput v9, v13, v2

    invoke-static {v8, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v5, :cond_e

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    new-array v13, v1, [F

    aput v12, v13, v2

    invoke-static {v8, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    if-eqz v5, :cond_f

    const/4 v12, 0x0

    goto :goto_9

    :cond_f
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_9
    new-array v13, v1, [F

    aput v12, v13, v2

    invoke-static {v8, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v1, :cond_10

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v1, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    new-array v1, v1, [F

    aput v7, v1, v2

    invoke-static {v0, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_a

    :cond_11
    if-ne v12, v0, :cond_17

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v13, v13, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    neg-int v13, v13

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v14, :cond_12

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    :goto_b
    add-int/lit8 v8, v8, 0x48

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v13, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v8

    if-eqz v8, :cond_13

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    :goto_c
    add-int/2addr v13, v8

    int-to-float v8, v13

    new-array v13, v1, [F

    aput v8, v13, v2

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v5, :cond_14

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_14
    const/4 v13, 0x0

    :goto_d
    new-array v14, v1, [F

    aput v13, v14, v2

    invoke-static {v8, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    if-eqz v5, :cond_15

    const/4 v10, 0x0

    :cond_15
    new-array v13, v1, [F

    aput v10, v13, v2

    invoke-static {v8, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_16

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    new-array v1, v1, [F

    aput v7, v1, v2

    invoke-static {v8, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v1, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    :cond_16
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    new-array v0, v0, [F

    aput v9, v0, v2

    aput v7, v0, v1

    invoke-static {v8, v12, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_17
    if-ne v4, v1, :cond_18

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v4

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_a

    :cond_18
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v4

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v2

    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_a

    :goto_f
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_10

    :cond_19
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v1, [F

    aput v7, v12, v2

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    new-array v13, v1, [F

    aput v12, v13, v2

    invoke-static {v8, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v1, [F

    aput v10, v12, v2

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v8, v0

    new-array v8, v1, [F

    aput v7, v8, v2

    invoke-static {v0, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-array v1, v1, [F

    aput v10, v1, v2

    invoke-static {v0, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_e

    :goto_10
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v7, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/ThemePreviewActivity$36;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v11

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$36;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ZIIZ)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_22

    :cond_1a
    if-nez v4, :cond_1b

    const/4 v11, 0x1

    goto :goto_11

    :cond_1b
    const/4 v11, 0x0

    :goto_11
    if-eqz p2, :cond_29

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v12, v12, v4

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    iget v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v12, v1, :cond_20

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v4, v1, :cond_1c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    goto :goto_12

    :cond_1c
    const/4 v9, 0x0

    :goto_12
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    if-eqz v5, :cond_1d

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_1d
    const/4 v9, 0x0

    :goto_13
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    if-eqz v5, :cond_1e

    const/4 v9, 0x0

    goto :goto_14

    :cond_1e
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_14
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    if-ne v4, v1, :cond_1f

    aget-object v8, v8, v4

    :goto_15
    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1d

    :cond_1f
    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    :goto_16
    invoke-virtual {v8, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1d

    :cond_20
    if-ne v12, v0, :cond_27

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_21

    const v12, 0x43ab8000    # 343.0f

    goto :goto_17

    :cond_21
    const/high16 v12, 0x439e0000    # 316.0f

    :goto_17
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz v13, :cond_22

    goto :goto_18

    :cond_22
    const/4 v8, 0x0

    :goto_18
    add-int/lit8 v8, v8, 0x48

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v12, v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v8

    if-eqz v8, :cond_23

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_19

    :cond_23
    const/4 v8, 0x0

    :goto_19
    add-int/2addr v12, v8

    int-to-float v8, v12

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    if-eqz v5, :cond_24

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_24
    const/4 v9, 0x0

    :goto_1a
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    if-eqz v5, :cond_25

    const/4 v9, 0x0

    goto :goto_1b

    :cond_25
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1b
    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_26

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    :goto_1c
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1e

    :cond_26
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    goto :goto_1c

    :cond_27
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    if-ne v4, v1, :cond_28

    aget-object v8, v8, v4

    goto/16 :goto_15

    :cond_28
    aget-object v8, v8, v4

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    goto/16 :goto_16

    :goto_1d
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ColorPicker;->hideKeyboard()V

    goto :goto_1e

    :cond_29
    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v2

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v0

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    :goto_1e
    if-eqz p2, :cond_2a

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v11

    :goto_1f
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    :cond_2a
    if-nez p2, :cond_2b

    iget-object v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    goto :goto_1f

    :cond_2b
    :goto_20
    iget v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v8, v1, :cond_2d

    if-ne v8, v0, :cond_2c

    goto :goto_21

    :cond_2c
    if-ne v4, v1, :cond_2f

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v11

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_22

    :cond_2d
    :goto_21
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_2e

    const/4 v0, 0x0

    :cond_2e
    aget-object v0, v1, v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    :goto_22
    return-void

    nop

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
.end method

.method private updateApplyButton1(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v0, Lorg/telegram/messenger/R$string;->ApplyWallpaperForMe:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v4, Lorg/telegram/messenger/R$string;->ApplyWallpaperForChannel:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getCustomWallpaperLevelMin()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "l"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getCustomWallpaperLevelMin()I

    move-result v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "ReactionLevelRequiredBtn"

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setSubText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkBoostsLevel()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setSubText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v2, Lorg/telegram/messenger/R$string;->ApplyWallpaperForChannel:I

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    sget v0, Lorg/telegram/messenger/R$string;->ApplyWallpaper:I

    goto/16 :goto_0

    :goto_2
    return-void
.end method

.method private updateBlurred()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateButtonState(ZZ)V
    .locals 9

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    :goto_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p2, :cond_1

    instance-of v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_11

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    goto :goto_3

    :cond_3
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object p2, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p2, :cond_4

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    :goto_1
    int-to-long v1, p1

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    goto :goto_2

    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v0, "jpg"

    invoke-static {p2, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_1

    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_7

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v5, :cond_9

    cmp-long p2, v1, v3

    if-eqz p2, :cond_6

    iget-wide v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long p2, v6, v3

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    goto :goto_4

    :cond_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne p2, v5, :cond_8

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long p2, v0, v3

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->LoadingFullImage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    iget p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    :cond_d
    if-ne p2, v5, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz p2, :cond_f

    if-eqz p1, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    if-eqz p2, :cond_11

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_11
    :goto_9
    return-void
.end method

.method private updateIntensity()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    iget v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->checkColor:I

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor([ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Float;)V

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->invalidateBlur()V

    return-void
.end method

.method private updateMotionButton()V
    .locals 12

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_9

    if-ne v0, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-ne v0, v9, :cond_2

    return-void

    :cond_2
    if-nez v8, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v0, v9

    div-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v5, v5, v6

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    new-array v10, v7, [F

    aput v3, v10, v6

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v3, v5, v6

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v6

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    int-to-float v9, v0

    :goto_3
    new-array v10, v7, [F

    aput v9, v10, v6

    invoke-static {v3, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v9, v7, [Landroid/animation/Animator;

    aput-object v3, v9, v6

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v3, v3, v7

    iget-object v9, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    neg-int v0, v0

    int-to-float v4, v0

    :goto_4
    new-array v0, v7, [F

    aput v4, v0, v6

    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$35;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemePreviewActivity$35;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    aget-object v0, v0, v8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v8, v8, v5

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v10, :cond_c

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    new-array v11, v7, [F

    aput v10, v11, v6

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, p0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v10, v10, v6

    iget-object v11, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v11, :cond_d

    const/4 v3, 0x0

    :cond_d
    new-array v4, v7, [F

    aput v3, v4, v6

    invoke-static {v10, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v5, [Landroid/animation/Animator;

    aput-object v8, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$34;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemePreviewActivity$34;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_8
    return-void
.end method

.method private updatePlayAnimationView(Z)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v4, 0x2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-lt v5, v6, :cond_7

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v5, :cond_0

    iget-wide v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v6, v5

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v6

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v14, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v5, v14

    if-nez v5, :cond_3

    cmp-long v16, v14, v8

    if-eqz v16, :cond_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    move v6, v5

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v5, v5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v5, :cond_2

    iget v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor2:I

    :cond_5
    :goto_0
    if-eqz v6, :cond_6

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    cmpl-float v5, v5, v13

    if-ltz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x42080000    # 34.0f

    if-eqz v5, :cond_1d

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v5, v4, :cond_8

    iget v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_8
    if-ne v5, v10, :cond_b

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v5

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-wide v14, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v13, v14

    if-nez v13, :cond_9

    cmp-long v18, v14, v8

    if-eqz v18, :cond_9

    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    if-eqz v13, :cond_a

    move v5, v13

    :cond_a
    :goto_2
    if-eqz v5, :cond_b

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_d

    move-object v13, v11

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v9, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eq v8, v5, :cond_1d

    if-eqz v5, :cond_e

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    if-eqz p1, :cond_16

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v5, :cond_10

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_7
    new-array v15, v10, [F

    aput v14, v15, v12

    invoke-static {v9, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz v5, :cond_11

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_11
    const/4 v15, 0x0

    :goto_8
    new-array v7, v10, [F

    aput v15, v7, v12

    invoke-static {v13, v14, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz v5, :cond_12

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_12
    const/4 v15, 0x0

    :goto_9
    new-array v1, v10, [F

    aput v15, v1, v12

    invoke-static {v13, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v13, v13, v12

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz v5, :cond_13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    new-array v2, v10, [F

    aput v15, v2, v12

    invoke-static {v13, v14, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v13, v13, v10

    if-eqz v5, :cond_14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    new-array v3, v10, [F

    aput v15, v3, v12

    invoke-static {v13, v14, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v13, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v13, v13, v4

    if-eqz v5, :cond_15

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v17, v5

    goto :goto_c

    :cond_15
    const/16 v17, 0x0

    :goto_c
    new-array v5, v10, [F

    aput v17, v5, v12

    invoke-static {v13, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v13, 0x6

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v9, v13, v12

    aput-object v7, v13, v10

    aput-object v1, v13, v4

    const/4 v1, 0x3

    aput-object v2, v13, v1

    const/4 v1, 0x4

    aput-object v3, v13, v1

    const/4 v1, 0x5

    aput-object v5, v13, v1

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$38;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$38;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_13

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_17

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_18

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_18
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_19

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v12

    if-eqz v5, :cond_1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_10

    :cond_1a
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v10

    if-eqz v5, :cond_1b

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_11

    :cond_1b
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v4

    if-eqz v5, :cond_1c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v13, v2

    goto :goto_12

    :cond_1c
    const/4 v13, 0x0

    :goto_12
    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationX(F)V

    :cond_1d
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x0

    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eq v1, v10, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1f
    if-eqz p1, :cond_20

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v10, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v12

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v10, [F

    aput v7, v8, v12

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v10, [F

    aput v7, v9, v12

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v7, v7, v12

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    new-array v11, v10, [F

    aput v9, v11, v12

    invoke-static {v7, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    new-array v11, v10, [F

    aput v6, v11, v12

    invoke-static {v9, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v2, v8, v12

    aput-object v3, v8, v10

    aput-object v5, v8, v4

    const/4 v2, 0x3

    aput-object v7, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$39;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$39;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_15

    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v1, v1, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_21
    :goto_15
    return-void
.end method

.method private updateSelectedPattern(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/PatternCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Cells/PatternCell;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PatternCell;->updateSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 38

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v14, ""

    const-string v15, "d"

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v9, -0x1000000

    const/high16 v18, 0x41e80000    # 29.0f

    const v19, 0x3dcccccd    # 0.1f

    const/4 v11, 0x2

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v12, 0x1

    iput-boolean v12, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    const-wide/16 v21, 0x0

    const/4 v0, 0x0

    if-eqz v13, :cond_0

    iget-wide v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v3, v1, v21

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v1, :cond_2

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    const/high16 v26, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    invoke-interface {v13}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->progressToDarkTheme:F

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_5
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-boolean v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    const/4 v13, 0x3

    if-eqz v1, :cond_6

    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    if-ge v1, v13, :cond_6

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    move-object/from16 v27, v14

    const-wide/16 v13, 0x7d0

    invoke-static {v1, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_6
    move-object/from16 v27, v14

    :goto_3
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ThemePreview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$6;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, -0x1

    invoke-static {v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v7, v12, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x2

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/high16 v28, 0x41400000    # 12.0f

    if-eqz v2, :cond_8

    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v10, 0x33

    invoke-static {v13, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v29, 0x42600000    # 56.0f

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v13, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v9, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v13, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v13, v10, v1, v0, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v13, v1, v10}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v1, v13

    :cond_9
    iget-object v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-virtual {v6, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->floating_pencil:I

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v10, 0x40800000    # 4.0f

    if-lt v2, v3, :cond_a

    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    const v13, 0x10100a7

    filled-new-array {v13}, [I

    move-result-object v13

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticApiModelOutline1;->m()Landroid/util/Property;

    move-result-object v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    new-array v3, v11, [F

    aput v8, v3, v0

    aput v5, v3, v12

    invoke-static {v14, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v11, 0xc8

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v1, v13, v3}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    new-array v3, v0, [I

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v8, 0x2

    new-array v12, v8, [F

    aput v11, v12, v0

    const/4 v11, 0x1

    aput v4, v12, v11

    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v11, 0xc8

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/ImageView;Landroid/animation/StateListAnimator;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$7;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ThemePreviewActivity$7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/widget/ImageView;Landroid/view/ViewOutlineProvider;)V

    :cond_a
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    const/16 v4, 0x15

    if-lt v2, v4, :cond_b

    const/16 v5, 0x38

    const/16 v31, 0x38

    goto :goto_6

    :cond_b
    const/16 v5, 0x3c

    const/16 v31, 0x3c

    :goto_6
    if-lt v2, v4, :cond_c

    const/high16 v32, 0x42600000    # 56.0f

    goto :goto_7

    :cond_c
    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v32, 0x42700000    # 60.0f

    :goto_7
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_d

    const/4 v4, 0x3

    :goto_8
    const/16 v5, 0x50

    goto :goto_9

    :cond_d
    const/4 v4, 0x5

    goto :goto_8

    :goto_9
    or-int/lit8 v33, v4, 0x50

    const/high16 v9, 0x41600000    # 14.0f

    if-eqz v2, :cond_e

    const/high16 v34, 0x41600000    # 14.0f

    goto :goto_a

    :cond_e
    const/16 v34, 0x0

    :goto_a
    if-eqz v2, :cond_f

    const/16 v36, 0x0

    goto :goto_b

    :cond_f
    const/high16 v36, 0x41600000    # 14.0f

    :goto_b
    const/high16 v37, 0x41600000    # 14.0f

    const/16 v35, 0x0

    invoke-static/range {v31 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    invoke-direct {v1, v7}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$8;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_10
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_11

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    aput-object v3, v2, v1

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v3, v3, v1

    const/16 v35, 0x0

    const/high16 v36, 0x42400000    # 48.0f

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    const/16 v32, 0x33

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_c

    :cond_11
    const/4 v2, 0x1

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v0

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImages:[Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    aget-object v1, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    :cond_12
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->access$5600(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)Z

    move-result v1

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x4

    if-eqz v1, :cond_14

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "Telegram Beta Chat"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Members"

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_13
    move-object/from16 v13, v27

    :goto_d
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_14
    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    iget-wide v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v3, v1, v21

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_15

    sget v2, Lorg/telegram/messenger/R$string;->WallpaperPreview:I

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_15
    sget v2, Lorg/telegram/messenger/R$string;->BackgroundPreview:I

    goto :goto_e

    :goto_f
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_16

    check-cast v2, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->originalPath:Ljava/io/File;

    if-eqz v2, :cond_16

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_header_draw:I

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :cond_16
    iget-wide v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v4, v2, v21

    if-nez v4, :cond_1a

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_17

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    if-nez v2, :cond_19

    :cond_17
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v3, :cond_18

    check-cast v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v2, :cond_1a

    :cond_19
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_header_share:I

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :cond_1a
    iget-wide v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v4, v2, v21

    if-eqz v4, :cond_13

    iget-boolean v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v2, :cond_13

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v27

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v33

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v30, v2

    move/from16 v31, v3

    invoke-direct/range {v30 .. v36}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_10

    :cond_1b
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_10
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Sunny.**"

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path 6.**"

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path.**"

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path 5.**"

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v13, v27

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$10;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v2, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    const/4 v14, 0x0

    move-object v12, v4

    move/from16 v4, v23

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity$10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v12, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->ColorPickerBackground:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->ColorPickerMainColor:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->ColorPickerMyMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setForceSmoothKeyboard(Z)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v33, 0x42800000    # 64.0f

    goto :goto_11

    :cond_1d
    const/high16 v33, 0x42600000    # 56.0f

    :goto_11
    const/high16 v35, 0x42200000    # 40.0f

    const/16 v36, 0x0

    const/16 v30, -0x2

    const/high16 v31, -0x40800000    # -1.0f

    const/16 v32, 0x33

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->dropDown:Landroid/widget/TextView;

    const/16 v35, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    const/high16 v31, -0x40000000    # -2.0f

    const/16 v32, 0x10

    const/high16 v33, 0x41800000    # 16.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    const/4 v5, 0x0

    goto :goto_14

    :cond_1e
    const/4 v8, 0x0

    const/4 v14, 0x0

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v3, :cond_1f

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->title:Ljava/lang/String;

    goto :goto_13

    :cond_1f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_13
    const-string v3, ".attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_20

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_20
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v2, :cond_21

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->installs_count:I

    if-lez v2, :cond_21

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "ThemeInstallCount"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_21
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v23, 0x3e8

    div-long v3, v3, v23

    const-wide/16 v23, 0xe10

    sub-long v3, v3, v23

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_14
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$11;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$12;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOverScrollMode(I)V

    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/high16 v3, 0x41800000    # 16.0f

    if-ne v2, v1, :cond_24

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v10, v6, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    if-nez v10, :cond_22

    iget-wide v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v10, v0, v21

    if-lez v10, :cond_22

    const/16 v0, 0x3a

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    :goto_15
    const/16 v1, 0x48

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v1

    if-eqz v1, :cond_23

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v0, v1

    invoke-virtual {v2, v8, v4, v8, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_18

    :cond_24
    const/4 v0, 0x1

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v2, v0, :cond_25

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_17
    invoke-virtual {v1, v8, v2, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_18

    :cond_25
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_17

    :goto_18
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-direct {v2, v7, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_19

    :cond_26
    const/4 v2, 0x2

    :goto_19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v1, v0, :cond_27

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v35, 0x0

    const v36, 0x43888000    # 273.0f

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    const/16 v32, 0x33

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    const/4 v4, -0x1

    goto :goto_1a

    :cond_27
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/16 v10, 0x33

    invoke-static {v4, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1a
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setCallback(Lorg/telegram/ui/Components/WallpaperParallaxEffect$Callback;)V

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/16 v2, 0x30

    const/16 v10, 0x11

    const/4 v0, 0x1

    const/4 v12, 0x2

    if-eq v1, v0, :cond_28

    if-ne v1, v12, :cond_69

    :cond_28
    if-ne v1, v12, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v12

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$14;

    invoke-direct {v0, v6, v7, v12}, Lorg/telegram/ui/ThemePreviewActivity$14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v24

    if-eqz v24, :cond_29

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_1b

    :cond_29
    const/16 v24, 0x0

    :goto_1b
    add-int v11, v23, v24

    invoke-virtual {v0, v12, v1, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v5, 0x51

    const/4 v11, -0x1

    invoke-static {v11, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const v1, 0x3d072b02    # 0.033f

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->updateApplyButton1(Z)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v5, v0, v21

    if-lez v5, :cond_2b

    iget-boolean v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    if-nez v0, :cond_2b

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->serverWallpaper:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_2b

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const v1, 0x3d072b02    # 0.033f

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "l "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v1, v5, v8, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1c

    :cond_2a
    const/4 v12, 0x1

    :goto_1c
    sget v5, Lorg/telegram/messenger/R$string;->ApplyWallpaperForMeAndPeer:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v0, v11, v8

    invoke-static {v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    invoke-static {v5}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->access$6400(Lorg/telegram/ui/ThemePreviewActivity$BlurButton;)Lorg/telegram/ui/Components/Text;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ThemePreviewActivity$BlurButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v35, 0x0

    const/high16 v36, 0x42680000    # 58.0f

    const/16 v30, -0x1

    const/high16 v31, 0x42400000    # 48.0f

    const/16 v32, 0x51

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton2:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v36, 0x0

    :goto_1d
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    :cond_2b
    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyButton1:Lorg/telegram/ui/ThemePreviewActivity$BlurButton;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v30, -0x1

    const/high16 v31, 0x42400000    # 48.0f

    const/16 v32, 0x51

    const/16 v33, 0x0

    const/16 v34, 0x0

    goto :goto_1d

    :goto_1e
    iget-boolean v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowBrightnessControll:Z

    if-eqz v0, :cond_2f

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$15;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/ThemePreviewActivity$15;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v5, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x4c

    const/16 v5, 0x31

    const/16 v11, 0xde

    invoke-static {v11, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$16;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v6, v1, v3}, Lorg/telegram/ui/ThemePreviewActivity$16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;I)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSliderContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-eqz v0, :cond_2f

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-interface {v0}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_1f

    :cond_2c
    const/16 v0, 0x8

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_2d
    const/4 v3, 0x0

    :goto_20
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimmingSlider:Lorg/telegram/ui/Stories/recorder/SliderView;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;->isDark()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    goto :goto_21

    :cond_2e
    const/4 v3, 0x0

    :goto_21
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    :cond_2f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    iget v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v11, v3, :cond_32

    instance-of v11, v5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_30

    goto :goto_22

    :cond_30
    instance-of v11, v5, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v11, :cond_31

    check-cast v5, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object v5, v5, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    const-string v11, "t"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_23

    :cond_31
    const/4 v5, 0x2

    goto :goto_24

    :cond_32
    :goto_22
    instance-of v11, v5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v11, :cond_33

    check-cast v5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-object v5, v5, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    :goto_23
    const/4 v5, 0x0

    goto :goto_24

    :cond_33
    const/4 v5, 0x3

    :goto_24
    new-array v11, v5, [Ljava/lang/String;

    new-array v12, v5, [I

    new-array v13, v5, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iput-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-eqz v5, :cond_3c

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x1

    if-eq v13, v3, :cond_35

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v13, v13, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v13, :cond_34

    goto :goto_25

    :cond_34
    sget v13, Lorg/telegram/messenger/R$string;->BackgroundBlurred:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    sget v13, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v3

    goto :goto_26

    :cond_35
    :goto_25
    sget v13, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    sget v13, Lorg/telegram/messenger/R$string;->BackgroundPattern:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v3

    sget v13, Lorg/telegram/messenger/R$string;->BackgroundMotion:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v11, v15

    :goto_26
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_27
    if-ge v15, v5, :cond_36

    aget-object v13, v11, v15

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    move/from16 v20, v5

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    aput v4, v12, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v15, v4

    move/from16 v5, v20

    goto :goto_27

    :cond_36
    move/from16 v20, v5

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$17;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_37

    const/4 v13, 0x0

    goto :goto_28

    :cond_37
    const/4 v13, 0x4

    :goto_28
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_38

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_29

    :cond_38
    const v13, 0x3dcccccd    # 0.1f

    :goto_29
    invoke-virtual {v5, v13}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_39

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_2a

    :cond_39
    const v13, 0x3dcccccd    # 0.1f

    :goto_2a
    invoke-virtual {v5, v13}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_3a

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_2b

    :cond_3a
    const/4 v13, 0x0

    :goto_2b
    invoke-virtual {v5, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundGradientColor1:I

    if-eqz v13, :cond_3b

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2c

    :cond_3b
    const/4 v13, 0x0

    :goto_2c
    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-static {v2, v2, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v13, Lorg/telegram/ui/ThemePreviewActivity$18;

    invoke-direct {v13, v6}, Lorg/telegram/ui/ThemePreviewActivity$18;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundPlayAnimationImageView:Landroid/widget/ImageView;

    const/4 v15, -0x2

    invoke-static {v15, v15, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2d

    :cond_3c
    move/from16 v20, v5

    const/4 v3, 0x0

    :goto_2d
    move/from16 v5, v20

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v5, :cond_4b

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v15, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x1

    if-eq v9, v2, :cond_3d

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v9, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v9, :cond_3e

    :cond_3d
    if-eqz v4, :cond_3f

    :cond_3e
    const/4 v9, 0x1

    goto :goto_2f

    :cond_3f
    const/4 v9, 0x0

    :goto_2f
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-direct {v15, v7, v9, v2, v14}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v15, v13, v4

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v4

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundColor:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v4

    aget-object v9, v11, v4

    aget v13, v12, v4

    invoke-virtual {v2, v9, v13, v3}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    iget v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v9, 0x1

    if-eq v2, v9, :cond_40

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v9, v9, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v9, :cond_41

    :cond_40
    const/4 v2, 0x1

    goto :goto_30

    :cond_41
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v4

    if-nez v4, :cond_42

    iget-boolean v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    goto :goto_32

    :cond_42
    iget-boolean v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    goto :goto_32

    :goto_30
    if-ne v4, v2, :cond_45

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v4

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v13, :cond_44

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v13, :cond_43

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_43

    goto :goto_31

    :cond_43
    const/4 v13, 0x0

    goto :goto_32

    :cond_44
    :goto_31
    const/4 v13, 0x1

    :goto_32
    invoke-virtual {v9, v13, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    goto :goto_33

    :cond_45
    const/4 v9, 0x2

    if-ne v4, v9, :cond_46

    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v13, v13, v4

    iget-boolean v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    invoke-virtual {v13, v14, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    :cond_46
    :goto_33
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v3

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v14, v13, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v10, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v15, 0x3

    if-ne v5, v15, :cond_48

    const/4 v9, 0x2

    if-eqz v4, :cond_49

    if-ne v4, v9, :cond_47

    goto :goto_34

    :cond_47
    const/high16 v24, 0x41200000    # 10.0f

    goto :goto_35

    :cond_48
    const/4 v2, 0x1

    const/4 v9, 0x2

    if-ne v4, v2, :cond_47

    :cond_49
    :goto_34
    div-int/2addr v13, v9

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    add-int v13, v13, v25

    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_36

    :goto_35
    div-int/2addr v13, v9

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    add-int v13, v13, v25

    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_36
    iget-object v13, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v4

    invoke-virtual {v13, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v4

    new-instance v13, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;

    invoke-direct {v13, v6, v4, v2}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    if-ne v4, v2, :cond_4a

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v4

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v9, v9, v4

    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_37
    const/4 v9, 0x1

    goto :goto_38

    :cond_4a
    const/4 v13, 0x0

    goto :goto_37

    :goto_38
    add-int/2addr v4, v9

    const/16 v2, 0x30

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v14, 0x0

    goto/16 :goto_2e

    :cond_4b
    const/4 v9, 0x1

    const/4 v13, 0x0

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v3, v9, :cond_54

    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v5, v3, [Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/R$string;->BackgroundAnimate:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v9, Lorg/telegram/messenger/R$string;->BackgroundColors:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_39
    if-ge v9, v3, :cond_4c

    aget-object v12, v5, v9

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    aput v12, v4, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x1

    add-int/2addr v9, v2

    const/4 v3, 0x2

    goto :goto_39

    :cond_4c
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v1, :cond_54

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$19;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$19;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v9, :cond_4d

    const/4 v9, 0x0

    goto :goto_3a

    :cond_4d
    const/4 v9, 0x4

    :goto_3a
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v9, :cond_4e

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3b

    :cond_4e
    const v9, 0x3dcccccd    # 0.1f

    :goto_3b
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v9, :cond_4f

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3c

    :cond_4f
    const v9, 0x3dcccccd    # 0.1f

    :goto_3c
    invoke-virtual {v1, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v9, :cond_50

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_50
    const/4 v9, 0x0

    :goto_3d
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    const/16 v12, 0x30

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$20;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ThemePreviewActivity$20;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->bg_rotate_large:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationView:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesPlayAnimationImageView:Landroid/widget/ImageView;

    const/4 v12, -0x2

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_3e
    const/4 v3, 0x2

    if-ge v1, v3, :cond_54

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    new-instance v12, Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    if-nez v1, :cond_51

    const/4 v14, 0x1

    goto :goto_3f

    :cond_51
    const/4 v14, 0x0

    :goto_3f
    iget-object v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-direct {v12, v7, v14, v15, v2}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;-><init>(Landroid/content/Context;ZLandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v12, v9, v1

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    aget-object v9, v5, v1

    aget v12, v4, v1

    invoke-virtual {v2, v9, v12, v11}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setText(Ljava/lang/String;II)V

    if-nez v1, :cond_52

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-boolean v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-virtual {v2, v9, v8}, Lorg/telegram/ui/Components/WallpaperCheckBoxView;->setChecked(ZZ)V

    :cond_52
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v9, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, 0x1

    if-ne v1, v12, :cond_53

    const/4 v12, 0x2

    div-int/2addr v2, v12

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v2, v15

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_40

    :cond_53
    const/4 v12, 0x2

    const/high16 v14, 0x41200000    # 10.0f

    div-int/2addr v2, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v2, v15

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_40
    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v15, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v15, v15, v1

    invoke-virtual {v2, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesCheckBoxView:[Lorg/telegram/ui/Components/WallpaperCheckBoxView;

    aget-object v2, v2, v1

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;

    invoke-direct {v9, v6, v1, v2}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemePreviewActivity;ILorg/telegram/ui/Components/WallpaperCheckBoxView;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_3e

    :cond_54
    const/4 v2, 0x1

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-eq v1, v2, :cond_55

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v2, v2, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v2, :cond_67

    :cond_55
    iput-boolean v8, v6, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_41
    if-ge v2, v3, :cond_67

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/ThemePreviewActivity$21;

    invoke-direct {v5, v6, v7, v2, v0}, Lorg/telegram/ui/ThemePreviewActivity$21;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;ILandroid/graphics/Rect;)V

    aput-object v5, v4, v2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_57

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-ne v4, v3, :cond_56

    goto :goto_42

    :cond_56
    const/4 v5, 0x4

    goto :goto_43

    :cond_57
    :goto_42
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_43
    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v2

    invoke-virtual {v4, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x2

    if-ne v4, v3, :cond_58

    if-nez v2, :cond_59

    const/16 v4, 0x141

    :goto_44
    const/4 v9, -0x1

    const/16 v11, 0x53

    goto :goto_45

    :cond_58
    if-nez v2, :cond_59

    const/16 v4, 0x111

    goto :goto_44

    :cond_59
    const/16 v4, 0x13c

    goto :goto_44

    :goto_45
    invoke-static {v9, v4, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    if-nez v2, :cond_5b

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x2

    if-ne v9, v3, :cond_5a

    const/16 v9, 0x141

    goto :goto_46

    :cond_5a
    const/16 v9, 0x111

    :goto_46
    int-to-float v9, v9

    goto :goto_47

    :cond_5b
    const/high16 v9, 0x439e0000    # 316.0f

    :goto_47
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v9

    if-eqz v9, :cond_5c

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v9, v11

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_5c
    if-nez v2, :cond_5d

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->sheetDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    add-int/2addr v9, v12

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_5d
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    if-nez v2, :cond_5e

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    goto :goto_48

    :cond_5e
    const/4 v11, 0x0

    :goto_48
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v12

    if-eqz v12, :cond_5f

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_49

    :cond_5f
    const/4 v12, 0x0

    :goto_49
    invoke-virtual {v9, v8, v11, v8, v12}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v11, v11, v2

    invoke-virtual {v9, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41a80000    # 21.0f

    const/4 v1, 0x1

    if-eq v2, v1, :cond_61

    iget v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x2

    if-ne v9, v3, :cond_60

    goto :goto_4a

    :cond_60
    const/4 v1, 0x1

    const/high16 v5, 0x41700000    # 15.0f

    const/16 v15, 0x50

    goto/16 :goto_4b

    :cond_61
    :goto_4a
    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    new-instance v11, Lorg/telegram/ui/ThemePreviewActivity$22;

    invoke-direct {v11, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$22;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    aput-object v11, v9, v2

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    invoke-virtual {v9, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v8, v11, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    iget-object v11, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v11, v11, v2

    const/4 v12, -0x1

    const/16 v14, 0x33

    const/16 v15, 0x50

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v1, v2

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v9, 0x1

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    sget v12, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v9, v12, v8, v14, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v6, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v14

    invoke-static {v14, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    iget-object v14, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v14, v14, v2

    const/4 v1, -0x1

    const/16 v3, 0x33

    const/4 v5, -0x2

    invoke-static {v5, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v3, 0x1

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    sget v9, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v3, v9, v8, v11, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v6, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v9, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/16 v13, 0x35

    invoke-static {v12, v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;

    invoke-direct {v9, v6, v2}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemePreviewActivity;I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    :goto_4b
    if-ne v2, v1, :cond_63

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->BackgroundChoosePattern:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v3, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v3, v9, v11, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternTitleView:Landroid/widget/TextView;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v30, -0x1

    const/high16 v31, 0x42400000    # 48.0f

    const/16 v32, 0x33

    const/16 v33, 0x0

    const/high16 v34, 0x41a80000    # 21.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$23;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$23;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v7, v8, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-direct {v4, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$24;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ThemePreviewActivity$24;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v31, 0x42c80000    # 100.0f

    const/high16 v34, 0x42980000    # 76.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternsListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->BackgroundIntensity:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 v31, -0x40000000    # -2.0f

    const/high16 v34, 0x432f0000    # 175.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity$25;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v3, v6, v7, v4}, Lorg/telegram/ui/ThemePreviewActivity$25;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    iget v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v4, Lorg/telegram/ui/ThemePreviewActivity$26;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ThemePreviewActivity$26;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 v35, 0x40a00000    # 5.0f

    const/high16 v31, 0x42180000    # 38.0f

    const/high16 v33, 0x40a00000    # 5.0f

    const/high16 v34, 0x43530000    # 211.0f

    :goto_4c
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_62
    :goto_4d
    const/4 v1, 0x1

    goto/16 :goto_50

    :cond_63
    new-instance v3, Lorg/telegram/ui/Components/ColorPicker;

    iget-boolean v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->editingTheme:Z

    new-instance v9, Lorg/telegram/ui/ThemePreviewActivity$27;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ThemePreviewActivity$27;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-direct {v3, v7, v4, v9}, Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    iput-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ColorPicker;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-ne v3, v1, :cond_66

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v9, -0x1

    invoke-static {v9, v9, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->applyingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    goto :goto_4e

    :cond_64
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ColorPicker;->setMinBrightness(F)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ColorPicker;->setMaxBrightness(F)V

    :goto_4e
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v3, :cond_62

    iget v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v3, :cond_65

    const/16 v34, 0x2

    goto :goto_4f

    :cond_65
    const/16 v34, 0x1

    :goto_4f
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->hasChanges(I)Z

    move-result v32

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v31, 0x1

    const/16 v33, 0x2

    const/16 v35, 0x0

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v37}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v3, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v3, :cond_62

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/4 v1, 0x1

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    goto/16 :goto_4d

    :cond_66
    iget-object v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    iget-object v4, v6, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    const/16 v35, 0x0

    const/high16 v36, 0x42400000    # 48.0f

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    goto/16 :goto_4c

    :goto_50
    add-int/2addr v2, v1

    const/4 v3, 0x2

    const/4 v13, 0x0

    goto/16 :goto_41

    :cond_67
    invoke-direct {v6, v8, v8}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_68
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_69

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-nez v0, :cond_69

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->backgroundImage:Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    :cond_69
    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$28;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$28;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iput-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    iput-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v7}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$29;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$29;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$30;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$30;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v3, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v3, :cond_6a

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v17, 0x42400000    # 48.0f

    goto :goto_51

    :cond_6a
    const/16 v17, 0x0

    :goto_51
    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v1, v7, v6}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x53

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v1, :cond_6b

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/16 v4, 0x53

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$31;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ThemePreviewActivity$31;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x16

    const/16 v3, 0x8

    invoke-static {v2, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/high16 v2, 0xf000000

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/16 v4, 0x33

    const/4 v5, -0x2

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->getButtonsColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/high16 v1, 0xf000000

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x35

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    iget v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6c

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasCustomWallpaper()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_6c

    iget-wide v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    const-wide v2, 0x100000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6c

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Lorg/telegram/ui/ThemePreviewActivity;->selectColorType(I)V

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->themeDescriptions:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    invoke-direct {v6, v8}, Lorg/telegram/ui/ThemePreviewActivity;->updatePlayAnimationView(Z)V

    iget-boolean v2, v6, Lorg/telegram/ui/ThemePreviewActivity;->showColor:Z

    if-eqz v2, :cond_6d

    invoke-direct {v6, v8, v1, v8}, Lorg/telegram/ui/ThemePreviewActivity;->showPatternsView(IZZ)V

    :cond_6d
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->scroller:Landroid/widget/Scroller;

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_6e

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget v1, v6, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6e

    iget-wide v0, v6, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long v2, v0, v21

    if-eqz v2, :cond_6e

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    :cond_6e
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 10

    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    iget-wide p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_10

    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateApplyButton1(Z)V

    goto/16 :goto_5

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_10

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v0, p3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_2

    check-cast p3, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto/16 :goto_5

    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->page2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    goto/16 :goto_5

    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz p2, :cond_10

    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    iget-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    if-nez p2, :cond_10

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    const-wide/16 v2, 0x0

    if-ne p1, p2, :cond_f

    aget-object p1, p3, v1

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge p3, p2, :cond_a

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$WallPaper;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_9

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v6, :cond_9

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsDict:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v6, :cond_8

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iput-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setCurrentImage(Z)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v6, :cond_9

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_a
    if-nez v4, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p2, :cond_b

    iget-object p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patternsAdapter:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$WallPaper;

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_d

    iget-wide v4, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getWallPapers;-><init>()V

    iput-wide v2, p1, Lorg/telegram/tgnet/tl/TL_account$getWallPapers;->hash:J

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_5

    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    if-ne p1, p2, :cond_10

    iget-wide p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_10
    :goto_5
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->shouldShowDayNightIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptionsInternal()Ljava/util/ArrayList;
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v13, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->page1:Landroid/widget/FrameLayout;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v12

    move-object v10, v13

    move/from16 v11, v22

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v30, v12

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v33, v12

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v40, v6

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v30, v7

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    const/16 v35, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v33, v12

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v33, v7

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    const/16 v37, 0x0

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v30, v6

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    const/4 v7, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->actionBar2:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v4, v15

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v30, 0x0

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v33, v12

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->floatingButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v33, v6, v7

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->useDefaultThemeForButtons:Z

    if-nez v4, :cond_0

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->saveButtonsContainer:Landroid/widget/FrameLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->cancelButton:Landroid/widget/TextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v30, v22

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->doneButton:Landroid/widget/TextView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->colorPicker:Lorg/telegram/ui/Components/ColorPicker;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/ColorPicker;->provideThemeDescriptions(Ljava/util/List;)V

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v16, v6, v4

    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternLayout:[Landroid/widget/FrameLayout;

    aget-object v24, v6, v4

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v16, v6, v4

    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v5

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsButtonsContainer:[Landroid/widget/FrameLayout;

    aget-object v24, v6, v4

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v3

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-array v10, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v10, v2

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsSaveButton:[Landroid/widget/TextView;

    aget-object v16, v6, v4

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v3

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ThemePreviewActivity;->patternsCancelButton:[Landroid/widget/TextView;

    aget-object v16, v6, v4

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v3

    goto :goto_3

    :cond_5
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    const-class v6, Lorg/telegram/ui/Components/SeekBarView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    const-string v8, "innerPaint1"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensitySeekBar:Lorg/telegram/ui/Components/SeekBarView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    const-string v6, "outerPaint1"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->intensityCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v6, v2

    const-string v7, "textView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v3

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const/16 v28, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v3

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    const/16 v19, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v28

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move/from16 v30, v22

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v10, v2

    aput-object v9, v10, v3

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v10

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v10, v2

    aput-object v9, v10, v3

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v10, v2

    aput-object v9, v10, v3

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v10

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    iget-object v8, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v9, v0, Lorg/telegram/ui/ThemePreviewActivity;->msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v10, v2

    aput-object v9, v10, v3

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v9, v8, v3

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v20

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move/from16 v22, v28

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v26

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    const/16 v28, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v3

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v3

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v1, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v1, v3

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const/16 v28, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const/16 v20, 0x0

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ThemePreviewActivity;->listView2:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    move-object v11, v13

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    add-int/2addr v2, v3

    goto :goto_4

    :cond_7
    return-object v14
.end method

.method public insideBottomSheet()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->hasScrollingBackground:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ThemePreviewActivity;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemePreviewActivity;->cancelThemeApply(Z)V

    return v0
.end method

.method public onBottomSheetCreated()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBottomSheetCreated()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    :cond_0
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->setChangingWallpaper(Z)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->imageFilter:Ljava/lang/String;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->maxWallpaperSize:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->TAG:I

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getWallpapers()V

    :cond_6
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity;->blurredBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->accent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_8
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-direct {p0, v3}, Lorg/telegram/ui/ThemePreviewActivity;->checkBlur(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_0
    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->disallowChangeServiceMessageColor:Z

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogsAdapter:Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->messagesAdapter:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->parallaxEffect:Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->setEnabled(Z)V

    :cond_2
    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->disallowChangeServiceMessageColor:Z

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemePreviewActivity;->updateButtonState(ZZ)V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->applyChatServiceMessageColor()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->delegate:Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 3

    iput-wide p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->self:Z

    return-void
.end method

.method public setForceDark(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialModes(ZZF)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->isBlurred:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ThemePreviewActivity;->isMotion:Z

    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity;->dimAmount:F

    return-void
.end method

.method public setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->onSwitchDayNightDelegate:Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;

    return-void
.end method

.method public setPatterns(Ljava/util/ArrayList;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->screenType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentWallpaper:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    iget-wide v1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v5, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->patternId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity;->selectedPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, v0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    iput p1, p0, Lorg/telegram/ui/ThemePreviewActivity;->currentIntensity:F

    :cond_3
    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity;->themeDelegate:Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;

    iput-object p1, v0, Lorg/telegram/ui/ThemePreviewActivity$ThemeDelegate;->parentProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public toggleTheme()V
    .locals 17

    move-object/from16 v12, p0

    const/4 v13, 0x2

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ThemePreviewActivity;->insideBottomSheet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getBottomSheet()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v14, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-array v1, v13, [I

    iget-object v2, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v10, v2

    aget v0, v1, v0

    int-to-float v11, v0

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v10, v0

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->dayNightItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v5, v11, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$41;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ThemePreviewActivity$41;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v13, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput v15, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$42;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ThemePreviewActivity$42;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity$43;

    invoke-direct {v1, v12}, Lorg/telegram/ui/ThemePreviewActivity$43;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v12, Lorg/telegram/ui/ThemePreviewActivity;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, v12}, Lorg/telegram/ui/ThemePreviewActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

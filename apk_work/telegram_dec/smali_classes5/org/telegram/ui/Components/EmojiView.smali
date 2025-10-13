.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$SearchField;,
        Lorg/telegram/ui/Components/EmojiView$DragListener;,
        Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;,
        Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;,
        Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;,
        Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;,
        Lorg/telegram/ui/Components/EmojiView$GifAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;,
        Lorg/telegram/ui/Components/EmojiView$Tab;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPack;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;,
        Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;,
        Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;,
        Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;,
        Lorg/telegram/ui/Components/EmojiView$CustomEmoji;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;,
        Lorg/telegram/ui/Components/EmojiView$TrendingListView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackButton;
    }
.end annotation


# instance fields
.field private allTabs:Ljava/util/ArrayList;

.field private allowAnimatedEmoji:Z

.field private allowEmojisForNonPremium:Z

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animatedEmojiDrawables:Landroid/util/LongSparseArray;

.field private animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceButtonAnimation:Landroid/animation/AnimatorSet;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private bottomTabAdditionalTranslation:F

.field private bottomTabContainer:Landroid/widget/FrameLayout;

.field private bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

.field private bottomTabContainerBackground:Landroid/view/View;

.field private bottomTabMainTranslation:F

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

.field private chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

.field private colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

.field private contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field public currentAccount:I

.field private currentBackgroundType:I

.field private currentChatId:J

.field private currentPage:I

.field private currentTabs:Ljava/util/ArrayList;

.field private delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

.field private dotPaint:Landroid/graphics/Paint;

.field private dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

.field private emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

.field emojiBanned:Z

.field public emojiCacheType:I

.field private emojiContainer:Landroid/widget/FrameLayout;

.field private emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

.field private emojiLastX:F

.field private emojiLastY:F

.field private emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private emojiLockDrawable:Landroid/graphics/drawable/Drawable;

.field private emojiLockPaint:Landroid/graphics/Paint;

.field private emojiPackAlertOpened:Z

.field emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

.field private emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

.field private emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private emojiSize:I

.field private emojiSmoothScrolling:Z

.field private emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field private emojiTabsShadow:Landroid/view/View;

.field private emojiTitles:[Ljava/lang/String;

.field private emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field private emojiTouchedX:F

.field private emojiTouchedY:F

.field private emojipacksProcessed:Ljava/util/ArrayList;

.field private expandStickersByDragg:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;

.field private favTabNum:I

.field private favouriteStickers:Ljava/util/ArrayList;

.field private featuredEmojiSets:Ljava/util/ArrayList;

.field private featuredStickerSets:Ljava/util/ArrayList;

.field private firstEmojiAttach:Z

.field private firstGifAttach:Z

.field private firstStickersAttach:Z

.field private firstTabUpdate:Z

.field public fixBottomTabContainerTranslation:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private forseMultiwindowLayout:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frozen:Z

.field frozenStickerSets:Ljava/util/ArrayList;

.field private gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private final gifCache:Ljava/util/Map;

.field private gifContainer:Landroid/widget/FrameLayout;

.field private gifFirstEmojiTabNum:I

.field private gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private gifIcons:[Landroid/graphics/drawable/Drawable;

.field private gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field private gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private gifRecentTabNum:I

.field private gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

.field private gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private gifTrendingTabNum:I

.field private groupStickerPackNum:I

.field private groupStickerPackPosition:I

.field private groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private groupStickersHidden:Z

.field private hasChatStickers:Z

.field private hasRecentEmoji:I

.field private hideStickersBan:Ljava/lang/Runnable;

.field private ignorePagerScroll:Z

.field private ignoreStickersScroll:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public installedEmojiSets:Ljava/util/ArrayList;

.field private installingStickerSets:Landroid/util/LongSparseArray;

.field private isLayout:Z

.field private keepFeaturedDuplicate:Ljava/util/ArrayList;

.field private lastBottomScrollDy:F

.field private lastNotifyWidth:I

.field private lastRecentArray:Ljava/util/ArrayList;

.field private lastRecentCount:I

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private lastStickersX:F

.field private location:[I

.field private mediaBanTooltip:Landroid/widget/TextView;

.field private needEmojiSearch:Z

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private premiumBulletin:Z

.field private premiumStickers:Ljava/util/ArrayList;

.field private premiumTabNum:I

.field private primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private recentGifs:Ljava/util/ArrayList;

.field private recentStickers:Ljava/util/ArrayList;

.field private recentTabNum:I

.field rect:Landroid/graphics/Rect;

.field private removingStickerSets:Landroid/util/LongSparseArray;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAnimation:Landroid/animation/AnimatorSet;

.field private searchButton:Landroid/widget/ImageView;

.field private searchFieldHeight:I

.field private searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

.field private searchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private shadowLine:Landroid/view/View;

.field private shouldDrawBackground:Z

.field public shouldLightenBackground:Z

.field private showGifs:Z

.field private showStickersBanAnimator:Landroid/animation/AnimatorSet;

.field private showing:Z

.field private shownBottomTabAfterClick:J

.field private stickerIcons:[Landroid/graphics/drawable/Drawable;

.field private stickerSets:Ljava/util/ArrayList;

.field private stickerSettingsButton:Landroid/widget/ImageView;

.field stickersBanned:Z

.field private stickersButtonAnimation:Landroid/animation/AnimatorSet;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersContainerAttached:Z

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabContainer:Landroid/widget/FrameLayout;

.field private stickersTabOffset:I

.field private tabIcons:[Landroid/graphics/drawable/Drawable;

.field private final tabsMinusDy:[I

.field private tabsYAnimators:[Landroid/animation/ObjectAnimator;

.field private toInstall:Ljava/util/HashMap;

.field private trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingTabNum:I

.field private typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private updateStickersLoadedDelayed:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0U-9cgWMkN1Zac8bxCxylIvKgMg(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$postBackspaceRunnable$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$124YBoXjxgeQ7vzaf5DA3teIzTU(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$onAttachedToWindow$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$1EGEs3ziUTsbHCywQdy717gyjB4(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$8(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1U4mpY-GCXooozIxksSQoQSpLNI(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$7wgGkYe2fMZiWGlSxvYLVgYv5WY(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$showBottomTab$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9TQw5sKMrq6Cypc20eHoJ6UffbI(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$ApfrznsHKevM1vgAhKp3rxGrRxM(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FSbnFG106IbdXpAvEjCJHWCUALI(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$showStickerBanHint$16(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-haY36Jin7IaBkHTtYm8-VVIx4(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OydL_669jjb6qqjsS0tph8qd-CM(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$sendEmoji$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4MZf4W9iplBBtg0rxNJeAH4dhw(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$10(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwAV4_HMjKPGnlwIHgJGKpFv7xY(Lorg/telegram/ui/Components/EmojiView;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$animateTabsY$12(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiQ3nQ6FQwT9iHwHeuauX8_6EYo(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$joOvBfbuyX4bgDYKaQIJhFBvfgA(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method public static synthetic $r8$lambda$nBGRMc4Ie8M7FM9ZGJWfp5LU1xQ(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$onOpen$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$qPP8Ve4KcGMzC-eLySwB4gO1C8k(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vGymGUYe9Eq2QIc7BA6hhS3P28M(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vQGOPgJXlUYuA9D-pfLZCqlFKoI(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcQoJlb71nT-jLpJhOe4qEerU1Y(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$2(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 43

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v7, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v9, p8

    move/from16 v8, p9

    move-object/from16 v6, p10

    const/high16 v16, 0x40e00000    # 7.0f

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x40a00000    # 5.0f

    invoke-direct {v10, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    iput v4, v10, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    const/4 v0, -0x1

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->hasRecentEmoji:I

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    const/4 v5, 0x0

    invoke-direct {v2, v10, v5}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    const/4 v2, -0x2

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    const/4 v5, 0x3

    new-array v3, v5, [I

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    new-array v3, v5, [Landroid/animation/ObjectAnimator;

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v10, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->keepFeaturedDuplicate:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    const/16 v3, 0xa

    new-array v3, v3, [Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    new-array v3, v4, [I

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->location:[I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    iput v2, v10, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$1;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/EmojiView$2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    const-wide/16 v2, -0x1

    iput-wide v2, v10, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    const/4 v3, 0x0

    iput-boolean v3, v10, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    iput-boolean v1, v10, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    iput-boolean v8, v10, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    iput-object v11, v10, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean v7, v10, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    iput-object v6, v10, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p11, :cond_0

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->freeze(Z)V

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v1, 0x1e

    invoke-static {v1, v0, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    iput-boolean v15, v10, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    sget v0, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v14, v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-static {v14, v1, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_stickers:I

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    move/from16 p11, v2

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v14, v3, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    new-array v5, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    iput-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v14, v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    move/from16 v30, v4

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-static {v14, v3, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new3:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v9

    invoke-static {v14, v4, v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    sget v9, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new1:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v12

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v15

    invoke-static {v14, v9, v12, v15}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v10, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    sget v12, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new2:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v11

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    invoke-static {v14, v12, v11, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v10, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x2

    new-array v12, v11, [Landroid/graphics/drawable/Drawable;

    const/16 v26, 0x0

    aput-object v9, v12, v26

    const/4 v9, 0x1

    aput-object v6, v12, v9

    invoke-direct {v5, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x4

    new-array v12, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v12, v26

    aput-object v3, v12, v9

    aput-object v4, v12, v11

    const/4 v9, 0x3

    aput-object v5, v12, v9

    iput-object v12, v10, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v14, v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->stickers_gifs_trending:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v14, v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-array v2, v11, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    sget v0, Lorg/telegram/messenger/R$string;->Emoji1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v31

    sget v0, Lorg/telegram/messenger/R$string;->Emoji2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v32

    sget v0, Lorg/telegram/messenger/R$string;->Emoji3:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v33

    sget v0, Lorg/telegram/messenger/R$string;->Emoji4:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v34

    sget v0, Lorg/telegram/messenger/R$string;->Emoji5:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v35

    sget v0, Lorg/telegram/messenger/R$string;->Emoji6:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v36

    sget v0, Lorg/telegram/messenger/R$string;->Emoji7:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v37

    sget v0, Lorg/telegram/messenger/R$string;->Emoji8:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v38

    filled-new-array/range {v31 .. v38}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    iput-boolean v13, v10, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    move-object/from16 v0, p7

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v12, v5, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$4;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$5;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    if-eqz v7, :cond_2

    iget v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;

    move-object/from16 v3, p10

    invoke-direct {v1, v10, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$6;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$7;

    const/16 v2, 0x8

    invoke-direct {v1, v10, v14, v2}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v19, 0x42300000    # 44.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {v10, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$8;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v2, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v6, v10, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$9;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$10;

    const/4 v6, 0x1

    invoke-direct {v1, v10, v6}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$11;

    if-eqz p1, :cond_3

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v25, v0

    goto :goto_0

    :cond_3
    const/16 v25, 0x0

    :goto_0
    const/16 v27, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, -0x1

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v1, p0

    move/from16 v39, p11

    const/16 v24, 0x0

    move-object/from16 v2, p5

    move-object/from16 v3, p10

    move/from16 v40, v30

    move/from16 v4, v27

    move/from16 v41, v5

    move-object/from16 v9, v24

    const/16 v20, 0x3

    move/from16 v5, v31

    move/from16 v6, v32

    move/from16 v7, p2

    move/from16 v42, v8

    move/from16 v8, v33

    move/from16 p7, v12

    move-object v12, v9

    move-object/from16 v9, v25

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;)V

    iput-object v11, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz p6, :cond_4

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$12;

    const/4 v6, 0x1

    invoke-direct {v0, v10, v14, v6}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v10, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v7, -0x1

    invoke-direct {v2, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$13;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_1
    move/from16 v8, v41

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    const/4 v7, -0x1

    goto :goto_1

    :goto_2
    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_5

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->processEmoji(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v7, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v11, 0x33

    invoke-direct {v0, v7, v1, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v5, p3

    if-eqz v5, :cond_9

    if-eqz v13, :cond_6

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$14;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-direct {v0, v10, v12}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput v6, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$15;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-direct {v1, v10, v14}, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$16;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v1, v10, v14, v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    invoke-direct {v1, v10, v3}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;

    move-object/from16 v2, p10

    invoke-direct {v1, v10, v2}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$17;

    invoke-direct {v0, v10, v14, v3}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v10, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v21

    add-int v6, v6, v21

    invoke-direct {v11, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;

    invoke-direct {v0, v10, v14, v2}, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    goto :goto_3

    :cond_6
    move-object/from16 v2, p10

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$18;

    move/from16 v6, p9

    invoke-direct {v0, v10, v14, v6}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$19;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$20;

    const/4 v11, 0x5

    invoke-direct {v1, v10, v14, v11}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$21;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v4, v11, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-direct {v0, v10, v12}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput v3, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {v1, v10, v14}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v10, v2}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v11, v10, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$22;

    invoke-direct {v0, v10, v14, v4}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v10, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v19

    add-int v3, v3, v19

    invoke-direct {v11, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Components/EmojiView$23;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v2, p5

    move-object v12, v3

    move-object/from16 v3, p10

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v11, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDragEnabled(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    move-object/from16 v0, p8

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$24;

    invoke-direct {v2, v10, v14}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v4, -0x1

    const/16 v5, 0x33

    const/16 v11, 0x24

    invoke-static {v4, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, -0x1

    const/16 v5, 0x33

    const/16 v11, 0x24

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v4, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    goto :goto_5

    :goto_6
    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    invoke-direct {v2, v10, v7}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_7

    :cond_9
    move/from16 v6, p9

    move-object v1, v12

    const/4 v7, 0x0

    move-object/from16 v12, p10

    :goto_7
    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$25;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-direct {v2, v10, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$26;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_tab_clear:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v2, v39

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$27;

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42200000    # 40.0f

    if-eqz p6, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v11

    int-to-float v11, v11

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v15

    add-float v34, v11, v5

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v28, -0x1

    const/high16 v29, 0x42c80000    # 100.0f

    const/16 v30, 0x57

    const/16 v31, 0x0

    :goto_8
    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_a
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v28, -0x1

    const/high16 v29, 0x42c80000    # 100.0f

    const/16 v30, 0x57

    const/16 v31, 0x0

    const/16 v32, 0x0

    goto :goto_8

    :goto_9
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$28;

    invoke-direct {v0, v10, v14}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v9, v10, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v15

    const/4 v7, -0x1

    invoke-direct {v11, v7, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    iget-object v9, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v5, 0x53

    invoke-direct {v11, v7, v15, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x28

    if-eqz p6, :cond_f

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v15

    add-int/2addr v11, v15

    invoke-direct {v8, v7, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v7, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v8, 0x2f

    const/16 v11, 0x55

    invoke-static {v8, v0, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41900000    # 18.0f

    move/from16 v7, p7

    const/16 v15, 0x15

    if-lt v7, v15, :cond_b

    iget-object v9, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move/from16 v8, v40

    const/4 v0, 0x1

    invoke-static {v8, v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    move/from16 v0, p3

    goto :goto_b

    :cond_b
    move/from16 v8, v40

    goto :goto_a

    :goto_b
    if-eqz v0, :cond_d

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v11

    invoke-direct {v9, v11, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    if-lt v7, v15, :cond_c

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v8, v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v9, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/16 v3, 0x2f

    const/16 v11, 0x28

    const/16 v15, 0x55

    invoke-static {v3, v11, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$29;

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/EmojiView$29;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    new-instance v3, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {v3, v14, v12}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move/from16 v9, v42

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v9

    const/16 v11, 0x14

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setTabPaddingLeftRight(I)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v5, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/16 v9, 0x51

    const/4 v11, -0x2

    const/16 v15, 0x28

    invoke-static {v11, v15, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$30;

    invoke-direct {v5, v10, v6}, Lorg/telegram/ui/Components/EmojiView$30;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->smiles_tab_search:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v5, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x15

    if-lt v7, v1, :cond_e

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v8, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v2, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v3, 0x53

    const/16 v4, 0x2f

    const/16 v11, 0x28

    invoke-static {v4, v11, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$31;

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/EmojiView$31;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x4

    goto/16 :goto_13

    :cond_f
    move/from16 v0, p3

    move/from16 v7, p7

    const/16 v5, 0x8

    const/16 v11, 0x28

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x15

    if-lt v7, v6, :cond_10

    const/16 v9, 0x28

    :goto_c
    const/16 v15, 0x10

    goto :goto_d

    :cond_10
    const/16 v9, 0x2c

    goto :goto_c

    :goto_d
    add-int/lit8 v28, v9, 0x10

    if-lt v7, v6, :cond_11

    const/16 v6, 0x28

    goto :goto_e

    :cond_11
    const/16 v6, 0x2c

    :goto_e
    add-int/2addr v6, v5

    int-to-float v6, v6

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_12

    goto :goto_f

    :cond_12
    const/16 v20, 0x5

    :goto_f
    or-int/lit8 v30, v20, 0x50

    const/high16 v33, 0x40000000    # 2.0f

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v29, v6

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    invoke-direct {v10, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v8

    invoke-static {v1, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v8, 0x15

    if-ge v7, v8, :cond_13

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x1000000

    invoke-direct {v9, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v8, v1, v4, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v1, v2

    goto :goto_10

    :cond_13
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    const v4, 0x10100a7

    filled-new-array {v4}, [I

    move-result-object v4

    iget-object v8, v10, Lorg/telegram/ui/Components/EmojiView;->floatingButton:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticApiModelOutline1;->m()Landroid/util/Property;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v5, 0x0

    aput v11, v6, v5

    const/4 v11, 0x1

    aput v15, v6, v11

    invoke-static {v8, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 p9, v1

    const-wide/16 v0, 0xc8

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    new-array v4, v5, [I

    iget-object v6, v10, Lorg/telegram/ui/Components/EmojiView;->floatingButton:Landroid/widget/ImageView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v11, v15

    const/4 v15, 0x2

    new-array v15, v15, [F

    aput v8, v15, v5

    const/4 v5, 0x1

    aput v11, v15, v5

    invoke-static {v6, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/ImageView;Landroid/animation/StateListAnimator;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$32;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$32;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/widget/ImageView;Landroid/view/ViewOutlineProvider;)V

    move-object/from16 v1, p9

    :goto_10
    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v2, 0x15

    const/4 v3, 0x4

    if-lt v7, v2, :cond_14

    const/16 v11, 0x28

    goto :goto_11

    :cond_14
    const/16 v11, 0x2c

    :goto_11
    add-int/lit8 v18, v11, -0x4

    if-lt v7, v2, :cond_15

    const/16 v2, 0x28

    goto :goto_12

    :cond_15
    const/16 v2, 0x2c

    :goto_12
    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v23, 0x41200000    # 10.0f

    const/16 v24, 0x0

    const/16 v20, 0x33

    const/high16 v21, 0x41200000    # 10.0f

    const/16 v22, 0x0

    move/from16 v19, v2

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_13
    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, -0x1

    const/16 v2, 0x33

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x42540000    # 53.0f

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x51

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v5, 0x42200000    # 40.0f

    goto :goto_14

    :cond_16
    const/high16 v5, 0x42000000    # 32.0f

    :goto_14
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    invoke-static {v14, v12}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->create(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->setOnSelectionUpdateListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    invoke-static {}, Lorg/telegram/messenger/Emoji;->loadRecentEmoji()V

    iget-object v0, v10, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    move/from16 v0, p3

    invoke-virtual {v10, v0, v13, v2}, Lorg/telegram/ui/Components/EmojiView;->setAllow(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->startStopVisibleGifs(Z)V

    return-void
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    return-object p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/EmojiView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkGridVisibility(IF)V

    return-void
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    return-void
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return p0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return p1
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/EmojiView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-wide v0
.end method

.method static synthetic access$12502(Lorg/telegram/ui/Components/EmojiView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-wide p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return p0
.end method

.method static synthetic access$12702(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return p1
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return p0
.end method

.method static synthetic access$12802(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method static synthetic access$13502(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    return p1
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    return-void
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$13702(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    return-void
.end method

.method static synthetic access$14002(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$14302(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$14402(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    return p1
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    return-object p0
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    return p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    return p0
.end method

.method static synthetic access$16500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    return p0
.end method

.method static synthetic access$16602(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p1
.end method

.method static synthetic access$16700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16900(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p0
.end method

.method static synthetic access$16902(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p1
.end method

.method static synthetic access$17000(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    return p0
.end method

.method static synthetic access$17100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static synthetic access$17200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$17300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$17400(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    return p0
.end method

.method static synthetic access$17500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    return p0
.end method

.method static synthetic access$17600(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method static synthetic access$17700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p0
.end method

.method static synthetic access$17702(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p1
.end method

.method static synthetic access$17800(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$17900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    return p0
.end method

.method static synthetic access$18500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    return p0
.end method

.method static synthetic access$18600(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    return p0
.end method

.method static synthetic access$18700(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->scrollGifsToTop()V

    return-void
.end method

.method static synthetic access$18800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    return p0
.end method

.method static synthetic access$20000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$20100(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateTabsY(I)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->stopAnimatingTabsY(I)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->createStickersChooseActionTracker()V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkTabsY(II)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkBottomTabScroll(F)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkStickersSearchFieldScroll(Z)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiSearchFieldScroll(Z)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkGifSearchFieldScroll(Z)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    return p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    return p0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition()V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    return-void
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return p0
.end method

.method static synthetic access$8802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return p0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return p0
.end method

.method static synthetic access$9502(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return p1
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->isHandshake(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/telegram/messenger/CompoundEmoji;->applyColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->endsWithRightArrow(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x200d

    if-le v3, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u200d\u27a1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method private animateSearchField(I)V
    .locals 5

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 v2, 0x42180000    # 38.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42400000    # 48.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v4, v4, p1

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v4}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_3
    return-void
.end method

.method private animateSearchField(IZI)V
    .locals 2

    .line 0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$43;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lorg/telegram/ui/Components/EmojiView$43;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private animateTabsY(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    const/high16 v3, 0x42100000    # 36.0f

    goto :goto_0

    :cond_3
    const/high16 v3, 0x42400000    # 48.0f

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v4, v4, p1

    int-to-float v4, v4

    neg-float v5, v3

    div-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-lez v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v7, v4, v6

    if-lez v7, :cond_5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    neg-double v7, v7

    double-to-int v3, v7

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    invoke-direct {p0, p1, v1, v3}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_6
    if-ne p1, v2, :cond_7

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v6, v4, p1

    if-nez v6, :cond_8

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v7

    int-to-float v3, v3

    new-array v0, v0, [F

    aput v7, v0, v1

    aput v3, v0, v2

    invoke-static {v5, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v4

    int-to-float v3, v3

    new-array v0, v0, [F

    aput v4, v0, v1

    aput v3, v0, v2

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(I)V

    return-void
.end method

.method private checkBottomTabScroll(F)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x42180000    # 38.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x42400000    # 48.0f

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    int-to-float v1, p1

    const/4 v2, 0x1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    goto :goto_2

    :cond_2
    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    :cond_6
    :goto_2
    return-void
.end method

.method private checkDocuments(Z)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    goto/16 :goto_7

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(IZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-ne v7, v8, :cond_2

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/2addr v1, v3

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_7
    add-int/2addr v1, v3

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_a

    :cond_9
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    :goto_7
    return-void
.end method

.method private checkEmojiSearchFieldScroll(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v4, p1, 0x1

    invoke-static {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_1
    xor-int/2addr p1, v2

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private checkEmojiShadow(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void
.end method

.method private checkEmojiTabY(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aput v0, p2, v1

    int-to-float p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    if-lez p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-lt p1, v2, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, p1, v1

    sub-int/2addr v2, p2

    aput v2, p1, v1

    if-lez v2, :cond_5

    aput v0, p1, v1

    goto :goto_2

    :cond_5
    const/high16 p1, 0x42d80000    # 108.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    if-ge v2, p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    aput p1, p2, v1

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private checkGifSearchFieldScroll(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$14600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$14700(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$1500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$14800(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$14900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v5

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$14900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v6

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    xor-int/2addr p1, v1

    invoke-static {v3, v2, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    xor-int/2addr p1, v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private checkGridVisibility(IF)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float v3, p2, v0

    if-nez v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float v3, p2, v0

    if-nez v3, :cond_4

    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    cmpl-float p2, p2, v0

    if-nez p2, :cond_5

    const/16 v1, 0x8

    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private checkPanels()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_3
    return-void
.end method

.method private checkScroll(I)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne p1, v1, :cond_8

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result p1

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    if-ltz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v1

    if-lt p1, v1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_8
    :goto_2
    return-void
.end method

.method private checkStickersSearchFieldScroll(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v2, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr p1, v2

    invoke-static {v3, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method private checkTabsY(II)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-lt v2, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, v0, p1

    sub-int/2addr v2, p2

    aput v2, v0, p1

    if-lez v2, :cond_5

    aput v1, v0, p1

    goto :goto_0

    :cond_5
    const/high16 p2, 0x43900000    # 288.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    aput p2, v0, p1

    :cond_6
    :goto_0
    if-nez p1, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private createStickersChooseActionTracker()V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$33;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getThreadId()I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiView$33;-><init>(Lorg/telegram/ui/Components/EmojiView;IJJ)V

    iput-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    return-void
.end method

.method private getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method private getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1
.end method

.method private getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1
.end method

.method private getTabsForType(I)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$animateTabsY$12(ILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    aput p2, v0, p1

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v4, 0x0

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$10(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;->update(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object p1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    if-ltz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u200d"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveEmojiColors()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$20500(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSettingsClick(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v3, 0x0

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$5(Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$9000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne v0, v1, :cond_5

    if-gez p2, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$19000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v5, "gif"

    :goto_0
    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZI)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$19000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$19000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    :cond_4
    if-ltz p2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$20400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne v0, v1, :cond_7

    if-ltz p2, :cond_7

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$1500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$20400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZI)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    nop

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v1, p1, v1

    if-lez v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v1, p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$8(Landroid/view/View;I)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$19800(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$20300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    return-void

    :cond_0
    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-nez p2, :cond_2

    return-void

    :cond_2
    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    return-void

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disable()V

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSendAnimationData()Lorg/telegram/messenger/MessageObject$SendAnimationData;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZI)V

    return-void
.end method

.method private synthetic lambda$new$9(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->isCategorySelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "recent"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "fav"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "premium"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-lez v0, :cond_7

    move v1, v0

    goto :goto_2

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_b

    goto :goto_3

    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_c

    goto :goto_3

    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$15()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method private synthetic lambda$onOpen$14()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$8000(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    const/high16 v4, -0x3ef00000    # -9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$postBackspaceRunnable$13(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    add-int/lit8 p1, p1, -0x64

    const/16 v0, 0x32

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method private synthetic lambda$sendEmoji$0()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showBottomTab$11(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method private synthetic lambda$showStickerBanHint$16(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint(ZZZ)V

    return-void
.end method

.method private onPageScrolled(III)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    :goto_0
    return-void
.end method

.method private openPremiumAnimatedEmojiFeature()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onAnimatedEmojiUnlockClick()V

    :cond_0
    return-void
.end method

.method private openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_d

    if-nez v4, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_1

    :cond_1
    if-ne v4, v3, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    :goto_1
    if-nez v5, :cond_3

    goto/16 :goto_7

    :cond_3
    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x0

    if-ne p1, v5, :cond_6

    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v11, :cond_6

    invoke-interface {v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/high16 v11, 0x42100000    # 36.0f

    if-eqz v7, :cond_4

    if-eq v4, v1, :cond_4

    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    new-array v13, v3, [F

    aput v9, v13, v2

    invoke-static {v7, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    new-array v11, v3, [F

    aput v9, v11, v2

    invoke-static {v6, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v3, [F

    aput v10, v11, v2

    invoke-static {v5, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v10, v0, [Landroid/animation/Animator;

    aput-object v7, v10, v2

    aput-object v9, v10, v3

    aput-object v5, v10, v1

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_4
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne v4, v1, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    :goto_2
    new-array v11, v3, [F

    aput v9, v11, v2

    invoke-static {v6, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v3, [F

    aput v10, v11, v2

    invoke-static {v5, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v9, v7, v2

    aput-object v5, v7, v3

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xdc

    invoke-virtual {v5, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$36;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/Components/EmojiView$36;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    :cond_6
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v7, :cond_7

    if-eq v4, v1, :cond_7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v5, :cond_8

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_4
    invoke-virtual {v6, v2, v5, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v6, v5, :cond_9

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v6, v7, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v5, :cond_a

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    goto :goto_4

    :cond_a
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v5, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13802(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_c
    invoke-virtual {v8, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_7
    add-int/2addr v4, v3

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method private openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 10

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$35;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$35;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    new-instance v9, Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V

    return-void
.end method

.method private postBackspaceRunnable(I)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    return-void
.end method

.method private resetTabsY(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    int-to-float p1, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private saveNewPage()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v0, v1, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "selected_page"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method private scrollEmojisToPosition(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$38;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$38;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_1
    return-void
.end method

.method private scrollGifsToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private scrollStickersToPosition(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method private sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5300(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5300(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->forGroup:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_4

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v8, v3

    if-nez v10, :cond_2

    iget-object p2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    :cond_5
    move-object v5, p2

    if-eqz v5, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    move-object v6, p2

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-nez p2, :cond_b

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isUserSelf()Z

    move-result p2

    if-nez p2, :cond_b

    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    if-nez p2, :cond_b

    if-nez v0, :cond_b

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    :goto_6
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p2, :cond_9

    goto :goto_8

    :cond_9
    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v0, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2, v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_7
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_9

    :cond_a
    :goto_8
    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->PremiumMore:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, v5, p2, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_7

    :goto_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    return-void

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animated_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5400(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    if-eqz p2, :cond_e

    move-object v0, p2

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez p2, :cond_10

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5400(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_f

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_11

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSelected(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_11

    invoke-static {p2}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_11
    :goto_c
    return-void
.end method

.method private showBackspaceButton(ZZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    new-array v7, v1, [F

    aput v6, v7, v0

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p1, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    new-array v8, v1, [F

    aput v7, v8, v0

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_8
    new-array v3, v1, [F

    aput v2, v3, v0

    invoke-static {v6, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v0

    aput-object v5, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$40;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$40;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_c
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private showBottomTab(ZZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x42340000    # 45.0f

    if-eqz p2, :cond_8

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_7

    const/high16 v3, 0x42340000    # 45.0f

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v2, p1

    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p2, p1, v1

    aput v2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$42;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$42;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_a

    const/high16 v3, 0x42340000    # 45.0f

    :cond_a
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v2, p1

    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    :goto_3
    return-void
.end method

.method private showEmojiShadow(ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    new-array p1, v1, [F

    aput v2, p1, v0

    invoke-static {v4, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$37;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$37;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    if-eqz p1, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private showStickerSettingsButton(ZZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    new-array v7, v1, [F

    aput v6, v7, v0

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p1, :cond_8

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    new-array v8, v1, [F

    aput v7, v8, v0

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_9
    new-array v3, v1, [F

    aput v2, v3, v0

    invoke-static {v6, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v0

    aput-object v5, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$41;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$41;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_d
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    const/4 v0, 0x4

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private startStopVisibleGifs(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private stopAnimatingTabsY(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateBottomTabContainerPosition()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_3

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    neg-float v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabMainTranslation:F

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabMainTranslation:F

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method

.method private updateEmojiHeaders()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateEmojiTabsPosition()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method private updateEmojiTabsPosition(I)V
    .locals 8

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-nez v0, :cond_8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$6900(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    if-lt p1, v1, :cond_7

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v4, v4, v2

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gez v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$13100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$13100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object p1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, p1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :cond_7
    :goto_5
    if-ltz v3, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_8
    return-void
.end method

.method private updateGifTabs()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    const/4 v6, -0x2

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    if-eqz v5, :cond_2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v2

    invoke-virtual {v6, v2, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->RecentStickers:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v6, 0x1

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    invoke-virtual {v6, v3, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v10

    if-eqz v10, :cond_3

    iget v11, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/lit8 v13, v8, 0x3

    invoke-virtual {v12, v13, v10, v11}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15000(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/2addr v0, v3

    :goto_4
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sub-int/2addr v0, v3

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method private updateRecentGifs()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v3

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateStickerTabs(Z)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_13

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "featured_hidden"

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v9, v5

    if-nez v3, :cond_8

    :cond_6
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    goto :goto_3

    :cond_7
    const/4 v3, 0x3

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->FeaturedStickersShort:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickersShort:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v3, v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickersShort:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/messenger/R$string;->RecentStickers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v5, -0x1

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    const/16 v5, -0xa

    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    if-eqz p1, :cond_c

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v9, v6

    if-ge v5, v9, :cond_11

    aget-object v6, v6, v5

    if-eqz v6, :cond_10

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v9, :cond_d

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v9, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    aput-object v3, v6, v5

    goto :goto_6

    :cond_d
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v10, :cond_e

    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_f
    :goto_5
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v9, :cond_12

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v9, :cond_14

    :cond_12
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_8

    :cond_13
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1e

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_hide_stickers_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, -0x1

    invoke-interface {p1, v5, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v11, :cond_17

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_9

    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_19

    iget-wide v9, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p1, v5, v9

    if-nez p1, :cond_18

    goto :goto_a

    :cond_17
    :goto_9
    cmp-long p1, v5, v9

    if-eqz p1, :cond_18

    :goto_a
    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_1c

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_1e

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_1b

    goto :goto_d

    :cond_1b
    move-object v2, v3

    :goto_d
    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    goto :goto_e

    :cond_1c
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_1e

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1e
    :goto_e
    const/4 p1, 0x0

    :goto_f
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_26

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    if-ne p1, v2, :cond_20

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_12

    :cond_1f
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_12

    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_22

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_22

    const/4 v5, 0x0

    :goto_10
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_22

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_21

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v13, v9, v11

    if-nez v13, :cond_21

    goto :goto_11

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_22
    move-object v6, v3

    :goto_11
    if-nez v6, :cond_23

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_23
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v9, 0x5a

    invoke-static {v5, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_24

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->gifs:Z

    if-eqz v9, :cond_25

    :cond_24
    move-object v5, v6

    :cond_25
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v9, v5, v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickerSet:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_12
    add-int/2addr p1, v4

    goto/16 :goto_f

    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v1, :cond_27

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_27
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    :cond_28
    :goto_13
    return-void
.end method

.method private updateStickerTabsPosition()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, 0x42480000    # 50.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v4

    mul-float v1, v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_4

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    goto :goto_2

    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    :goto_2
    return-void
.end method

.method private updateVisibleTrendingSets()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v4, :cond_2

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    move-object v5, v3

    move-object v6, v12

    move v7, v4

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersByIdAsRead(ZJ)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_a
    :goto_6
    if-nez v14, :cond_b

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3, v4, v13}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    const-string v0, "animated_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    :cond_6
    :goto_2
    return-void
.end method

.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_1
    return-void
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v5, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_2
    return-void
.end method

.method public allowEmojisForNonPremium(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return-void
.end method

.method public areThereAnyStickers()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearRecentEmoji()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/Emoji;->clearRecentEmoji()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeSearch(Z)V
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    return-void
.end method

.method public closeSearch(ZJ)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne v7, v4, :cond_1

    const-wide/16 v9, -0x1

    cmp-long v11, v1, v9

    if-eqz v11, :cond_1

    iget v9, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v1, :cond_2

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$13802(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_e

    if-nez v1, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    :goto_1
    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    :cond_6
    const/4 v12, 0x0

    const/high16 v13, 0x42100000    # 36.0f

    if-ne v1, v7, :cond_8

    if-eqz p1, :cond_8

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_7

    if-eq v1, v6, :cond_7

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v6, [F

    aput v12, v8, v5

    invoke-static {v11, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    new-array v12, v6, [F

    aput v11, v12, v5

    invoke-static {v9, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    new-array v13, v6, [F

    aput v12, v13, v5

    invoke-static {v2, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v12, v3, [Landroid/animation/Animator;

    aput-object v8, v12, v5

    aput-object v11, v12, v6

    aput-object v2, v12, v4

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_7
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v11, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    new-array v11, v6, [F

    aput v8, v11, v5

    invoke-static {v9, v2, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v8, v6, [Landroid/animation/Animator;

    aput-object v2, v8, v5

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v11, 0xc8

    invoke-virtual {v2, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/Components/EmojiView$39;

    invoke-direct {v8, v0, v10, v9}, Lorg/telegram/ui/Components/EmojiView$39;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroidx/recyclerview/widget/GridLayoutManager;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eq v2, v8, :cond_9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v14, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v8, v14

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    if-eqz v11, :cond_a

    if-eq v1, v4, :cond_a

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v8, 0x42300000    # 44.0f

    if-ne v9, v2, :cond_b

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v9, v5, v2, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v9, v2, :cond_c

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_3

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v9, v2, :cond_d

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v9, v11, v12, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    :goto_4
    invoke-virtual {v10, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_5
    add-int/2addr v1, v6

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_e
    if-nez p1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onSearchOpenClose(I)V

    :cond_f
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_16

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    goto/16 :goto_5

    :cond_0
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    goto/16 :goto_5

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    if-ne p1, p2, :cond_3

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_16

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_16

    if-eqz p3, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    goto/16 :goto_5

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_5

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    if-ne p2, v2, :cond_16

    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    goto/16 :goto_5

    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    if-ne p1, p2, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    goto/16 :goto_5

    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_9

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-nez v5, :cond_9

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    array-length p1, p3

    if-lt p1, v2, :cond_a

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    const-wide/16 p2, 0x64

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v0, p3, Lorg/telegram/ui/Cells/StickerSetNameCell;

    if-nez v0, :cond_c

    instance-of v0, p3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz p3, :cond_f

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->pickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateTabs()V

    goto :goto_5

    :cond_12
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-eq p1, v2, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    if-ne p1, p2, :cond_16

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$1700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$1700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    goto/16 :goto_1

    :cond_16
    :goto_5
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public freeze(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozen:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public getEmojipacks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecentEmoji()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    :cond_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickersExpandOffset()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v0

    :goto_0
    return v0
.end method

.method public hideSearchKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->dismiss()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->clearDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    invoke-static {p0, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;F)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v1, v0, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;F)V

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_popup:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    :cond_6
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method public onMessageSend()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->access$20200(Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;)V

    :cond_0
    return-void
.end method

.method public onOpen(ZZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 p2, 0x2

    if-ne p1, v2, :cond_6

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_b

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ltz p2, :cond_4

    goto :goto_0

    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ltz p2, :cond_5

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    :cond_5
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :cond_6
    if-ne p1, p2, :cond_b

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15900(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_a
    if-eqz p2, :cond_b

    new-instance p1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_b
    :goto_3
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method public openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$34;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$34;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollEmojiToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollEmojisToAnimated()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$8000(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    const/high16 v1, -0x3ef00000    # -9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public searchProgressChanged()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public setAllow(ZZZ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_6
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-void
.end method

.method public setDragListener(Lorg/telegram/ui/Components/EmojiView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setForseMultiwindowLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    return-void
.end method

.method public setShouldDrawBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_0
    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method public setStickersBanned(ZZJ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    const-wide/16 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    goto :goto_1

    :cond_2
    :goto_0
    iput-wide p3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    :goto_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    const/4 p3, 0x2

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getTab(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p4, v3, v1

    if-eqz p4, :cond_4

    const p4, 0x3e19999a    # 0.15f

    goto :goto_3

    :cond_4
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    const/4 p3, 0x1

    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    if-eqz p2, :cond_5

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p3, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_4

    :cond_5
    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p2, p3, :cond_6

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_3
    return-void
.end method

.method public showSearchField(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showStickerBanHint(ZZZ)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v4, :cond_5

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v5, :cond_1

    if-eqz p2, :cond_5

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v4, :cond_5

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->checkCanRemoveRestrictionsByBoosts()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->GlobalAttachEmojiRestricted:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->GlobalAttachGifRestricted:I

    goto :goto_0

    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->GlobalAttachStickersRestricted:I

    goto :goto_0

    :cond_5
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v4, :cond_6

    return-void

    :cond_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->AttachPlainRestrictedForever:I

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    sget v4, Lorg/telegram/messenger/R$string;->AttachGifRestrictedForever:I

    goto :goto_0

    :cond_8
    sget v4, Lorg/telegram/messenger/R$string;->AttachStickersRestrictedForever:I

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->AttachPlainRestricted:I

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "AttachPlainRestricted"

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz p3, :cond_b

    sget v5, Lorg/telegram/messenger/R$string;->AttachGifRestricted:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, "AttachGifRestricted"

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    sget v5, Lorg/telegram/messenger/R$string;->AttachStickersRestricted:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, "AttachStickersRestricted"

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    :cond_d
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    goto :goto_3

    :cond_e
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    const/4 v8, 0x0

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    :goto_4
    new-array v9, v0, [F

    aput v7, v9, v2

    aput v6, v9, v1

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v7, 0x41400000    # 12.0f

    if-eqz p1, :cond_10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    goto :goto_5

    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v9

    :goto_5
    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v8, v7

    :goto_6
    new-array v7, v0, [F

    aput v9, v7, v2

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    if-eqz p1, :cond_13

    new-instance p1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    const-wide/16 p2, 0xdac

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public switchToGifRecent()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public updateColors()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->colorPickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->updateColors()V

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_b

    if-nez v2, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    :cond_7
    if-ne v2, v4, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    :goto_4
    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v4, :cond_a

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15100(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    :cond_a
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15100(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelNewTrending:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz v2, :cond_d

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_e

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_10

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_12

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawBackground:Z

    if-eqz v2, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-nez v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    if-eqz v1, :cond_16

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v1, :cond_18

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$15600(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$15700(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$15800(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    :cond_18
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateColors()V

    :cond_1a
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1d

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1f

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_20
    return-void
.end method

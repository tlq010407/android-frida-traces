.class public abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    }
.end annotation


# static fields
.field private static final emptyViewEmojis:Ljava/util/List;

.field private static isFirstOpen:Z

.field private static lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private static listStates:Ljava/util/HashMap;

.field private static preloaded:[Z


# instance fields
.field private final EXPAND_MAX_LINES:I

.field private final RECENT_MAX_LINES:I

.field private final SPAN_COUNT:I

.field private final SPAN_COUNT_FOR_EMOJI:I

.field private final SPAN_COUNT_FOR_STICKER:I

.field private accentColor:I

.field private adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromButtonTranslate:F

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animationsEnabled:Z

.field private backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

.field private backgroundView:Landroid/view/View;

.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

.field private bottomGradientShown:Z

.field private bottomGradientView:Landroid/view/View;

.field private bubble1View:Landroid/view/View;

.field private bubble2View:Landroid/view/View;

.field private cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public cancelPressed:Z

.field private clearSearchRunnable:Ljava/lang/Runnable;

.field private collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field public contentView:Landroid/widget/FrameLayout;

.field private contentViewForeground:Landroid/view/View;

.field private final currentAccount:I

.field private defaultSetLoading:Z

.field private defaultStatuses:Ljava/util/ArrayList;

.field private defaultTopicIconRow:I

.field private dimAnimator:Landroid/animation/ValueAnimator;

.field private dismiss:Ljava/lang/Runnable;

.field private drawBackground:Z

.field private drawableToBounds:Landroid/graphics/Rect;

.field final durationScale:F

.field public emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field public emojiGridViewContainer:Landroid/widget/FrameLayout;

.field emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public emojiSearchEmptyView:Landroid/widget/FrameLayout;

.field private emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field private emojiSelectAlpha:F

.field private emojiSelectAnimator:Landroid/animation/ValueAnimator;

.field private emojiSelectRect:Landroid/graphics/Rect;

.field private emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field public emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public emojiTabsShadow:Landroid/view/View;

.field private emojiX:Ljava/lang/Integer;

.field private enterAnimationInProgress:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;

.field public forUser:Z

.field private forumIconDrawable:Landroid/graphics/drawable/Drawable;

.field private forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field private frozenEmojiPacks:Ljava/util/ArrayList;

.field private gifts:Ljava/util/ArrayList;

.field private giftsEndRow:I

.field private giftsSectionRow:I

.field private giftsStartRow:I

.field private gridSearch:Z

.field private gridSwitchAnimator:Landroid/animation/ValueAnimator;

.field public gridViewContainer:Landroid/widget/FrameLayout;

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private hintExpireDate:Ljava/lang/Integer;

.field private includeEmpty:Z

.field public includeHint:Z

.field private installedEmojiSets:Ljava/util/ArrayList;

.field private isAttached:Z

.field private lastQuery:Ljava/lang/String;

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listStateId:Ljava/lang/Integer;

.field private longtapHintRow:I

.field private final maxDim:F

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private packs:Ljava/util/ArrayList;

.field paint:Landroid/graphics/Paint;

.field public paused:Z

.field public pausedExceptSelected:Z

.field private popularSectionRow:I

.field private positionToButton:Landroid/util/SparseIntArray;

.field private positionToExpand:Landroid/util/SparseIntArray;

.field private positionToSection:Landroid/util/SparseIntArray;

.field private premiumStar:Landroid/graphics/drawable/Drawable;

.field private premiumStarColorFilter:Landroid/graphics/ColorFilter;

.field pressedProgress:F

.field private recent:Ljava/util/ArrayList;

.field private recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

.field private recentExpanded:Z

.field private recentReactions:Ljava/util/ArrayList;

.field private recentReactionsEndRow:I

.field private recentReactionsSectionRow:I

.field private recentReactionsStartRow:I

.field private recentReactionsToSet:Ljava/util/List;

.field private recentStickers:Ljava/util/ArrayList;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rowHashCodes:Ljava/util/ArrayList;

.field private scaleX:F

.field private scaleY:F

.field private scrimAlpha:F

.field private scrimColor:I

.field private scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private scrimDrawableParent:Landroid/view/View;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

.field public searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

.field private searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

.field private searchEmptyViewVisible:Z

.field private searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultStickers:Ljava/util/ArrayList;

.field private searchRow:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchSets:Ljava/util/ArrayList;

.field public searched:Z

.field public searchedLiftUp:Z

.field public searching:Z

.field private sectionToPosition:Landroid/util/SparseIntArray;

.field private selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field selectedDocumentIds:Ljava/util/HashSet;

.field selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field selectedReactions:Ljava/util/HashSet;

.field public selectorAccentPaint:Landroid/graphics/Paint;

.field public selectorPaint:Landroid/graphics/Paint;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field final showDuration:J

.field private showStickers:Z

.field private smoothScrolling:Z

.field private standardEmojis:Ljava/util/ArrayList;

.field private stickerSets:Ljava/util/ArrayList;

.field private stickers:Ljava/util/ArrayList;

.field private stickersEndRow:I

.field private stickersSearchResult:Ljava/util/ArrayList;

.field private stickersSectionRow:I

.field private stickersStartRow:I

.field private topGradientShown:Z

.field private topGradientView:Landroid/view/View;

.field private topMarginDp:I

.field private topReactions:Ljava/util/ArrayList;

.field private topReactionsEndRow:I

.field private topReactionsStartRow:I

.field private topicEmojiHeaderRow:I

.field private totalCount:I

.field private type:I

.field private final updateRows:Ljava/lang/Runnable;

.field private final updateRowsDelayed:Ljava/lang/Runnable;

.field public useAccentForPlus:Z


# direct methods
.method public static synthetic $r8$lambda$0_d5OHyRUY4ysLng6YWuLZtonl8(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$31(Ljava/lang/String;ZZ[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1ClWfYbDWnnSClOUZPSXwl89JaM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$24(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2pgIyboQ5Hw9Xxbvn9ygizKUabw(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$29(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8wtoAT_cosJXz567zZU3ihtOSL0(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$18(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AY_6MQN3Bc26LXVBESyfYao-2m4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$AjnXrckaUyOF-f1Lh-EYN6gD_kg(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$15(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Al0VAQdOv_oGLH4FPOsEISAXPyw(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$animateEmojiSelect$8(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BdOSbHOUbIaKsMyAZRgbbAEajyo(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$22(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CPc3d-BnDJF5XSt8h2d_RZu0o20(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onRecentLongClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CY1N8mbS0u0FR4m2gyX38PCsRVg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$26(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FpEboR_auA7dATXw3KK5Jam1QCs(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$21(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H6uqjsXNHVAXRKfncehy5Mb9PAE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$16(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKeErKlmkHLHffrBqxv0Pwcovdk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMDYgoA8rVjsx43ilg6ATB0xHSw(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$setEnterAnimationInProgress$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_t75-OL6eeYSYgWVYYjpPsL0Q0(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$17(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OeXZXxyITZWqXRcBLLi24bXJLHE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onDismiss$41(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC-XkvQ9bkNtZguPabv3aBxtopI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QcHOrhrOqt285qxx9fyBQLRKgBM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$30(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-x4qUjTWhwvkg983nASK1BOzd8(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$20(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTAAby7S2zvuZwNJmO6-0Dtep_I(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$19(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2DDoNRzc341hH-1kmYAEq3QSTI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onRecentLongClick$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMqCM6juIZfspDEiIwh34X_d4Bg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchSearchEmptyView$11(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WQ5wX9xMSKmTslnq0nLepF5AQWQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$4(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cV6o2nxDdSEfscVU0c0WZLYdcrE(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$28(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h408HZ1RZLp4dWffsC34X7z0H-Y(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJU41ufP59qipBBalj6uhSoz_vk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$36(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iR2TEtgi6J--n-aEnSfMOLyJYCg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$jhgunHjppe1Nl3HY5HI-mC4pMa4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$kTQgcISDPniF5ZTjjlMNDcj0MCc(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$loeIBbFUHLD-t3gXndl1ZiQGIRY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$9(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$meCFBPbPc6HnIihh5JSJW61c25E(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$14(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nyvIl3CapSeE-4AGrY8REWlVnFM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$23(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZxtx4W9XEb3HdVT7IBBsX3DUa8(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$25([Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qt8bbPjmnlmqMIJS0r2c77lW0iE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$expand$33(FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$qwCROphBujA1JTWT1-SxcYWAA2Y(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onEmojiClick$32(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s63UU3JcutHABWCDp2mLxvsJ598(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGzKSFcVK-UhKS4YFFAtZ-YAPcM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$tHXBoLdI-MVo0ki4SWZFKM-Ywaw(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$13(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPIe3Goa0df40O2SRmG_rk9PSzU(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uHop_huHj1xJMIWI7o-r3I9HibY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$vv2_DsahJM2nfdlJyjPQjbxxX-g(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$27(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRLzWJHwEHCweR06WOIieZWDPHk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$setDim$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xyWIH2xOGSq9HKFue84iXS8uVwM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$39()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\ud83d\ude28"

    const-string v1, "\u2753"

    const-string v2, "\ud83d\ude16"

    const-string v3, "\ud83d\ude2b"

    const-string v4, "\ud83e\udee0"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 0
    const/4 v6, 0x1

    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 11

    .line 0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v8, p7

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 35

    .line 0
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v11, p5

    move/from16 v10, p6

    move-object/from16 v9, p7

    move/from16 v8, p9

    invoke-direct {v12, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x8

    iput v7, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT_FOR_EMOJI:I

    const/4 v6, 0x5

    iput v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT_FOR_STICKER:I

    const/16 v5, 0x28

    iput v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->SPAN_COUNT:I

    iput v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->RECENT_MAX_LINES:I

    const/4 v4, 0x3

    iput v4, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->EXPAND_MAX_LINES:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    const/4 v2, 0x2

    new-array v0, v2, [Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    iput-boolean v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->maxDim:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v5, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientShown:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchedLiftUp:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pausedExceptSelected:Z

    const/4 v7, -0x1

    iput v7, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    iput v7, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    const-wide/16 v6, -0x1

    iput-wide v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    iput-boolean v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->durationScale:F

    const-wide/16 v5, 0x320

    iput-wide v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showDuration:J

    new-instance v5, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v5}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    iput-object v9, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v11, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    move/from16 v5, p3

    iput-boolean v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    iput-object v13, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emoji"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xc

    if-eqz v11, :cond_1

    if-eq v11, v3, :cond_1

    if-eq v11, v2, :cond_1

    if-ne v11, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v22, "reaction"

    :goto_0
    move-object/from16 v0, v22

    goto :goto_2

    :cond_1
    :goto_1
    const-string v22, "status"

    goto :goto_0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "usehint"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    iput v8, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    const/16 v5, 0x1e

    invoke-static {v8, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    iput-object v15, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-nez v15, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v22, 0x43920000    # 292.0f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v5, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_4

    const/4 v1, 0x1

    const/16 v21, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x1

    const/16 v21, 0x0

    :goto_5
    invoke-virtual {v12, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x7

    if-eqz v11, :cond_6

    if-eq v11, v3, :cond_6

    if-eq v11, v2, :cond_6

    if-eq v11, v7, :cond_6

    const/4 v2, 0x2

    const/4 v6, 0x5

    if-eq v11, v2, :cond_5

    if-eq v11, v6, :cond_5

    if-ne v11, v0, :cond_7

    :cond_5
    :goto_6
    move/from16 v0, p8

    goto :goto_7

    :cond_6
    const/4 v2, 0x2

    const/4 v6, 0x5

    goto :goto_6

    :goto_7
    iput v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    const/4 v3, 0x4

    if-eqz v5, :cond_c

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->shadowed_bubble1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x50

    goto :goto_8

    :cond_8
    const/16 v1, 0x30

    :goto_8
    or-int/lit8 v30, v1, 0x3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    if-eqz v21, :cond_9

    const/16 v2, -0xc

    goto :goto_9

    :cond_9
    const/4 v2, 0x4

    :goto_9
    int-to-float v2, v2

    add-float v31, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    iget v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    :goto_a
    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    int-to-float v2, v2

    const/16 v28, 0xa

    const/high16 v29, 0x41200000    # 10.0f

    const/16 v33, 0x0

    move/from16 v32, v1

    move/from16 v34, v2

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;

    invoke-direct {v0, v12, v14, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    if-eq v11, v4, :cond_e

    if-ne v11, v3, :cond_d

    goto :goto_c

    :cond_d
    const/16 v28, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/16 v28, 0x1

    :goto_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    if-eqz v28, :cond_f

    goto :goto_e

    :cond_f
    const/16 v29, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    const/16 v29, 0x1

    :goto_f
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v6

    const/16 v18, 0x1

    move-object/from16 v1, p0

    const/16 v7, 0x9

    move-object/from16 v2, p2

    const/4 v7, 0x1

    move/from16 v3, v29

    move/from16 v4, v28

    move-object/from16 p8, v5

    move-object/from16 v5, p7

    move-object v7, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    iput-object v7, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    if-nez v29, :cond_11

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;

    move-object/from16 v6, p8

    invoke-direct {v0, v12, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Integer;)V

    invoke-static {v7, v0}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    if-eqz v28, :cond_12

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;F)V

    goto :goto_10

    :cond_11
    move-object/from16 v6, p8

    const/4 v7, 0x1

    :cond_12
    :goto_10
    if-eqz v11, :cond_14

    const/16 v5, 0xc

    if-eq v11, v5, :cond_13

    const/16 v0, 0x9

    if-eq v11, v0, :cond_13

    const/16 v0, 0xa

    if-eq v11, v0, :cond_13

    const/4 v4, 0x2

    const/4 v3, 0x5

    if-eq v11, v4, :cond_15

    if-ne v11, v3, :cond_16

    goto :goto_11

    :cond_13
    const/4 v3, 0x5

    const/4 v4, 0x2

    goto :goto_11

    :cond_14
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/16 v5, 0xc

    :cond_15
    :goto_11
    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v7, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_16
    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static {v7, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v3, 0x6

    if-eqz v11, :cond_18

    if-eq v11, v5, :cond_18

    const/16 v1, 0x9

    if-eq v11, v1, :cond_18

    if-eq v11, v4, :cond_18

    const/4 v1, 0x7

    if-ne v11, v1, :cond_17

    goto :goto_12

    :cond_17
    const/16 v27, 0x0

    goto :goto_13

    :cond_18
    const/4 v1, 0x7

    :goto_12
    iget v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v27, v2

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v29, v2

    goto :goto_14

    :cond_19
    const/16 v29, 0x0

    :goto_14
    const/16 v23, -0x1

    const/high16 v24, -0x40800000    # -1.0f

    const/16 v25, 0x77

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xe

    if-eqz v6, :cond_1e

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;

    invoke-direct {v0, v12, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/R$drawable;->shadowed_bubble2_half:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x50

    :goto_15
    const/4 v5, 0x3

    goto :goto_16

    :cond_1a
    const/16 v4, 0x30

    goto :goto_15

    :goto_16
    or-int/lit8 v25, v4, 0x3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v7

    if-eqz v21, :cond_1b

    const/16 v7, -0x19

    goto :goto_17

    :cond_1b
    const/16 v7, 0xa

    :goto_17
    int-to-float v7, v7

    add-float v26, v4, v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v27, 0x0

    goto :goto_18

    :cond_1c
    iget v4, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    const/4 v7, 0x5

    add-int/2addr v4, v7

    int-to-float v4, v4

    move/from16 v27, v4

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v4, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    move/from16 v29, v4

    goto :goto_19

    :cond_1d
    const/16 v29, 0x0

    :goto_19
    const/16 v23, 0x11

    const/high16 v24, 0x41100000    # 9.0f

    const/16 v28, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    :cond_1e
    const/4 v5, 0x3

    :goto_1a
    if-eqz v13, :cond_20

    if-eq v11, v5, :cond_20

    if-eq v11, v3, :cond_20

    const/4 v4, 0x5

    if-eq v11, v4, :cond_1f

    if-eq v11, v1, :cond_1f

    const/4 v7, 0x4

    if-eq v11, v7, :cond_21

    const/16 v0, 0x9

    if-eq v11, v0, :cond_21

    const/16 v0, 0xa

    if-eq v11, v0, :cond_21

    if-eqz v10, :cond_21

    const/16 v16, 0x1

    goto :goto_1d

    :cond_1f
    :goto_1b
    const/4 v7, 0x4

    goto :goto_1c

    :cond_20
    const/4 v4, 0x5

    goto :goto_1b

    :cond_21
    :goto_1c
    const/16 v16, 0x0

    :goto_1d
    const/4 v5, 0x0

    :goto_1e
    const/high16 v20, 0x40a00000    # 5.0f

    const/4 v4, 0x2

    if-ge v5, v4, :cond_2d

    move-object/from16 v21, v6

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;

    if-eq v11, v7, :cond_22

    const/16 v23, 0x1

    goto :goto_1f

    :cond_22
    const/16 v23, 0x0

    :goto_1f
    if-eqz v11, :cond_24

    const/16 v7, 0xc

    if-eq v11, v7, :cond_24

    const/16 v7, 0x9

    if-eq v11, v7, :cond_24

    const/16 v7, 0xa

    if-ne v11, v7, :cond_23

    goto :goto_20

    :cond_23
    const/16 v24, 0x0

    goto :goto_21

    :cond_24
    const/16 v7, 0xa

    :goto_20
    const/16 v24, 0x1

    :goto_21
    if-eqz v16, :cond_25

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, v12, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v25, v0

    goto :goto_22

    :cond_25
    const/16 v25, 0x0

    :goto_22
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/16 v28, 0x5

    move-object/from16 v3, p7

    move/from16 v4, v23

    move/from16 v23, v5

    move/from16 v5, v24

    move-object v15, v6

    move-object/from16 v13, v21

    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v8, p5

    move-object/from16 v9, v25

    move/from16 v10, p9

    move v14, v11

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;II)V

    iget-object v0, v15, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_26

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_26
    const/4 v6, 0x0

    iput-boolean v6, v15, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    const/4 v7, 0x4

    const/16 v0, 0xd

    if-ne v14, v7, :cond_27

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    const/16 v1, 0xc

    const/4 v2, 0x2

    goto :goto_25

    :cond_27
    const/16 v1, 0xc

    const/4 v2, 0x2

    if-eqz v14, :cond_29

    if-eq v14, v1, :cond_29

    if-ne v14, v2, :cond_28

    goto :goto_23

    :cond_28
    const/4 v3, 0x5

    goto :goto_24

    :cond_29
    :goto_23
    const/4 v3, 0x6

    :goto_24
    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    :goto_25
    if-nez v13, :cond_2a

    const/4 v3, 0x1

    goto :goto_26

    :cond_2a
    const/4 v3, 0x0

    :goto_26
    iput-boolean v3, v15, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/4 v3, 0x6

    if-ne v14, v3, :cond_2b

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_27

    :cond_2b
    const/high16 v4, 0x40a00000    # 5.0f

    :goto_27
    invoke-virtual {v15, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setPaddingLeft(F)V

    const/16 v8, 0xe

    const/16 v4, 0x8

    if-eq v14, v8, :cond_2c

    if-eq v14, v4, :cond_2c

    if-eq v14, v0, :cond_2c

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v9, -0x1

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_2c
    const/4 v9, -0x1

    :goto_28
    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aput-object v15, v0, v23

    add-int/lit8 v5, v23, 0x1

    move-object/from16 v15, p4

    move/from16 v10, p6

    move-object/from16 v9, p7

    move/from16 v8, p9

    move-object v6, v13

    move v11, v14

    const/4 v1, 0x7

    const/16 v2, 0xe

    const/4 v4, 0x5

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    goto/16 :goto_1e

    :cond_2d
    move-object v13, v6

    move v14, v11

    const/16 v0, 0xd

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, -0x1

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aget-object v5, v3, v6

    iput-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v10, 0x1

    aget-object v3, v3, v10

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;

    move-object/from16 v11, p2

    invoke-direct {v3, v12, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object/from16 v15, p7

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    if-eq v14, v8, :cond_2e

    if-eq v14, v4, :cond_2e

    if-eq v14, v0, :cond_2e

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v22, v9, v16

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, -0x1

    const/16 v23, 0x30

    const/16 v24, 0x0

    const/high16 v25, 0x42100000    # 36.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    :cond_2e
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_29
    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v3, v10, v9, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;

    invoke-direct {v3, v12, v11, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;

    invoke-direct {v3, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v4, 0xdc

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v4, 0x104

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v5, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v16, 0x42180000    # 38.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    const/4 v5, 0x0

    invoke-direct {v3, v12, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    iget-object v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;

    const/16 v8, 0x28

    invoke-direct {v6, v12, v11, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;

    invoke-direct {v6, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;

    invoke-direct {v3, v12, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;

    invoke-direct {v3, v12, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    iget-object v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, 0x77

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v6, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;

    invoke-direct {v3, v12, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    const-wide/16 v8, 0xb4

    invoke-virtual {v3, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v3, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2f
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-ne v14, v7, :cond_30

    sget v1, Lorg/telegram/messenger/R$string;->NoEmojiOrStickersFound:I

    :goto_2a
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_30
    if-eqz v14, :cond_35

    if-eq v14, v0, :cond_35

    if-eq v14, v1, :cond_35

    const/16 v1, 0xb

    if-eq v14, v1, :cond_35

    const/16 v1, 0x9

    if-eq v14, v1, :cond_35

    const/16 v1, 0xa

    if-ne v14, v1, :cond_31

    goto :goto_2c

    :cond_31
    if-eq v14, v10, :cond_34

    if-ne v14, v2, :cond_32

    goto :goto_2b

    :cond_32
    const/16 v1, 0xe

    if-ne v14, v1, :cond_33

    sget v1, Lorg/telegram/messenger/R$string;->NoEffectsFound:I

    goto :goto_2a

    :cond_33
    sget v1, Lorg/telegram/messenger/R$string;->NoIconsFound:I

    goto :goto_2a

    :cond_34
    :goto_2b
    sget v1, Lorg/telegram/messenger/R$string;->NoReactionsFound:I

    goto :goto_2a

    :cond_35
    :goto_2c
    sget v1, Lorg/telegram/messenger/R$string;->NoEmojiFound:I

    goto :goto_2a

    :goto_2d
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v3, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-static {v1, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, 0x24

    const/high16 v25, 0x42100000    # 36.0f

    const/16 v26, 0x31

    const/16 v27, 0x0

    const/high16 v28, 0x41800000    # 16.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v24, -0x2

    const/high16 v25, -0x40000000    # -2.0f

    const/high16 v28, 0x42700000    # 60.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v24, -0x1

    const/16 v26, 0x10

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v8, 0x42180000    # 38.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-direct {v2, v12, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V

    iput-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;

    const/16 v3, 0x28

    invoke-direct {v2, v12, v11, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;

    invoke-direct {v2, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x77

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    if-eq v14, v3, :cond_37

    if-eq v14, v0, :cond_37

    const/16 v0, 0xe

    if-ne v14, v0, :cond_36

    goto :goto_2e

    :cond_36
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v0, v3, v0

    const/high16 v3, 0x42100000    # 36.0f

    add-float/2addr v0, v3

    move/from16 v20, v0

    goto :goto_2f

    :cond_37
    :goto_2e
    const/16 v20, 0x0

    :goto_2f
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x30

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;

    invoke-direct {v1, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;

    invoke-direct {v0, v12, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;

    move/from16 v1, p6

    invoke-direct {v0, v12, v11, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/high16 v17, 0x42500000    # 52.0f

    const/high16 v20, -0x3f800000    # -4.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;

    invoke-direct {v0, v12, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->gradient_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->multiplyAlphaComponent(IF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    const/high16 v5, 0x42100000    # 36.0f

    add-float v20, v3, v5

    const/high16 v17, 0x41a00000    # 20.0f

    const/16 v18, 0x37

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v1, 0xe

    if-ne v14, v1, :cond_38

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    const/16 v2, 0x14

    const/16 v3, 0x57

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-virtual {v12, v14, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(II)V

    iget-object v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->beforePreparing()V

    :cond_39
    const/4 v0, 0x0

    invoke-direct {v12, v10, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollToPosition(II)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateTabsPosition(I)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$4102(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getCacheType()I

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-object p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)[Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method static synthetic access$8200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    return-wide v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method static synthetic access$9000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getPremiumStar()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method private checkScroll()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    if-eq v0, v1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private enterAnimationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static findSticker(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_4

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private getCacheType()I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    const/16 v2, 0xd

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v1, 0x2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method private getPremiumStar()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_blocked:I

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private incrementHintUse()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "reaction"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "status"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "usehint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private isAnimatedShow()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateEmojiSelect$8(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    mul-float v0, p6, p6

    mul-float v0, v0, p6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v2, p6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-static {p1, v0, p6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p6

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    mul-float p1, p1, p2

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    float-to-int p1, v4

    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const p1, 0x3f59999a    # 0.85f

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-boolean p2, p3, p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    aput-boolean p2, p3, p1

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expand$33(FI)V
    .locals 3

    :try_start_0
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onSettings()V

    new-instance v0, Lorg/telegram/ui/StickersActivity;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentLongClick()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$new$34()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$35()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeDelayed(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(ILandroid/view/View;I)V
    .locals 3

    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez p3, :cond_3

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz p3, :cond_0

    iget-boolean p3, p3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-nez p3, :cond_3

    :cond_0
    const/16 p3, 0xd

    if-eq p1, p3, :cond_3

    const/16 p3, 0xe

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p3, :cond_2

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_2

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_1

    :cond_2
    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :goto_1
    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    goto :goto_2

    :cond_4
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    goto :goto_2

    :cond_5
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v0, :cond_6

    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_7

    :goto_2
    const/4 p1, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->callOnClick()Z

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$onDismiss$41(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    mul-float v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_1

    mul-float v1, p1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onEmojiClick$32(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 8

    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$onRecentLongClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/tl/TL_account$clearRecentEmojiStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_account$clearRecentEmojiStatuses;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearRecentEmojiStatuses()Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$onRecentLongClick$6(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDim(FZ)V

    return-void
.end method

.method private synthetic lambda$onShow$36(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method private synthetic lambda$onShow$37()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onShow$38()V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onShow$39()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onShow$40()V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$search$12()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$search$13(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-nez p2, :cond_6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq p2, v0, :cond_7

    const/16 v1, 0xe

    if-eq p2, v1, :cond_7

    const/16 v1, 0xb

    if-eq p2, v1, :cond_7

    const/4 v1, 0x2

    if-ne p2, v1, :cond_a

    :cond_7
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    invoke-virtual {p1, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    xor-int/lit8 p2, p10, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$search$14(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 13

    new-instance v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda40;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$search$15(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$16(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda39;

    invoke-direct {v5, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda39;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$search$17(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    move-object v3, p3

    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$18(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v0, p4

    move-object v1, p0

    iget v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v6, v6, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v7, "animated_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v6, v6, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->effects:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_2

    move-object v9, p1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p2

    :goto_2
    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$19(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private static synthetic lambda$search$20(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$search$21(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object p0, Lorg/telegram/ui/Components/StickerCategoriesListView;->search:Lorg/telegram/messenger/CacheFetcher;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda36;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda36;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/messenger/CacheFetcher;->fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$search$22(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$23(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda35;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda35;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaDataController;->getAnimatedEmojiByKeywords(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$search$24(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocuments(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$25([Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, ""

    :goto_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/telegram/messenger/MediaDataController;->searchStickers(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    return-void
.end method

.method private synthetic lambda$search$26(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 p6, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p6, v0, :cond_3

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$27(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    const/4 v7, 0x0

    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    if-eqz p1, :cond_9

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v8, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->keywords:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v8, :cond_6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_9
    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    sget-object v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda42;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v15, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v9, p3

    move v10, v0

    invoke-virtual/range {v7 .. v16}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    :goto_7
    return-void
.end method

.method private static synthetic lambda$search$28(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$29(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iget v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xe

    if-gt v8, v9, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v10, p1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    add-int/lit8 v11, v8, -0x1

    if-ge v9, v11, :cond_3

    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const v12, 0xd83c

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const v13, 0xdffb

    if-lt v12, v13, :cond_1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const v12, 0xdfff

    if-le v11, v12, :cond_2

    :cond_1
    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x200d

    if-ne v11, v12, :cond_3

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x2640

    if-eq v12, v13, :cond_2

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2642

    if-ne v11, v12, :cond_3

    :cond_2
    invoke-interface {v10, v3, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    add-int/lit8 v12, v9, 0x2

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-interface {v10, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/CharSequence;

    aput-object v11, v12, v3

    aput-object v10, v12, v4

    invoke-static {v12}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v8, v8, -0x2

    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const v12, 0xfe0f

    if-ne v11, v12, :cond_4

    invoke-interface {v10, v3, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-interface {v10, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/CharSequence;

    aput-object v11, v12, v3

    aput-object v10, v12, v4

    invoke-static {v12}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v9, v4

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_4
    if-ge v3, v8, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/2addr v3, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_9

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    sget-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda41;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v12, v7, v2, v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda41;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$search$30(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_2

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    invoke-direct {v7, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v4, :cond_a

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_a

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_5
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_3

    :cond_8
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$31(Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 24

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const/4 v11, 0x2

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v16

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move/from16 v3, p2

    move-object/from16 v19, v4

    move-object v4, v8

    move-object/from16 p2, v5

    move-object/from16 v5, v16

    move/from16 v20, v6

    move-object v6, v7

    move-object/from16 v21, v7

    move-object v7, v10

    move-object/from16 v22, v8

    move-object v8, v9

    move-object v14, v9

    move-object/from16 v9, v18

    move-object/from16 v23, v10

    move-object/from16 v10, p2

    const/4 v15, 0x2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iget v0, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;

    invoke-direct {v0, v12, v13, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    new-array v1, v15, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v17, v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0xe

    move/from16 v2, v20

    if-ne v0, v1, :cond_2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;

    move-object/from16 v1, v21

    move-object/from16 v6, v22

    invoke-direct {v0, v12, v13, v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    move-object/from16 v1, v21

    move-object/from16 v6, v22

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;

    invoke-direct {v0, v12, v13, v1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    new-array v1, v15, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v17, v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    :cond_2
    move-object/from16 v6, v22

    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;

    move-object/from16 v3, v23

    invoke-direct {v7, v2, v13, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;-><init>(ZLjava/lang/String;Ljava/util/LinkedHashSet;)V

    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;

    invoke-direct {v8, v12, v13, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;

    move-object/from16 v0, p4

    invoke-direct {v9, v12, v0, v13, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    new-instance v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v12, v13, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;

    move-object/from16 v2, v18

    invoke-direct {v1, v12, v13, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    aput-object v9, v2, v15

    const/4 v3, 0x3

    aput-object v10, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object v17, v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$setDim$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/high16 v1, -0x1000000

    invoke-static {v1, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$setEnterAnimationInProgress$42(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$switchGrids$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$switchGrids$9(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$switchSearchEmptyView$11(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private onRecentLongClick()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiStatusesTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiStatusesText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDimEnabled(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDim(FZ)V

    return-void
.end method

.method private onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_0
    iget-object v4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static preload(I)V
    .locals 4

    .line 0
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->preload(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scrollToPosition(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_1
    return-void
.end method

.method private setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setDim(FZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    mul-float p1, p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    mul-float v1, p1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/high16 v0, -0x1000000

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateRows(ZZ)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method private updateRows(ZZZ)V
    .locals 26

    .line 0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x5

    if-nez p1, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-boolean v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v8, -0x1

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/16 v12, 0x8

    if-eqz v9, :cond_5

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v9, v10, :cond_6

    :cond_5
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq v9, v4, :cond_6

    if-eq v9, v11, :cond_6

    if-eq v9, v12, :cond_6

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v13, 0x9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    :goto_2
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v13, 0x6

    const-wide/32 v16, 0xa8d7

    const/4 v8, 0x0

    const-wide/16 v18, 0xd

    const/4 v12, 0x1

    if-eq v9, v4, :cond_7

    if-ne v9, v11, :cond_8

    :cond_7
    move-object/from16 v24, v3

    goto/16 :goto_c

    :cond_8
    const-wide/32 v20, 0xf3d9

    if-ne v9, v10, :cond_d

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v9, 0x0

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v14, v14, v18

    add-long v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v12

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x5

    goto :goto_3

    :cond_9
    move-object/from16 v24, v3

    goto/16 :goto_f

    :cond_a
    iget-boolean v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    if-eqz v4, :cond_b

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MediaDataController;->profileAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    goto :goto_4

    :cond_b
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MediaDataController;->groupAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    :goto_4
    if-eqz v4, :cond_9

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    iput-boolean v12, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    iput-boolean v2, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    iput-boolean v12, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iput-boolean v12, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v11, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    iput-object v11, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->thumbDocumentId:Ljava/lang/Long;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :goto_5
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_c

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v15, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v24, v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v14, v2, v3, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v24

    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    move-object/from16 v24, v3

    const/4 v2, 0x0

    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v14

    mul-long v14, v14, v18

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v12

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v24, v3

    if-ne v9, v13, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v2, :cond_e

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v2, v12

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v14, v14, v18

    add-long v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v12

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x3

    if-ne v9, v2, :cond_18

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v3, 0xc

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->defaultTopicIcons:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-nez v3, :cond_12

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    goto :goto_9

    :cond_11
    move-object v3, v8

    :cond_12
    :goto_9
    if-nez v3, :cond_13

    iput-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    goto/16 :goto_f

    :cond_13
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v2, :cond_14

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v2, v12

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v14, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_a
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v9, v11, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v14

    mul-long v14, v14, v18

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v12

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :goto_c
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v2, :cond_16

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v2, v12

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->replyIconsDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v2, :cond_18

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x0

    :goto_d
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v9, v14, v15, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v14

    mul-long v14, v14, v18

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v3, v12

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    :goto_f
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    const/16 v3, 0xb

    const/16 v4, 0xd

    if-eqz v2, :cond_19

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq v2, v4, :cond_19

    const/4 v9, 0x2

    if-eq v2, v9, :cond_19

    if-eq v2, v3, :cond_19

    const/4 v9, 0x3

    if-eq v2, v9, :cond_19

    if-eq v2, v13, :cond_19

    const/16 v9, 0x8

    if-eq v2, v9, :cond_19

    if-eq v2, v10, :cond_19

    const/4 v9, 0x5

    if-eq v2, v9, :cond_19

    const/4 v9, 0x7

    if-eq v2, v9, :cond_19

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v14, 0x6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v9, 0xa

    const/16 v11, 0x9

    if-eq v2, v11, :cond_1a

    if-ne v2, v9, :cond_1b

    :cond_1a
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->restrictedStatusEmojis:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v2, :cond_1b

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_1b
    move-object v14, v8

    :goto_10
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    const/16 v15, 0xc

    const/16 v13, 0xe

    if-eqz v2, :cond_2e

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v10, v4, :cond_1c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v8, 0x8

    if-le v10, v8, :cond_1c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2, v8, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_1c
    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v8, v13, :cond_1e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v10, v9, :cond_1f

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->sticker:Z

    if-eqz v9, :cond_1d

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    :cond_1d
    add-int/2addr v10, v12

    goto :goto_11

    :cond_1e
    :goto_12
    const/4 v8, 0x0

    :cond_1f
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_22

    if-eq v9, v3, :cond_22

    if-ne v9, v4, :cond_20

    goto :goto_14

    :cond_20
    const/4 v9, 0x0

    :goto_13
    const/16 v10, 0x10

    if-ge v9, v10, :cond_23

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_13

    :cond_22
    :goto_14
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_23
    const/4 v9, 0x0

    :goto_15
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hashCode()I

    move-result v12

    int-to-long v11, v12

    mul-long v11, v11, v18

    const-wide/16 v16, -0x1600

    add-long v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0x9

    goto :goto_15

    :cond_24
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2c

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2c

    if-eq v9, v3, :cond_2c

    if-eq v9, v4, :cond_2c

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_26

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v11, 0x0

    cmp-long v16, v9, v11

    if-eqz v16, :cond_25

    const/4 v3, 0x0

    goto :goto_17

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_26
    const/4 v3, 0x1

    :goto_17
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v9, v13, :cond_27

    goto :goto_19

    :cond_27
    if-eqz v3, :cond_28

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    if-eqz v9, :cond_29

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v10, 0x5

    :goto_18
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v10, 0x4

    goto :goto_18

    :cond_29
    :goto_19
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_1a
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2b

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    const/16 v10, 0x108b

    goto :goto_1b

    :cond_2a
    const/16 v10, -0xc46

    :goto_1b
    int-to-long v10, v10

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-object/from16 v25, v14

    iget-wide v13, v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    mul-long v13, v13, v18

    add-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v25

    const/16 v13, 0xe

    goto :goto_1a

    :cond_2b
    move-object/from16 v25, v14

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    goto :goto_1c

    :cond_2c
    move-object/from16 v25, v14

    :goto_1c
    if-eqz v8, :cond_46

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSectionRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0x8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersStartRow:I

    iput-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    const-wide/16 v11, 0x13

    mul-long v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2d
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersEndRow:I

    goto/16 :goto_2c

    :cond_2e
    move-object/from16 v25, v14

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v2, :cond_2f

    if-eq v2, v15, :cond_2f

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_46

    :cond_2f
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getRecentEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v8, :cond_31

    if-ne v8, v15, :cond_30

    goto :goto_1f

    :cond_30
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;-><init>()V

    :goto_1e
    const/4 v9, 0x1

    goto :goto_20

    :cond_31
    :goto_1f
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    goto :goto_1e

    :goto_20
    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-nez v3, :cond_32

    iput-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultSetLoading:Z

    goto/16 :goto_2c

    :cond_32
    iget-boolean v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v8, :cond_33

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v8, :cond_35

    if-ne v8, v15, :cond_34

    goto :goto_21

    :cond_34
    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getDefaultChannelEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_22

    :cond_35
    :goto_21
    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v8

    :goto_22
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const/16 v10, 0x68

    if-eqz v9, :cond_37

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_37

    const/4 v9, 0x0

    :goto_23
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x7

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v9, v11, :cond_37

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-boolean v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v11, v12

    if-lt v11, v10, :cond_36

    goto :goto_24

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_37
    :goto_24
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v3, :cond_38

    if-ne v3, v15, :cond_3d

    :cond_38
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_25

    :cond_3a
    const/4 v9, 0x0

    :goto_26
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_3c

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v22, v11, v13

    if-nez v22, :cond_3b

    goto :goto_25

    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_3c
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v3, 0x0

    invoke-direct {v11, v12, v13, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v3, v9

    if-lt v3, v10, :cond_39

    :cond_3d
    if-eqz v8, :cond_42

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3e
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3f

    goto :goto_27

    :cond_3f
    const/4 v8, 0x0

    :goto_28
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_41

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-nez v9, :cond_40

    goto :goto_27

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_41
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v3, 0x0

    invoke-direct {v9, v11, v12, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v3, v8

    if-lt v3, v10, :cond_3e

    :cond_42
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    rsub-int/lit8 v3, v2, 0x28

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v3, :cond_45

    iget-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v3, :cond_45

    const/4 v3, 0x0

    :goto_29
    rsub-int/lit8 v8, v2, 0x27

    if-ge v3, v8, :cond_43

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    mul-long v9, v9, v18

    add-long v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x28

    iget-boolean v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v3, v8

    const/4 v8, 0x1

    add-int/2addr v3, v8

    int-to-long v8, v3

    mul-long v8, v8, v18

    const-wide/16 v10, -0x159b

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v2, :cond_44

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x28

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    :cond_44
    const/4 v9, 0x1

    :goto_2a
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v8, -0x1

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    goto :goto_2c

    :cond_45
    const/4 v2, 0x0

    :goto_2b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    mul-long v8, v8, v18

    add-long v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_46
    :goto_2c
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v2, :cond_47

    if-eq v2, v15, :cond_47

    const/16 v3, 0x9

    if-eq v2, v3, :cond_47

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4c

    :cond_47
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getDialogId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v9, :cond_48

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_49
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsSectionRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v8, 0x16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsStartRow:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v9, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    const-wide/16 v11, 0x142

    mul-long v9, v9, v11

    const-wide/16 v11, 0x3416

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4a
    const/4 v9, 0x1

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->giftsEndRow:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showGifts(Z)V

    goto :goto_2f

    :cond_4b
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showGifts(Z)V

    :cond_4c
    :goto_2f
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v2, v4, :cond_4e

    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v3, :cond_4e

    aget-object v9, v2, v8

    array-length v10, v9

    const/4 v11, 0x0

    :goto_31
    if-ge v11, v10, :cond_4d

    aget-object v12, v9, v11

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->standardEmojis:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    int-to-long v14, v12

    const-wide/16 v16, 0x142

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3416

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_31

    :cond_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_4e
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const-wide/16 v8, 0xc8c

    const/16 v3, 0x8

    if-eq v2, v3, :cond_58

    if-eq v2, v4, :cond_58

    const/16 v3, 0xe

    if-eq v2, v3, :cond_58

    const/4 v2, 0x0

    :goto_32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v3, :cond_4f

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v10, :cond_50

    :cond_4f
    :goto_33
    move-object/from16 v14, v25

    goto/16 :goto_37

    :cond_50
    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_51

    const/4 v11, 0x7

    if-ne v10, v11, :cond_52

    :cond_51
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTextColorSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v10

    if-nez v10, :cond_52

    goto :goto_33

    :cond_52
    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_53

    const/16 v11, 0x9

    if-ne v10, v11, :cond_54

    :cond_53
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    if-nez v10, :cond_54

    goto :goto_33

    :cond_54
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v11, :cond_55

    iget-boolean v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v11, :cond_4f

    :cond_55
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4f

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v11, v11, v18

    const-wide/16 v13, 0x23fb

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v10}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    iput-boolean v11, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_56

    :goto_34
    iput-boolean v12, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    goto :goto_35

    :cond_56
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v12

    xor-int/2addr v12, v11

    goto :goto_34

    :goto_35
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v11, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    move-object/from16 v14, v25

    invoke-direct {v0, v3, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v11, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v3, v11

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v3, 0x0

    :goto_36
    iget-object v11, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_57

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v12, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v12, v12, v18

    add-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_57
    :goto_37
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v25, v14

    goto/16 :goto_32

    :cond_58
    move-object/from16 v14, v25

    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-nez v2, :cond_6a

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6a

    if-eq v2, v4, :cond_6a

    const/16 v3, 0xe

    if-eq v2, v3, :cond_6a

    const/4 v12, 0x0

    :goto_38
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_6a

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v5, 0x0

    :goto_39
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_5a

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v10, v10, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v13, v10, v8

    if-nez v13, :cond_59

    move-object v10, v6

    :goto_3a
    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v11, 0x1

    const-wide/16 v15, 0xc8c

    goto/16 :goto_45

    :cond_59
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v8, 0xc8c

    goto :goto_39

    :cond_5a
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v5, :cond_5c

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v24

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v8, v10}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-eqz v5, :cond_5b

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v5

    move v8, v5

    move-object v5, v2

    :goto_3b
    const/4 v2, 0x0

    goto :goto_3c

    :cond_5b
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    goto :goto_3c

    :cond_5c
    move-object/from16 v9, v24

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v5, :cond_5d

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)Z

    move-result v2

    move v8, v2

    goto :goto_3b

    :cond_5d
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_3c
    if-nez v5, :cond_5f

    :cond_5e
    :goto_3d
    move-object v10, v6

    move-object/from16 v24, v9

    goto :goto_3a

    :cond_5f
    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_60

    const/4 v11, 0x7

    if-ne v10, v11, :cond_61

    :cond_60
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5e

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v10

    if-nez v10, :cond_61

    goto :goto_3d

    :cond_61
    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v11, 0xa

    const/16 v13, 0x9

    if-eq v10, v11, :cond_62

    if-ne v10, v13, :cond_63

    :cond_62
    iget-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->channel_emoji_status:Z

    if-nez v10, :cond_63

    goto :goto_3d

    :cond_63
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v10, v11, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v10, v11, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    move-object v11, v5

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v4, v4, v18

    const-wide/16 v22, 0x23fb

    add-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    move-object v10, v6

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v2, 0x1

    iput-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_64

    const/4 v5, 0x0

    :goto_3e
    iput-boolean v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    goto :goto_3f

    :cond_64
    xor-int/lit8 v5, v8, 0x1

    goto :goto_3e

    :goto_3f
    iput-object v3, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-direct {v0, v11, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->filter(Ljava/util/ArrayList;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->index:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iget-object v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x18

    if-le v2, v5, :cond_67

    iget-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-nez v2, :cond_67

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x18

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v2, 0x0

    :goto_40
    const/16 v5, 0x17

    if-ge v2, v5, :cond_65

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v9

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v8, v8, v18

    const-wide/16 v15, 0xc8c

    add-long/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v24

    goto :goto_40

    :cond_65
    move-object/from16 v24, v9

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v5, v5, v18

    const-wide/16 v8, -0x159b

    add-long/2addr v5, v8

    iget-object v8, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x17

    int-to-long v8, v8

    const-wide/16 v22, 0xa9

    mul-long v8, v8, v22

    add-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_66
    const-wide/16 v15, 0xc8c

    goto :goto_42

    :cond_67
    move-object/from16 v24, v9

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v2, 0x0

    :goto_41
    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_66

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v8, v8, v18

    const-wide/16 v15, 0xc8c

    add-long/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :goto_42
    iget-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v2, :cond_69

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_69

    const/4 v6, 0x5

    if-eq v2, v6, :cond_69

    const/4 v8, 0x7

    const/4 v9, 0x6

    if-eq v2, v8, :cond_68

    if-eq v2, v9, :cond_68

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v11, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v5, v5, v18

    const-wide/16 v22, 0xcf9

    add-long v5, v5, v22

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_68
    :goto_43
    const/4 v11, 0x1

    goto :goto_44

    :cond_69
    const/4 v8, 0x7

    const/4 v9, 0x6

    goto :goto_43

    :goto_44
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_45
    add-int/lit8 v12, v12, 0x1

    move-object v6, v10

    move-wide v8, v15

    const/16 v4, 0xd

    goto/16 :goto_38

    :cond_6a
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6b

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    :cond_6b
    if-eqz v1, :cond_6c

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    :goto_46
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_47

    :cond_6c
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v2, 0x0

    goto :goto_46

    :goto_47
    if-eqz p3, :cond_6d

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_48

    :cond_6d
    const/4 v2, 0x0

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_48
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-boolean v3, v1, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    if-nez v3, :cond_6e

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_6e
    return-void
.end method

.method private updateRowsDelayed()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchBox()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "searchbox"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public static updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_2

    sget-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v8, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_1

    move v0, v5

    move-object v5, v8

    goto :goto_2

    :cond_1
    move v0, v5

    move-object v5, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-gtz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v12, v5

    goto/16 :goto_9

    :cond_7
    :goto_5
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 p0, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_6

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v6, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_9

    sget-object v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v7, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_8

    move v0, v5

    move-object v5, v7

    goto :goto_8

    :cond_8
    move v0, v5

    move-object v5, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v5, :cond_b

    if-gtz v0, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :goto_9
    if-eqz v12, :cond_f

    iget-object p0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    iget-object p0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "video/webm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x200

    const-string v2, "36_36"

    if-eqz v0, :cond_d

    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "g"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_c

    invoke-virtual {v11, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_c
    :goto_a
    move-object v7, v0

    move-object v8, v2

    goto :goto_b

    :cond_d
    if-eqz v11, :cond_e

    invoke-static {v12, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v11, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_e
    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    goto :goto_a

    :goto_b
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-static {p0, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "36_36"

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private updateShow(F)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    const/4 v2, -0x1

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    mul-float v1, p1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, -0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    :goto_0
    int-to-float v9, v9

    mul-float v1, v1, v9

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v1, :cond_3

    mul-float v1, p1, v4

    sub-float/2addr v1, v8

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    mul-float v1, p1, v4

    const/high16 v2, 0x42200000    # 40.0f

    sub-float v2, v1, v2

    const/high16 v4, 0x442f0000    # 700.0f

    div-float v5, v2, v4

    invoke-static {v5, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    const/high16 v9, 0x42a00000    # 80.0f

    sub-float v9, v1, v9

    div-float/2addr v9, v4

    invoke-static {v9, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    const v9, 0x443b8000    # 750.0f

    div-float/2addr v2, v9

    invoke-static {v2, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    sub-float/2addr v1, v8

    div-float/2addr v1, v3

    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v9, -0x3f600000    # -5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v7, v1

    mul-float v10, v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v11

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    const v8, 0x3f59999a    # 0.85f

    mul-float v5, v5, v8

    const v8, 0x3e19999a    # 0.15f

    add-float/2addr v5, v8

    iput v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    const v5, 0x3f6ccccd    # 0.925f

    mul-float v3, v3, v5

    const v5, 0x3d99999a    # 0.075f

    add-float/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    goto :goto_3

    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    mul-float v3, v1, v1

    float-to-double v8, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-double v10, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v14, v3

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    const/4 v5, 0x0

    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/high16 v9, 0x3fe00000    # 1.75f

    const/high16 v10, 0x40000000    # 2.0f

    if-ge v5, v8, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v11, 0x0

    cmpl-float v12, p1, v6

    if-nez v12, :cond_9

    const/4 v12, 0x2

    invoke-virtual {v8, v12, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    cmpl-float v12, p1, v7

    if-nez v12, :cond_a

    invoke-virtual {v8, v4, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    sub-float/2addr v11, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v12, v10, v12

    :cond_b
    mul-float v11, v11, v11

    mul-float v12, v12, v12

    const v10, 0x3ecccccd    # 0.4f

    mul-float v12, v12, v10

    add-float/2addr v11, v12

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v9

    invoke-static {v2, v10, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v9, 0x0

    :cond_c
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v7, :cond_10

    move-object v7, v5

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v8, v11

    sub-float/2addr v8, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float v11, v12, v11

    :cond_e
    mul-float v8, v8, v8

    mul-float v11, v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float v11, v11, v12

    add-float/2addr v8, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v9

    invoke-static {v2, v8, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v5, 0x0

    :cond_f
    invoke-virtual {v7, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method private updateTabsPosition(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v1, v0

    :goto_0
    const/4 v0, 0x0

    if-le p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_5

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x18

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    if-le p1, v2, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    if-gt p1, v2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->isGiftsVisible()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    return-void

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v4

    const/4 v1, 0x7

    invoke-static {v2, v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-array v0, v0, [Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateExpandAppearDuration()J
    .locals 4

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1e

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1c2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x19

    mul-long v0, v0, v2

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandCrossfadeDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clearSelectedDocuments()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_6

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_6

    :cond_5
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-double v6, v4

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    iget v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    :cond_2
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpl-float v6, v3, v2

    if-lez v6, :cond_3

    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    int-to-float v6, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3f4f5c29    # 0.81f

    mul-float v5, v5, v7

    add-float/2addr v5, v2

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    neg-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float v8, v3, v2

    mul-float v6, v6, v8

    add-float/2addr v6, v5

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v5, v9

    :goto_4
    add-float/2addr v6, v5

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getScrimDrawableTranslationY()F

    move-result v5

    add-float/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    div-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    div-float/2addr v9, v8

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    sub-float v10, v7, v5

    float-to-int v10, v10

    sub-float v11, v6, v9

    float-to-int v11, v11

    add-float/2addr v7, v5

    float-to-int v5, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v8, v10, v11, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v9, v6

    float-to-int v6, v9

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v3

    add-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v6, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    sub-float/2addr v2, v5

    invoke-static {v3, v4, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_6

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cancelPressed:Z

    if-nez v3, :cond_2

    const v3, 0x3c2ec33e

    add-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;->onLongPressed(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    :cond_2
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public expand(ILandroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    const/16 v6, 0x18

    if-eqz v5, :cond_2

    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    iget-object v7, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    add-int/lit8 v7, p1, 0x1

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v2

    :goto_2
    iput-boolean v1, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_7

    :cond_4
    const/4 v3, -0x1

    if-ne p1, v3, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-eq v4, v3, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    if-eq v5, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v4, v3

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v3

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    move v5, p1

    goto :goto_6

    :cond_8
    rsub-int/lit8 p1, v3, 0x26

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    const/16 v6, 0x28

    move-object v7, v2

    move p1, v4

    const/4 v4, 0x0

    :goto_7
    if-le v3, v5, :cond_9

    add-int/2addr p1, v1

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_9
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/lit8 v6, v6, 0x2

    if-le p2, v6, :cond_a

    const/high16 p2, 0x3fc00000    # 1.5f

    goto :goto_8

    :cond_a
    const/high16 p2, 0x40600000    # 3.5f

    :goto_8
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method public getCollectionParticles()Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->collectionParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateParent()V
    .locals 0

    return-void
.end method

.method public invalidateSearchBox()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->invalidate()V

    return-void
.end method

.method public isBottom()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v1, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onDismiss(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$9800(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    if-eqz p2, :cond_9

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xc

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    iget-object v4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-wide v6, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_2
    move-object v6, v4

    instance-of v4, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v4, :cond_8

    move-object v7, p1

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v4, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MediaDataController;->pushRecentEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->willApplyEmoji(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->starGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V

    return-void

    :cond_7
    new-instance v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    invoke-virtual {p0, v7, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_0

    :cond_9
    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    goto :goto_1

    :goto_4
    return-void
.end method

.method protected abstract onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
.end method

.method protected onInputFocus()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x42280000    # 42.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    div-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x5

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/high16 p1, 0x43a20000    # 324.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    const v0, 0x3f733333    # 0.95f

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 p2, 0x43a50000    # 330.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v0, v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_0
    float-to-int p2, p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const v0, 0x3eb33333    # 0.35f

    mul-float p2, p2, v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    return-void
.end method

.method protected onSettings()V
    .locals 0

    return-void
.end method

.method public onShow(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    sget-object v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_5

    const/4 v5, 0x7

    if-eq v3, v5, :cond_5

    sput-boolean v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->setUiDbCallback(Ljava/lang/Runnable;)V

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_5
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v6, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {v3, v5, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x320

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    invoke-direct {p0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public preload(II)V
    .locals 5

    .line 0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/16 v2, 0xb

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    const/4 v3, 0x6

    if-eq p1, v3, :cond_9

    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq p1, v3, :cond_7

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_6

    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    goto :goto_4

    :cond_6
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    :goto_1
    invoke-virtual {p1, p2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    goto :goto_4

    :cond_7
    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "resetemojipacks"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v4, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickers(IZZ)V

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->loadRestrictedStatusEmojis()V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;-><init>()V

    goto :goto_1

    :cond_9
    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    :cond_a
    :goto_4
    return-void
.end method

.method public prevWindowKeyboardVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetBackgroundBitmaps()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    const/4 v3, 0x0

    :goto_3
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_3

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public search(Ljava/lang/String;ZZ)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$4600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    xor-int/lit8 v8, v0, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    iput-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchedLiftUp:Z

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    :cond_4
    if-eqz v8, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResultStickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchSets:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x78

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    :cond_a
    sput-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_b

    const-wide/16 v3, 0x1a9

    goto :goto_1

    :cond_b
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$4600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    :cond_c
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    return-void
.end method

.method public setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setEnterAnimationInProgress(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setExpireDateHint(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForumIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMultiSelected(Ljava/lang/Long;Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz v2, :cond_4

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_2

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual {v2, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelectedWithScale(ZZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    return-void
.end method

.method public setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

    return-void
.end method

.method public setPaused(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    iput-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pausedExceptSelected:Z

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setRecentReactions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setSaveState(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    return-void
.end method

.method public setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    iget-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_5

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_5
    return-void
.end method

.method public setSelectedReactions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedReactions(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public switchGrids(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float v0, p2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchSearchEmptyView(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unselect(Ljava/lang/Long;)Z
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v5, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->unselectWithScale()V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    if-nez v2, :cond_6

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xd

    mul-long v7, v7, v9

    const-wide/32 v11, 0xf3d9

    add-long/2addr v7, v11

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long v7, v7, v9

    const-wide/16 v9, 0xc8c

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    return v1
.end method

.method protected willApplyEmoji(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

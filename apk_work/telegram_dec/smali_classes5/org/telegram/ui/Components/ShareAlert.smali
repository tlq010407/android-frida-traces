.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$SwitchView;,
        Lorg/telegram/ui/Components/ShareAlert$SearchField;,
        Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;,
        Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field public bulletinContainer2:Landroid/widget/FrameLayout;

.field private captionEditTextTopOffset:F

.field private chatActivityEnterViewAnimateFromTop:F

.field private commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private containerViewTop:I

.field private copyLinkOnEnd:Z

.field private currentPanTranslationY:F

.field private darkTheme:Z

.field private delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field public forceDarkThemeForHint:Z

.field private frameLayout:Landroid/widget/FrameLayout;

.field private frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

.field private fullyShown:Z

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private hasPoll:I

.field private includeStory:Z

.field public includeStoryFromMessage:Z

.field private isChannel:Z

.field private keyboardSize2:I

.field private keyboardT:F

.field lastOffset:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private linkCopyButton:Landroid/widget/TextView;

.field private linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private linkToCopy:[Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field public navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

.field private paint:Landroid/graphics/Paint;

.field private panTranslationMoveLayout:Z

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pickerBottom:Landroid/widget/FrameLayout;

.field private pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

.field private previousScrollOffsetY:I

.field private recentSearchObjects:Ljava/util/ArrayList;

.field private recentSearchObjectsById:Landroidx/collection/LongSparseArray;

.field private rect:Landroid/graphics/RectF;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchIsVisible:Z

.field private searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

.field searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

.field private searchWasVisibleBeforeTopics:Z

.field protected selectedDialogTopics:Ljava/util/Map;

.field protected selectedDialogs:Landroidx/collection/LongSparseArray;

.field private selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field protected sendingMessageObjects:Ljava/util/ArrayList;

.field private sendingText:[Ljava/lang/String;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

.field private sharesCountLayout:Landroid/widget/LinearLayout;

.field private shiftDp:I

.field private showSendersName:Z

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

.field private textPaint:Landroid/text/TextPaint;

.field public timestamp:I

.field public timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

.field public timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

.field public timestampLayout:Landroid/widget/LinearLayout;

.field public timestampTextView:Landroid/widget/TextView;

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private topBeforeSwitch:I

.field private topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private updateSearchAdapter:Z

.field private writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

.field private writeButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$1PcynxTGhKcpqzn9H9A8Iu69dXA(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$6(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1Xs8AVwPHiTXk_WHq3a7Mz2NQj4(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$2(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2yfJKqnhklW5mQrM1DngP5MHPY4(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtYlV-n8STVHdFD2MEAJTiuiQVM(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert;->lambda$sendInternal$28([Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQR6juL8vVPbdp96m-iW9db9C-g(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$copyLink$29(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K18GmKEGNdDd7YeT6keJPS6He1o(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSkCY0vekBB5MBBp51CduUFIB_M(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$23(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RULzyCWd2fKBeF5-C4-3IOjnhE8(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXUtYxeiL2rZ-oFB0uLvmxCJeLM(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQc3_Y8ruEkMfwrmSvvllDVI8rY(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$21(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$TpBursM50c8B_9sqpmbEr34glzk(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$selectDialog$19(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcUEnrw8VjgmveqQOaf-wKAQVAU(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$10(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOGEhZqp47NkJpRfaBR3ylvcyQM(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeNC3j1QxC8QouevqfADg9yxDgI(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$15(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Zzbsa1fs3eUuslLlbm4e_WohSis(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IEKWjm6G02cZyaPk6VThbga0qw(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$25(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$as_bWnnP3rv08oThGgAnVo9Js3k(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmyCcpxlhi4PUq-hpdEmLs_u_es(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ecX7uqh2NAahRSKkgn7yzUDSRcY(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$4(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$etzy6mcH4RontLOb-dXg92b3kH4(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->lambda$showPremiumBlockedToast$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$fjB7MCbXyEkXaotbVEYs7F_gBsg()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ShareAlert;->lambda$showPremiumBlockedToast$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$kf6LuJrVgMr8pGeB9htlraC4M5s(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$22(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lgPRALB6N2vPAD3sYJ9sE980nXw(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWJZ8gvozx1KIcw9vJ6X9l6UVw4(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$12(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pfHu0yhU3Efx0Nxsh60ItZENyi8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$13(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qxZv-vi_0eGCEg78h73K_QcsSzc(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSmvvHM2Fuywp2eJ0zyEvuT3NEQ(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$24(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rpNtHPYx_WbG6gR5_EsrMBzf7V0(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhOxmDtX3gI7WPzjyxl1tc66dzg(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uoM6fQ8RigSxk9ptr8f0kDTm7hk(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$20(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8

    .line 0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 14

    .line 0
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14

    .line 0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 34

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p10

    move-object/from16 v5, p13

    const/4 v12, 0x1

    invoke-direct {v0, v1, v12, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    new-array v7, v6, [Landroid/view/View;

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-array v7, v6, [Landroid/animation/AnimatorSet;

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v7, -0x1

    iput v7, v0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    const/4 v8, 0x0

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->rect:Landroid/graphics/RectF;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->paint:Landroid/graphics/Paint;

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v12}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    new-array v9, v6, [Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    const/4 v9, 0x4

    iput v9, v0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    iput-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    const v10, 0x7fffffff

    iput v10, v0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v5, p11

    iput-boolean v5, v0, Lorg/telegram/ui/Components/ShareAlert;->includeStory:Z

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    :cond_0
    move-object/from16 v4, p2

    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v4, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBarWithoutKeyboard:Z

    move/from16 v5, p9

    iput-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aput-object p7, v5, v8

    aput-object p8, v5, v12

    if-nez p7, :cond_1

    if-nez p8, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v12, :cond_1

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v11, v10, v8

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "?single"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v8

    :cond_1
    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aput-object p4, v5, v8

    aput-object p5, v5, v12

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-super {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_5

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isTodo()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v11, 0x3

    iput v11, v0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :goto_1
    iput v11, v0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne v11, v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/2addr v10, v12

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    iput-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v2, v3, v8, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v12

    if-eqz v2, :cond_7

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/high16 v14, 0x42100000    # 36.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/high16 v18, 0x41300000    # 11.0f

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v16

    move/from16 p6, v17

    move/from16 p7, v18

    move/from16 p8, v10

    move/from16 p9, v11

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x3a

    const/16 v11, 0x53

    invoke-static {v7, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v2, v13, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v2, v13, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v13, Lorg/telegram/ui/Components/ShareAlert$5;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v7, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v14, v1, v9}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$6;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$7;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v15, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;

    invoke-direct {v15}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v8, v8, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v13, 0x33

    invoke-static {v7, v7, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$9;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v0, v1, v10}, Lorg/telegram/ui/Components/ShareAlert$9;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;

    invoke-direct {v10}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v8, v8, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$10;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$11;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$11;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$12;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$12;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$13;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v0, v1, v10}, Lorg/telegram/ui/Components/ShareAlert$13;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;

    invoke-direct {v10}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v8, v8, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v10, v11, v9, v8, v6}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;-><init>(Landroid/content/Context;IILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$14;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ShareAlert$14;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$15;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$16;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$16;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v10, v12}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v10, 0xc

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    new-instance v10, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v1, v2, v12, v11}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v10, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v8, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v12, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/high16 v22, 0x42500000    # 52.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v10

    invoke-direct {v2, v7, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-boolean v10, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v10, v10, v12

    if-eqz v10, :cond_9

    const/high16 v10, 0x42de0000    # 111.0f

    goto :goto_4

    :cond_9
    const/high16 v10, 0x42680000    # 58.0f

    :goto_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v8

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v8

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v8

    invoke-virtual {v6, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-boolean v10, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v10, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v10, v10, v12

    if-eqz v10, :cond_a

    const/16 v10, 0x6f

    goto :goto_5

    :cond_a
    const/16 v10, 0x3a

    :goto_5
    invoke-static {v7, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    const/16 v10, 0x53

    invoke-direct {v2, v7, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v10, v6, v12

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v6, v6, v12

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v10, v10, v12

    invoke-virtual {v6, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/16 v15, 0x11

    const/high16 v13, 0x41600000    # 14.0f

    if-nez v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v8

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v12

    invoke-virtual {v2, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_14

    :cond_c
    :goto_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_11

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iput-boolean v8, v2, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/16 v14, 0x77

    invoke-static {v7, v7, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkBackground:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v9

    invoke-static {v10, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    const v7, 0x3c75c28f    # 0.015f

    const v9, 0x3f99999a    # 1.2f

    invoke-static {v6, v7, v9}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_share_linkText:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v30, 0x10

    const/16 v31, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x14

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x17

    const/16 v28, 0x10

    const/16 v29, 0x0

    invoke-static/range {v24 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-virtual {v6, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v9, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    const/4 v9, 0x4

    invoke-static {v7, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    const/16 v30, 0x7

    const/16 v24, -0x2

    const/16 v25, 0x1c

    const/16 v26, 0x0

    const/16 v27, 0x15

    const/16 v28, 0x0

    invoke-static/range {v24 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkCopyButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v9, :cond_d

    const v9, 0x3f28f5c3    # 0.66f

    :goto_7
    const/16 v10, 0x37

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_8

    :cond_d
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    goto :goto_7

    :goto_8
    invoke-static {v14, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz p12, :cond_e

    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    const/16 v10, 0xb

    :goto_9
    add-int/lit8 v10, v10, 0x35

    const/16 v9, 0x53

    const/4 v14, -0x1

    invoke-static {v14, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    if-lez v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;

    invoke-direct {v9, v0, v6}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v10, v13, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v8, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/messenger/R$drawable;->mini_stats_shares:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_share_icon:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v9, 0x0

    const/4 v11, -0x2

    const/16 v13, 0x10

    invoke-static {v11, v11, v9, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    int-to-long v9, v6

    const/16 v6, 0x2c

    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x2

    const/16 v28, 0x0

    const/16 v29, 0x10

    const/16 v30, 0x4

    const/16 v31, -0x1

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v32, 0x8

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    const/16 v32, 0xb

    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkContainer:Landroid/widget/LinearLayout;

    if-eqz p12, :cond_10

    const/16 v33, 0x0

    goto :goto_b

    :cond_10
    const/16 v33, 0xb

    :goto_b
    const/16 v26, -0x1

    const/16 v27, 0x2a

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x57

    const/16 v30, 0xb

    const/16 v31, 0xb

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_19

    const/16 v32, 0x8

    const/16 v33, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x2

    const/16 v28, 0x0

    const/16 v29, 0x10

    const/16 v30, 0x0

    const/16 v31, 0x5

    invoke-static/range {v26 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_14

    :cond_11
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_12

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    goto :goto_c

    :cond_12
    move v6, v3

    :goto_c
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v7, :cond_13

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listSelector:I

    goto :goto_d

    :cond_13
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    :goto_d
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_14

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    goto :goto_e

    :cond_14
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    :goto_e
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v2, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_15

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v6, v6, v12

    if-eqz v6, :cond_15

    sget v6, Lorg/telegram/messenger/R$string;->VoipGroupCopySpeakerLink:I

    :goto_f
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_15
    sget v6, Lorg/telegram/messenger/R$string;->CopyLink:I

    goto :goto_f

    :goto_10
    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v7, -0x1

    const/16 v8, 0x77

    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    const/16 v8, 0x30

    const/16 v9, 0x57

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    if-lez v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v6

    if-nez v6, :cond_19

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v7, :cond_16

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listSelector:I

    goto :goto_11

    :cond_16
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    :goto_11
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/high16 v31, -0x3f400000    # -6.0f

    const/16 v32, 0x0

    const/16 v26, -0x2

    const/high16 v27, 0x42400000    # 48.0f

    const/16 v28, 0x55

    const/high16 v29, 0x40c00000    # 6.0f

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->share_arrow:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v8, :cond_17

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    goto :goto_12

    :cond_17
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    :goto_12
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x1

    const/16 v28, 0x10

    const/16 v29, 0x14

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const-string v2, "%d"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v6, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_18

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    goto :goto_13

    :cond_18
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    :goto_13
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v31, 0x14

    const/16 v32, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x1

    const/16 v28, 0x10

    const/16 v29, 0x8

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_14
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz v7, :cond_1a

    const/high16 v32, 0x42400000    # 48.0f

    goto :goto_15

    :cond_1a
    const/16 v32, 0x0

    :goto_15
    const/16 v26, -0x1

    const/high16 v27, 0x42c80000    # 100.0f

    const/16 v28, 0x57

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer2:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 p2, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$17;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v2, v0, v1, v6}, Lorg/telegram/ui/Components/ShareAlert$17;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    invoke-virtual {v2, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v7, -0x1

    const/16 v8, 0x53

    const/4 v9, -0x2

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/16 v9, 0x57

    invoke-static {v8, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v3

    const v6, 0x3f389375    # 0.721f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_16

    :cond_1b
    const/4 v3, 0x0

    :goto_16
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$18;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 p2, v2

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, v3

    move-object/from16 p6, v9

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v6

    invoke-direct/range {p2 .. p9}, Lorg/telegram/ui/Components/ShareAlert$18;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/messenger/R$string;->ShareComment:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v7, -0x1

    const/16 v8, 0x33

    const/4 v9, -0x2

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$19;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$20;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$20;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    const/high16 v9, 0x42c80000    # 100.0f

    const/16 v10, 0x55

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 p2, v8

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v13

    move/from16 p7, v6

    move/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$21;

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_send:I

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v0, v1, v3, v6}, Lorg/telegram/ui/Components/ShareAlert$21;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCircleSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    const/4 v6, 0x0

    move/from16 p7, v6

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p12, :cond_1f

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    new-instance v2, Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v6, v8, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v3, v4, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v4, 0x18

    invoke-direct {v2, v1, v4, v3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v3, v4, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/16 v8, 0x1a

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 p2, v7

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p7, v4

    move/from16 p8, v6

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->VideoShareAddTimestamp:I

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x10

    const/16 v9, 0x9

    move/from16 p2, v6

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v4

    move/from16 p8, v5

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    const v3, 0x3ccccccd    # 0.025f

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    invoke-static {v4, v4, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1e

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_1d

    const v3, 0x3f28f5c3    # 0.66f

    :goto_17
    const/16 v4, 0x37

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_18

    :cond_1d
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    goto :goto_17

    :goto_18
    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x53

    const/16 v5, 0x30

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->loadDialogs(Lorg/telegram/messenger/AccountInstance;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_20
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$22;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$22;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v12, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$10602(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[IF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->includeStory:Z

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13102(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->showPremiumBlockedToast(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/BlurredFrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/BlurredFrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    return p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    return-void
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static synthetic access$8502(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return p1
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9102(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Components/ShareAlert;Landroidx/collection/LongSparseArray;)Landroidx/collection/LongSparseArray;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method private checkCurrentList(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3f7ae148    # 0.98f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_8

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    :goto_2
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method private collapseTopics()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v5

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->shareAlertDebugTopicsSlowMotion:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_1

    :cond_7
    const/high16 v4, 0x44480000    # 800.0f

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[I)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private copyLink(Landroid/content/Context;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getLink()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "label"

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    :goto_0
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didCopy()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    const-string v1, "/c/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;-><init>(Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->showBulletin(Landroidx/arch/core/util/Function;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;
    .locals 13

    move-object v0, p1

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private getCurrentTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    sub-int/2addr v3, v1

    return v3

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private getLink()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->access$11100(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t"

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->formatTimestamp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    return-object v0
.end method

.method private getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_1
    return-object v0
.end method

.method private invalidateTopicsAnimation(Landroid/view/View;[IF)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v1, v1, p3

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    sub-float v1, v2, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v1

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    mul-float v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    mul-float v6, v6, v7

    mul-float v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    if-eq v5, p1, :cond_0

    invoke-static {p3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v3, p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v1, p3, Lorg/telegram/ui/Cells/ShareTopicCell;

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    sub-float v1, v2, p2

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v10

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$collapseTopics$20(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p4, p3

    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method private synthetic lambda$collapseTopics$21(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->access$9602(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return-void
.end method

.method private static synthetic lambda$copyLink$29(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    new-instance v0, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    new-instance v0, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$new$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onSendLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLinkTextView()V

    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItemTopic(I)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onTopicCellClick(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$4(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$5(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private static synthetic lambda$new$6(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$22(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$23(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$24(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$25(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$26(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$27(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$selectDialog$19(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget p1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {p2, p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$sendInternal$28([Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v11

    if-nez v1, :cond_0

    move-object/from16 v26, v7

    goto :goto_1

    :cond_0
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v26, v12

    :goto_1
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v12, v15, v5

    if-lez v12, :cond_1

    const/4 v10, 0x1

    :cond_1
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v15

    move-wide v5, v15

    :cond_2
    if-eqz v12, :cond_3

    if-nez v11, :cond_3

    new-instance v11, Lorg/telegram/messenger/MessageObject;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v11, v15, v12, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    goto :goto_2

    :cond_3
    move-object v11, v3

    :goto_2
    if-eqz v11, :cond_4

    iput-boolean v4, v11, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v12

    if-lez v12, :cond_7

    aget-object v12, p1, v8

    if-nez v12, :cond_5

    move-object v12, v3

    goto :goto_3

    :cond_5
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-wide/from16 v29, v13

    move-object v15, v11

    move-object/from16 v16, v11

    move-object/from16 v19, p2

    move/from16 v22, p3

    invoke-static/range {v12 .. v25}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v12

    if-nez v26, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :goto_4
    iput-wide v13, v12, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iput-wide v5, v12, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    iget v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_5

    :cond_7
    move-wide/from16 v29, v13

    :goto_5
    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/lit8 v16, v14, 0x1

    if-nez v26, :cond_8

    const-wide/16 v22, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v22, v14

    :goto_6
    const/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-wide/from16 v14, v29

    move/from16 v18, p3

    move-object/from16 v20, v11

    move/from16 v21, p4

    move-wide/from16 v24, v5

    invoke-virtual/range {v12 .. v26}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I

    move-result v5

    if-eqz v5, :cond_9

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ne v6, v4, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v6, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_0

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v2, :cond_c

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ne v5, v4, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_e
    xor-int/2addr v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    goto/16 :goto_1c

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v2, :cond_10

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->access$11100(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v2

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9}, Landroidx/collection/LongSparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_25

    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v14

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v9

    if-nez v1, :cond_11

    move-object/from16 v24, v7

    goto :goto_b

    :cond_11
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v24, v10

    :goto_b
    if-eqz v24, :cond_12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v16, v10, v12

    if-lez v16, :cond_12

    const/4 v6, 0x1

    :cond_12
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v11, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v10, :cond_13

    if-eqz v9, :cond_13

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    move-wide v11, v12

    goto :goto_c

    :cond_13
    const-wide/16 v11, 0x0

    :goto_c
    if-eqz v10, :cond_14

    if-nez v9, :cond_14

    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v9, v13, v10, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    goto :goto_d

    :cond_14
    move-object v9, v3

    :goto_d
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v10, :cond_17

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_16

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v10

    if-lez v10, :cond_16

    aget-object v10, p1, v8

    if-nez v10, :cond_15

    move-object v10, v3

    goto :goto_e

    :cond_15
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_e
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-wide v3, v11

    move-wide v11, v14

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, p2

    :goto_f
    move/from16 v20, p3

    invoke-static/range {v10 .. v23}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v9

    goto/16 :goto_11

    :cond_16
    move-wide v3, v11

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v10, v10, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide v11, v14

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    goto :goto_f

    :cond_17
    move-wide v3, v11

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_18

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v10

    if-lez v10, :cond_18

    aget-object v10, p1, v8

    if-eqz v10, :cond_18

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v13

    aget-object v10, p1, v8

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    move-wide v11, v14

    move-object v8, v13

    move-object/from16 v13, v16

    move-wide/from16 v31, v14

    move-object v14, v9

    move-object/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move/from16 v20, p3

    move/from16 v21, v29

    invoke-static/range {v10 .. v23}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_10

    :cond_18
    move-wide/from16 v31, v14

    :goto_10
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-wide/from16 v11, v31

    move-object v13, v9

    move-object v14, v9

    move/from16 v20, p3

    invoke-static/range {v10 .. v23}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v9

    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v8, v9, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :goto_11
    if-nez v24, :cond_19

    const-wide/16 v12, 0x0

    goto :goto_12

    :cond_19
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_12
    iput-wide v12, v9, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iput-wide v3, v9, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_13
    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v8

    if-nez v1, :cond_1b

    move-object/from16 v22, v7

    goto :goto_14

    :cond_1b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v22, v9

    :goto_14
    if-eqz v22, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v23, 0x0

    cmp-long v11, v9, v23

    if-lez v11, :cond_1d

    const/4 v6, 0x1

    goto :goto_15

    :cond_1c
    const-wide/16 v23, 0x0

    :cond_1d
    :goto_15
    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v9, :cond_1e

    if-eqz v8, :cond_1e

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    move-wide v14, v12

    goto :goto_16

    :cond_1e
    move-wide/from16 v14, v23

    :goto_16
    if-eqz v9, :cond_1f

    if-nez v8, :cond_1f

    new-instance v8, Lorg/telegram/messenger/MessageObject;

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    invoke-direct {v8, v10, v9, v11, v11}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v27, v8

    goto :goto_17

    :cond_1f
    const/4 v11, 0x0

    const/16 v27, 0x0

    :goto_17
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_22

    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v8

    if-lez v8, :cond_22

    aget-object v8, p1, v11

    if-nez v8, :cond_20

    const/4 v8, 0x0

    goto :goto_18

    :cond_20
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_18
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v9, v4

    move-object/from16 v11, v27

    move-object/from16 v12, v27

    move/from16 p4, v6

    move-object/from16 v28, v7

    move-wide v6, v14

    move/from16 v14, v16

    move-object/from16 v15, p2

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, p3

    invoke-static/range {v8 .. v21}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v8

    if-nez v22, :cond_21

    move-wide/from16 v12, v23

    goto :goto_19

    :cond_21
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_19
    iput-wide v12, v8, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iput-wide v6, v8, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1a

    :cond_22
    move/from16 p4, v6

    move-object/from16 v28, v7

    move-wide v6, v14

    :goto_1a
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v8, v8, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-wide v9, v4

    move-object/from16 v11, v27

    move-object/from16 v12, v27

    move/from16 v18, p3

    invoke-static/range {v8 .. v21}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v4

    if-nez v22, :cond_23

    move-wide/from16 v12, v23

    goto :goto_1b

    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_1b
    iput-wide v12, v4, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iput-wide v6, v4, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->monoForumPeer:J

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, p4

    move-object/from16 v7, v28

    goto/16 :goto_13

    :cond_24
    const/4 v6, 0x0

    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v3, 0x1

    xor-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    :cond_26
    :goto_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didShare()V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showPremiumBlockedToast$17()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v3, "noncontacts"

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$18()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private onSendLongClick(Landroid/view/View;)Z
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/16 v4, 0x30

    const/4 v5, -0x1

    if-eqz v3, :cond_4

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$24;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ShareAlert$24;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v7, :cond_2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    :cond_2
    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    sget v7, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x1

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v8, :cond_3

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    :cond_3
    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    sget v8, Lorg/telegram/messenger/R$string;->HideSendersName:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/2addr v8, v2

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    new-instance v8, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda21;

    invoke-direct {v8, p0, v6, v7}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda22;

    invoke-direct {v8, p0, v6, v7}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    const/4 v11, 0x0

    const/high16 v12, -0x3f000000    # -8.0f

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    :cond_5
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$25;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ShareAlert$25;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda23;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v2, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v7, :cond_6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/high16 v7, 0x43440000    # 196.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda24;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v8, v2, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v8, :cond_7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    :cond_7
    sget v8, Lorg/telegram/messenger/R$string;->SendMessage:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v6, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    const/4 v4, -0x2

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {v3, v0, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->removeScheduledOrNoSoundHint()V

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-array v3, v4, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x42680000    # 58.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_8

    aget v5, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_8
    aget v5, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    aget v1, v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x33

    invoke-virtual {v6, p1, v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, v0, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method private onTopicCellClick(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 9

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10900(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10900(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v5, v6, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v5

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    invoke-virtual {v0, p1, v2, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZ)V

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    :cond_6
    :goto_1
    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, p1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$26;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$26;-><init>(Lorg/telegram/ui/Components/ShareAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter$MyStoryDialog;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onShareStory(Landroid/view/View;)V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    instance-of v2, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->showPremiumBlockedToast(Landroid/view/View;J)V

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_b

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_e

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v6, v6

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(JI)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eq v6, v5, :cond_5

    if-ne v6, v4, :cond_e

    :cond_5
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    const/16 v0, 0xa

    if-ne p2, v4, :cond_7

    invoke-static {v2, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedTodoAll:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedTodo:I

    goto :goto_0

    :cond_7
    if-ne p2, v5, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    if-eqz p2, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->PublicPollCantForward:I

    goto :goto_0

    :cond_8
    invoke-static {v2, v0}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_9

    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPollsAll:I

    goto :goto_0

    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPolls:I

    goto :goto_0

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCantSendMessage:I

    goto :goto_0

    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_b
    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eqz v2, :cond_e

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne p2, v4, :cond_c

    sget p2, Lorg/telegram/messenger/R$string;->TodoCantForwardSecretChat:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->PollCantForwardSecretChat:I

    goto :goto_2

    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->InvoiceCantForwardSecretChat:I

    goto :goto_2

    :goto_3
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_f

    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    goto :goto_4

    :cond_f
    instance-of p2, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz p2, :cond_10

    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_10
    :goto_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    goto/16 :goto_8

    :cond_11
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$23;

    invoke-direct {v3, p0, p2, v2, p1}, Lorg/telegram/ui/Components/ShareAlert$23;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$Dialog;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v2, v3, p2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-virtual {p1, v5, v6}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_13

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-interface {v3, v4, p1, v0}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    goto :goto_5

    :cond_13
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_5
    return-void

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v3, v4, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    instance-of v2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v2, :cond_15

    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    goto :goto_6

    :cond_15
    instance-of v2, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v2, :cond_16

    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_16
    :goto_6
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10900(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10900(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v2, v3, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_17
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long p2, v4, v2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$9000(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_18
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->hideKeyboard()V

    :cond_19
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1a
    :goto_9
    return-void
.end method

.method private showCommentTextView(Z)Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    const/4 v4, 0x4

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    :goto_4
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x1

    :goto_5
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_c

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz v3, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-nez v7, :cond_e

    if-eqz p1, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v8, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_f

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const v9, 0x3e4ccccd    # 0.2f

    :goto_8
    new-array v10, v2, [F

    aput v9, v10, v1

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_10

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_10
    new-array v9, v2, [F

    aput v8, v9, v1

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    :goto_9
    new-array v8, v2, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_14

    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, v2

    if-eqz p1, :cond_13

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    :goto_a
    new-array v7, v2, [F

    aput v6, v7, v1

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz v3, :cond_17

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_16

    if-eqz p1, :cond_16

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_15

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_b

    :cond_15
    const/high16 v5, 0x41800000    # 16.0f

    :goto_b
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    :cond_16
    new-array v6, v2, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$27;-><init>(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return v2
.end method

.method private showPremiumBlockedToast(Landroid/view/View;J)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shiftDp:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-ltz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateLayout()V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    const v6, 0x7fffffff

    const/4 v7, 0x1

    if-ltz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_3

    :cond_6
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v3, v5

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_9

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    if-lez v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-ltz v5, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_6

    :cond_b
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v5, v4

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v3, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v0, v3, :cond_d

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    int-to-float v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_d
    return-void
.end method

.method private updateLinkTextView()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_0
    return-void
.end method

.method public getContainerViewHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 0

    return-void
.end method

.method protected onShareStory(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected sendInternal(Z)V
    .locals 16

    move-object/from16 v6, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v8, v6, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-static {v5, v7, v3, v4, v8}, Lorg/telegram/ui/Components/AlertsCreator;->checkSlowMode(Landroid/content/Context;IJZ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, v6, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/CharSequence;

    aput-object v2, v3, v1

    iget v2, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v2, v6, Lorg/telegram/ui/Components/ShareAlert;->timestampCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v6, Lorg/telegram/ui/Components/ShareAlert;->timestamp:I

    move v5, v2

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    const/4 v5, -0x1

    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v6, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_3
    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_8

    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget v12, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v12

    cmp-long v14, v12, v8

    if-gtz v14, :cond_4

    iget v12, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v12

    :cond_4
    iget-object v14, v6, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    iget-object v14, v6, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v14

    if-lez v14, :cond_5

    cmp-long v14, v12, v8

    if-lez v14, :cond_5

    add-int/2addr v2, v0

    :cond_5
    cmp-long v14, v12, v8

    if-lez v14, :cond_6

    add-int/2addr v2, v0

    :cond_6
    cmp-long v14, v12, v8

    if-lez v14, :cond_7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/2addr v1, v0

    goto :goto_3

    :cond_8
    move v10, v2

    goto/16 :goto_7

    :cond_9
    iget-object v2, v6, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->access$11100(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v2

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v10, :cond_f

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_5
    iget-object v11, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_15

    iget-object v11, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    iget v13, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v13

    cmp-long v15, v13, v8

    if-gtz v15, :cond_b

    iget v13, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v13

    :cond_b
    iget-object v15, v6, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v15, :cond_c

    iget-object v15, v6, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_c

    iget-object v15, v6, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v15

    if-lez v15, :cond_c

    aget-object v15, v3, v1

    if-eqz v15, :cond_c

    cmp-long v15, v13, v8

    if-lez v15, :cond_c

    add-int/2addr v10, v0

    :cond_c
    cmp-long v15, v13, v8

    if-lez v15, :cond_d

    add-int/2addr v10, v0

    :cond_d
    cmp-long v15, v13, v8

    if-lez v15, :cond_e

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/2addr v2, v0

    goto :goto_5

    :cond_f
    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v2, v10, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_6
    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_8

    iget-object v10, v6, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget v12, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v12

    cmp-long v14, v12, v8

    if-gtz v14, :cond_10

    iget v12, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v12

    :cond_10
    iget-object v14, v6, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_11

    iget-object v14, v6, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v14

    if-lez v14, :cond_11

    cmp-long v14, v12, v8

    if-lez v14, :cond_11

    add-int/2addr v2, v0

    :cond_11
    cmp-long v14, v12, v8

    if-lez v14, :cond_12

    add-int/2addr v2, v0

    :cond_12
    cmp-long v14, v12, v8

    if-lez v14, :cond_13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/2addr v1, v0

    goto :goto_6

    :cond_14
    const/4 v10, 0x0

    :cond_15
    :goto_7
    iget v8, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZI)V

    invoke-static {v8, v7, v10, v9}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessagesMultiConfirmation(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    return-void
.end method

.method public setStoryToShare(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public updateBottomOverlay()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPaddingShown()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    sub-float/2addr v2, v0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardSize2:I

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v0, v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->keyboardT:F

    sub-float/2addr v2, v3

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eqz v0, :cond_4

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    neg-float v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateSelectedCount(I)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Lorg/telegram/ui/Components/BlurredFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-gtz v12, :cond_3

    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v10

    :cond_3
    add-long/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCount(IZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v3, v6, v7, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JIZ)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v0, 0x42a80000    # 84.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButton:Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    return-void
.end method

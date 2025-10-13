.class public Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$SeekBarCell;
    }
.end annotation


# instance fields
.field private bigLayout:Landroid/widget/LinearLayout;

.field private debugItems:Ljava/util/List;

.field private fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private floatingButtonBackground:Landroid/graphics/drawable/Drawable;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private inLongPress:Z

.field private isBigMenuShown:Z

.field private isFromFling:Z

.field private isScrollDisallowed:Z

.field private isScrolling:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private onLongPress:Ljava/lang/Runnable;

.field private titleView:Landroid/widget/TextView;

.field private touchSlop:I

.field private wasStatusBar:I


# direct methods
.method public static synthetic $r8$lambda$4lLmCAuY2AGWko_NYgixZ-N2yNo(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8_MUVG-bGGL4kMp8iACSoBLL1NU()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$JpJwf8d8MTGlTzKgEbSsfmJsenQ(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$OCcpbABQyUyck_lIiFgTyuoRqgE()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$RFfkdGrZM-k0GhKdfcBbLoOZwYY(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZtBEtev5NBlR5ygPi3M1rhhNPu4(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$aN136_GmauPzzC9mFgECt48TEIY(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showBigMenu$3(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTbDaB7P0CsaBMZ_IOEAR33d8qM(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showBigMenu$2(FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjrwAxTvW14AdBNf7CXQKHgPl1s(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$showFab$10(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$waPbn-BzI0OtmmOTmp3ON72RrIQ(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$7(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrjpbsIFVoaFpdgzm_m7GVf7a88(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->lambda$getBuiltInDebugItems$5()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->onLongPress:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$1;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, "floating_debug"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->touchSlop:I

    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;Landroidx/core/view/GestureDetectorCompat;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->device_phone_android:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x38

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41980000    # 19.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$3;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v5, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->updateDrawables()V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->touchSlop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrolling:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrolling:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isFromFling:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isFromFling:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->onLongPress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrollDisallowed:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isScrollDisallowed:Z

    return p1
.end method

.method private clampX(Landroid/util/DisplayMetrics;F)F
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p2, v0, p1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private clampY(Landroid/util/DisplayMetrics;F)F
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p2, v0, p1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private getBuiltInDebugItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    const-string v2, "Theme"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "Draw action bar shadow"

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    const-string v3, "Show blur settings"

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget v2, Lorg/telegram/messenger/R$string;->DebugGeneral:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuDisableWebViewDebug:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuEnableWebViewDebug:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Switch to day theme"

    goto :goto_1

    :cond_1
    const-string v2, "Switch to dark theme"

    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static synthetic lambda$getBuiltInDebugItems$4()V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveDebugConfig()V

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroid/view/View;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$getBuiltInDebugItems$5()V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/BlurSettingsBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->showBigMenu(Z)V

    return-void
.end method

.method private synthetic lambda$getBuiltInDebugItems$6()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$getBuiltInDebugItems$7(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 p0, 0x0

    const/4 v4, 0x2

    aput-object p0, v3, v4

    const/4 p0, 0x3

    aput-object v2, v3, p0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getBuiltInDebugItems$8()V
    .locals 6

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v2, "Blue"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    const-string v3, "lastDarkTheme"

    const-string v4, "Dark Blue"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v4

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "Night"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_6
    move-object v4, v0

    goto :goto_0

    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_3
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$getBuiltInDebugItems$9()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->sendLogs(Landroid/app/Activity;Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->inLongPress:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;->action:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->showBigMenu(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showBigMenu$2(FFLandroid/view/Window;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p5, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/high16 p6, 0x41000000    # 8.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    sub-float p6, p2, p6

    invoke-static {p6, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p6

    invoke-virtual {p4, p6}, Landroid/view/View;->setTranslationY(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p6}, Landroid/view/View;->getTranslationX()F

    move-result p6

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    invoke-virtual {p4, p6}, Landroid/view/View;->setPivotX(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p6}, Landroid/view/View;->getTranslationY()F

    move-result p6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p6, v1

    invoke-virtual {p4, p6}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    const/high16 p6, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, p6, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, p6, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {p1, v1, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p4, v0

    invoke-static {p2, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sub-float/2addr p6, p5

    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->wasStatusBar:I

    const/high16 p2, 0x7a000000

    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {p3, p1}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/Window;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showBigMenu$3(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showFab$10(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateDrawables()V
    .locals 6

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v1, v5, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->updateDrawables()V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    if-ne p2, v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x42f40000    # 122.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "x"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "y"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x4f000000

    cmpl-float v6, v0, v2

    if-eqz v6, :cond_1

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x31000000

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v3, v5}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3, v5}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result v1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44228000    # 650.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->showBigMenu(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/high16 v1, 0x4f000000

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampX(Landroid/util/DisplayMetrics;F)F

    move-result v1

    goto :goto_1

    :cond_0
    const/high16 v1, -0x31000000

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->clampY(Landroid/util/DisplayMetrics;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    return p1
.end method

.method public saveConfig()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabXSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->fabYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showBigMenu(Z)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->isBigMenuShown:Z

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->bigLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getRightActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->debugItems:Ljava/util/List;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->getBuiltInDebugItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline20;->m(Landroid/view/Window;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->wasStatusBar:I

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v5, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_6

    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const/high16 v7, 0x447a0000    # 1000.0f

    :goto_0
    invoke-direct {v4, v7}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4, v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v7, 0x44610000    # 900.0f

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    if-eqz p1, :cond_7

    const/high16 v5, 0x447a0000    # 1000.0f

    :cond_7
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, v2, v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFLandroid/view/Window;)V

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1, v2, p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;FFZ)V

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public showFab()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x443b8000    # 750.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

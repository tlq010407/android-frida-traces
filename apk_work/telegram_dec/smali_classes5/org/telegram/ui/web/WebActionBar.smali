.class public abstract Lorg/telegram/ui/web/WebActionBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebActionBar$Title;,
        Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;
    }
.end annotation


# instance fields
.field private addressAnimator:Landroid/animation/ValueAnimator;

.field public addressBackgroundColor:I

.field public final addressBackgroundPaint:Landroid/graphics/Paint;

.field public final addressContainer:Landroid/widget/FrameLayout;

.field public final addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public final addressRoundPaint:Landroid/graphics/Paint;

.field public addressTextColor:I

.field public addressing:Z

.field public addressingProgress:F

.field public final backButton:Landroid/widget/ImageView;

.field public final backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field public final backButtonSelector:Landroid/graphics/drawable/Drawable;

.field private backButtonShown:Z

.field private backgroundColor:I

.field public final backgroundPaint:[Landroid/graphics/Paint;

.field public final clearButton:Landroid/widget/ImageView;

.field public final clearButtonSelector:Landroid/graphics/drawable/Drawable;

.field public final clip:Lorg/telegram/ui/GradientClip;

.field private colorAnimator:Landroid/animation/ValueAnimator;

.field public colorSet:[Z

.field public drawShadow:Z

.field public final forwardButton:Landroid/widget/ImageView;

.field public final forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

.field public final forwardButtonSelector:Landroid/graphics/drawable/Drawable;

.field private fromBackgroundColor:I

.field public hasForward:Z

.field public hasLoaded:Z

.field public height:I

.field public iconColor:I

.field public isMenuShown:Z

.field public isTonsite:Z

.field public final leftmenu:Landroid/widget/LinearLayout;

.field public final lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field public longClicked:Z

.field private longPressRunnable:Ljava/lang/Runnable;

.field public menuBackgroundColor:I

.field public final menuButton:Landroid/widget/ImageView;

.field public final menuButtonSelector:Landroid/graphics/drawable/Drawable;

.field public menuIconColor:I

.field private menuListener:Lorg/telegram/messenger/Utilities$Callback;

.field public menuTextColor:I

.field private menuType:I

.field private occupyStatusBar:Z

.field private pressTime:J

.field private pressX:F

.field private pressY:F

.field public final progress:[F

.field public final progressBackgroundPaint:[Landroid/graphics/Paint;

.field public final rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final rightmenu:Landroid/widget/LinearLayout;

.field private rippleColor:I

.field public scale:F

.field public final scrimPaint:Landroid/graphics/Paint;

.field private searchAnimator:Landroid/animation/ValueAnimator;

.field public final searchContainer:Landroid/widget/FrameLayout;

.field public final searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchEngineIndex:I

.field public searching:Z

.field public searchingProgress:F

.field public final shadowPaint:[Landroid/graphics/Paint;

.field public textColor:I

.field public final titlePaint:Landroid/text/TextPaint;

.field public titleProgress:F

.field public final titles:[Lorg/telegram/ui/web/WebActionBar$Title;

.field private urlCallback:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$-zKzXttVJ6e13AUVkJ7gntuI9R8(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/web/WebInstantView$Loader;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/web/WebInstantView$Loader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0dMGs8Uj8YyJXH6zeUFugk66cTs(Lorg/telegram/ui/web/WebActionBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$6(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9ZMBVSSnV0qdTn-Zp4VsZXM3ae8(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$JBJreulGZY_Yh0VHBMwDddTFJCw(Lorg/telegram/ui/web/WebActionBar;Ljava/lang/Integer;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$1(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LHGz88t7wFeW1WLsnjl3Lo-w6Zo(Lorg/telegram/ui/web/WebActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$showAddress$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJuK8i145GNiVQ1lo4htPCMcK80(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebActionBar;->showAddressKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$WByNF-thCusmydDaujgGSYZiADw(Lorg/telegram/ui/web/WebActionBar;IFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebActionBar;->lambda$setColors$8(IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_K2b75F_vT_Ku1B4IBVG_IUopus(Lorg/telegram/ui/web/WebActionBar;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJBlOZquU94iRBQDL5KJpAMkqCY(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$m5y5XC4njl1cz10J7i9Vjec6C7w(Lorg/telegram/ui/web/WebActionBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pS-o3FG_nRnjI6gxW-NO_CKgLMc(Lorg/telegram/ui/web/WebActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$showSearch$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rctOBFtWnR-j4Rh27suVVcsrwe0(Lorg/telegram/ui/web/WebActionBar;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVCq8vaAeb94nsYFjcArsEOpH1g(Lorg/telegram/ui/web/WebActionBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebActionBar;->lambda$new$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/telegram/ui/web/WebActionBar$Title;

    iput-object v4, v0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    new-array v5, v3, [F

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->progress:[F

    const/4 v5, 0x3

    new-array v5, v5, [Z

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->colorSet:[Z

    new-array v5, v3, [Landroid/graphics/Paint;

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    new-array v5, v3, [Landroid/graphics/Paint;

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    new-array v5, v3, [Landroid/graphics/Paint;

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->scrimPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->titlePaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/telegram/ui/web/WebActionBar;->isMenuShown:Z

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v0, Lorg/telegram/ui/web/WebActionBar;->height:I

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    iput v4, v0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    iput v4, v0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    const/4 v9, -0x1

    iput v9, v0, Lorg/telegram/ui/web/WebActionBar;->menuType:I

    new-instance v10, Lorg/telegram/ui/GradientClip;

    invoke-direct {v10}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v10, v0, Lorg/telegram/ui/web/WebActionBar;->clip:Lorg/telegram/ui/GradientClip;

    new-instance v10, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    iput-object v10, v0, Lorg/telegram/ui/web/WebActionBar;->longPressRunnable:Ljava/lang/Runnable;

    iput-boolean v7, v0, Lorg/telegram/ui/web/WebActionBar;->longClicked:Z

    iput-object v2, v0, Lorg/telegram/ui/web/WebActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v10, 0x4192a3d7    # 18.33f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v10, v0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v6}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v11, v10, v5

    iget-object v10, v0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v6}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v11, v10, v5

    iget-object v10, v0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v6}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v11, v10, v5

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->searchContainer:Landroid/widget/FrameLayout;

    const/16 v10, 0x38

    const/16 v11, 0x57

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/web/WebActionBar;->addressContainer:Landroid/widget/FrameLayout;

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lorg/telegram/ui/web/WebActionBar$1;

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/web/WebActionBar$1;-><init>(Lorg/telegram/ui/web/WebActionBar;Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x53

    const/4 v15, -0x2

    invoke-static {v15, v10, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/web/WebActionBar;->backButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v11, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v11, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v11, v0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v9, 0x43480000    # 200.0f

    invoke-virtual {v11, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    invoke-virtual {v11, v8, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x40ffffff    # 7.9999995f

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/web/WebActionBar;->backButtonSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0x36

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/web/WebActionBar$2;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/web/WebActionBar$2;-><init>(Lorg/telegram/ui/web/WebActionBar;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x55

    invoke-static {v15, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v15, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    invoke-direct {v15, v0}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    iput-object v15, v0, Lorg/telegram/ui/web/WebActionBar;->forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v7}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->setState(Z)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v0, Lorg/telegram/ui/web/WebActionBar;->forwardButtonSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v15, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v7, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v13, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v14, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/ui/web/WebActionBar;->menuButtonSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v13, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v15, "AccDescrMoreOptions"

    invoke-static {v15, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/web/WebActionBar$3;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/web/WebActionBar$3;-><init>(Lorg/telegram/ui/web/WebActionBar;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v11, v6, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v14, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/16 v15, 0x70

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    const/high16 v16, 0x42680000    # 58.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v16, 0x42e00000    # 112.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v11, v9, v7, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    const v9, 0x3f28f5c3    # 0.66f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v11, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    const/high16 v10, 0x80000

    or-int/2addr v9, v10

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setInputType(I)V

    const v9, 0x2000003

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v9, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v9, Lorg/telegram/ui/web/WebActionBar$4;

    invoke-direct {v9, v0}, Lorg/telegram/ui/web/WebActionBar$4;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v9, 0x77

    const/4 v8, -0x1

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/web/WebActionBar$5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/web/WebActionBar$5;-><init>(Lorg/telegram/ui/web/WebActionBar;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    const v8, 0x417a8f5c    # 15.66f

    invoke-virtual {v5, v6, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v8, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    iput v8, v0, Lorg/telegram/ui/web/WebActionBar;->searchEngineIndex:I

    sget v8, Lorg/telegram/messenger/R$string;->AddressPlaceholder:I

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v9, v11, v7

    invoke-static {v8, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v8

    or-int/2addr v8, v10

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setInputType(I)V

    const v8, 0x2000002

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v8, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x77

    const/high16 v20, 0x42400000    # 48.0f

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v12, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/web/WebActionBar;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/web/WebActionBar;->clearButtonSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    new-instance v3, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x38

    const/16 v8, 0x36

    const/16 v9, 0x55

    invoke-static {v8, v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v1, 0x2

    const/4 v4, -0x1

    const/16 v5, 0x57

    invoke-static {v4, v1, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    new-instance v3, Lorg/telegram/ui/web/WebActionBar$Title;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebActionBar$Title;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    aput-object v3, v1, v7

    iget-object v1, v0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    new-instance v3, Lorg/telegram/ui/web/WebActionBar$Title;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebActionBar$Title;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    aput-object v3, v1, v6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lorg/telegram/ui/web/WebActionBar;->setColors(IZ)V

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/WebActionBar;->setMenuColors(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->menuListener:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/web/WebActionBar;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->longClicked:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/web/WebInstantView$Loader;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->isMenuShown:Z

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuTextColor:I

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->menuIconColor:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->setColors(II)Lorg/telegram/ui/Components/ItemOptions;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuBackgroundColor:I

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->menuTextColor:I

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setSelectorColor(I)Lorg/telegram/ui/Components/ItemOptions;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuBackgroundColor:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    const v2, -0xf0f10

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setGapBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_1

    :cond_1
    const v2, -0xe0e0e1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    const v2, -0xededee

    goto :goto_0

    :goto_1
    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuType:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v2, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v2, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    sget v2, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_4

    :cond_2
    if-ne v2, v6, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->isTonsite:Z

    if-nez v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v7, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v7, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->hasForward:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrow_forward:I

    sget v5, Lorg/telegram/messenger/R$string;->WebForward:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v5, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->getInstantViewLoader()Lorg/telegram/ui/web/WebInstantView$Loader;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/web/WebInstantView$Loader;->isDone()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v5

    if-eqz v5, :cond_8

    :cond_5
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_instant_view:I

    sget v7, Lorg/telegram/messenger/R$string;->OpenLocalInstantView:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    invoke-virtual {v2}, Lorg/telegram/ui/web/WebInstantView$Loader;->getWebPage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda10;

    invoke-direct {v1, v5, v2}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/web/WebInstantView$Loader;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/web/WebInstantView$Loader;->listen(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_8
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    sget v2, Lorg/telegram/messenger/R$string;->Refresh:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_saved:I

    sget v2, Lorg/telegram/messenger/R$string;->WebBookmark:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistory()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_recent:I

    sget v2, Lorg/telegram/messenger/R$string;->WebHistory:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_9
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_browser_bookmarks:I

    sget v2, Lorg/telegram/messenger/R$string;->WebBookmarks:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    goto/16 :goto_2

    :cond_a
    :goto_4
    new-instance p1, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    iput-boolean v6, p0, Lorg/telegram/ui/web/WebActionBar;->isMenuShown:Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$6(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    const/4 p3, 0x0

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->urlCallback:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    :cond_1
    return p3
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setColors$8(IFFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->fromBackgroundColor:I

    invoke-static {v0, p1, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebActionBar;->setColors(IFZ)V

    return-void
.end method

.method private synthetic lambda$showAddress$10(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->onAddressingProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showSearch$9(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showAddressKeyboard()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->topPadding()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget-boolean v5, p0, Lorg/telegram/ui/web/WebActionBar;->drawShadow:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/web/WebActionBar;->drawBackground(Landroid/graphics/Canvas;FFFZ)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->topPadding()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->topPadding()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    add-int/2addr v1, v2

    int-to-float v8, v1

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    mul-float v1, v1, v4

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    mul-float v5, v5, v9

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v5

    mul-float v4, v4, v5

    sub-float/2addr v1, v4

    add-float v4, v0, v1

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sub-float v5, v6, v0

    sub-float/2addr v5, v1

    sub-float v1, v8, v7

    iget v10, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    sub-float v10, v3, v10

    iget v11, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    sub-float v11, v3, v11

    mul-float v10, v10, v11

    invoke-virtual {v4, p1, v5, v1, v10}, Lorg/telegram/ui/web/WebActionBar$Title;->draw(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    const/4 v10, 0x0

    cmpl-float v1, v1, v10

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    mul-float v1, v1, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v10, v10, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x3ec00000    # -12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    sub-float v4, v3, v4

    mul-float v1, v1, v4

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    sub-float v1, v3, v1

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    sub-float v2, v8, v7

    div-float v4, v2, v9

    invoke-virtual {p1, v1, v1, v10, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    sub-float v0, v6, v0

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    iget v5, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    sub-float v5, v3, v5

    mul-float v4, v4, v5

    iget v5, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    sub-float/2addr v3, v5

    mul-float v4, v4, v3

    invoke-virtual {v1, p1, v0, v2, v4}, Lorg/telegram/ui/web/WebActionBar$Title;->draw(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v1, v11

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->topPadding()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v1, v7, v8

    div-float/2addr v1, v9

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v9

    sub-float v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v9, v3

    int-to-float v3, v9

    iget v9, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v6, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    add-float/2addr v1, v0

    invoke-virtual {v2, v4, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v10, v7, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->longClicked:Z

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebActionBar;->pressX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebActionBar;->pressY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/web/WebActionBar;->pressTime:J

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-long v1, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/web/WebActionBar;->pressTime:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lorg/telegram/ui/web/WebActionBar;->longClicked:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->pressX:F

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/WebActionBar;->onScrolledProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/web/WebActionBar;->pressTime:J

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebActionBar;->pressX:F

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBackground(Landroid/graphics/Canvas;FFFZ)V
    .locals 10

    const v0, 0x3f28f5c3    # 0.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sub-float v2, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    int-to-float v7, v4

    mul-float v7, v7, p3

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v1

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->progress:[F

    aget v7, v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    invoke-virtual {v4, v6, v6, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v1

    int-to-float v8, v4

    mul-float v8, v8, p3

    iget v9, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    sub-float v9, v5, v9

    mul-float v8, v8, v9

    iget v9, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    sub-float v9, v5, v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p5, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    add-float v7, v2, v0

    invoke-virtual {v4, v6, v2, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v1

    int-to-float v8, v4

    mul-float v8, v8, p3

    mul-float v8, v8, p4

    iget v9, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    sub-float v9, v5, v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object v1, v7, v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    const/4 v4, 0x0

    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->scrimPaint:Landroid/graphics/Paint;

    sub-float v1, v5, v1

    mul-float v1, v1, p3

    const/high16 v8, 0x60000000

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v6, v6, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v6, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v4

    int-to-float v8, v1

    mul-float v8, v8, p3

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar;->progress:[F

    aget v7, v7, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    add-float/2addr v7, v3

    invoke-virtual {v1, v3, v6, v7, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    iget v6, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float v6, v6, v7

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v6

    sub-float v6, v5, v6

    int-to-float v7, p2

    mul-float v6, v6, v7

    mul-float v6, v6, p3

    iget v7, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    sub-float v7, v5, v7

    mul-float v6, v6, v7

    iget v7, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    sub-float v7, v5, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v6, v4

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p5, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p5, v3

    add-float/2addr v0, v2

    invoke-virtual {p2, v3, v2, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget-object p5, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object p5, p5, v4

    int-to-float v0, p2

    mul-float v0, v0, p3

    mul-float v0, v0, p4

    iget p3, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    sub-float/2addr v5, p3

    mul-float v0, v0, v5

    float-to-int p3, v0

    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    iget-object p4, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object p4, p4, v4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundColor:I

    return v0
.end method

.method public getBackgroundColor(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    return p1
.end method

.method protected getInstantViewLoader()Lorg/telegram/ui/web/WebInstantView$Loader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAddressing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressing:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    return v0
.end method

.method public occupyStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->occupyStatusBar:Z

    return-void
.end method

.method protected abstract onAddressColorsChanged(II)V
.end method

.method protected onAddressingProgress(F)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected abstract onColorsUpdated()V
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->topPadding()I

    move-result p2

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected abstract onScrolledProgress(F)V
.end method

.method protected abstract onSearchUpdated(Ljava/lang/String;)V
.end method

.method public setBackButton(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    :cond_1
    return-void
.end method

.method public setBackButtonCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->colorSet:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->colorSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->progressBackgroundPaint:[Landroid/graphics/Paint;

    aget-object v2, v2, p1

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {p2, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->shadowPaint:[Landroid/graphics/Paint;

    aget-object v2, v2, p1

    const v3, 0x3e0f5c29    # 0.14f

    const v4, 0x3e75c28f    # 0.24f

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p2

    iput p2, v0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitleColor:I

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object p2, p2, p1

    iget-object v0, p2, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget p2, p2, Lorg/telegram/ui/web/WebActionBar$Title;->subtitleColor:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object p1, v2, p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar$Title;->animatedDangerous:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result p1

    invoke-static {p2, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColors(IFZ)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->colorSet:[Z

    const/4 v1, 0x2

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundColor:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    const v2, 0x3f389375    # 0.721f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x1

    aput-boolean p3, v0, v1

    cmpg-float v0, p2, v4

    if-gez v0, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    const v4, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/web/WebActionBar;->iconColor:I

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundColor:I

    invoke-static {v1, v0, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    sub-float/2addr v3, p2

    invoke-static {v1, v0, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/web/WebActionBar;->onAddressColorsChanged(II)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressRoundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_ab_progress:I

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressTextColor:I

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v0, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButtonDrawable:Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->clearButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    const v0, 0x3e6147ae    # 0.22f

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->rippleColor:I

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonSelector:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButtonSelector:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->rippleColor:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuButtonSelector:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->rippleColor:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->clearButtonSelector:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->rippleColor:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->textColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebActionBar;->onColorsUpdated()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->backgroundColor:I

    iput p2, p0, Lorg/telegram/ui/web/WebActionBar;->fromBackgroundColor:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p3

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    new-array p3, v1, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/web/WebActionBar;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, v3}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/WebActionBar;IFF)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/web/WebActionBar$6;

    invoke-direct {p3, p0, p1, v3}, Lorg/telegram/ui/web/WebActionBar$6;-><init>(Lorg/telegram/ui/web/WebActionBar;IF)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColors(IZ)V
    .locals 1

    .line 0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/web/WebActionBar;->setColors(IFZ)V

    return-void
.end method

.method public setHasForward(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->hasForward:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->leftmenu:Landroid/widget/LinearLayout;

    const/high16 v2, -0x3ec00000    # -12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    sub-float v5, v4, v5

    mul-float v3, v3, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    sub-float v3, v4, v3

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->rightmenu:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->scale:F

    sub-float/2addr v4, v2

    mul-float v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar;->height:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsDangerous(IZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object p1, v0, p1

    iget-boolean v0, p1, Lorg/telegram/ui/web/WebActionBar$Title;->isDangerous:Z

    if-eq v0, p2, :cond_2

    iput-boolean p2, p1, Lorg/telegram/ui/web/WebActionBar$Title;->isDangerous:Z

    if-nez p3, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar$Title;->animatedDangerous:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setIsLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->hasLoaded:Z

    return-void
.end method

.method public setIsTonsite(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->isTonsite:Z

    return-void
.end method

.method public setMenuColors(I)V
    .locals 5

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/OKLCH;->rgb(I)[D

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/OKLCH;->rgb2oklch([D)[D

    move-result-object p1

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p1, -0x1

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_1

    const/high16 v2, -0x1000000

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuBackgroundColor:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p1, -0x1000000

    :goto_1
    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuTextColor:I

    const v0, 0x3f19999a    # 0.6f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuIconColor:I

    return-void
.end method

.method public setMenuListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setMenuType(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar;->menuType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->menuType:I

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/web/WebActionBar;->setProgress(IF)V

    return-void
.end method

.method public setProgress(IF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->progress:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSubtitle(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public setTitle(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/web/WebActionBar;->titleProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showAddress(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollX(I)V

    iput-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->urlCallback:Lorg/telegram/messenger/Utilities$Callback;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    return-void
.end method

.method public showAddress(ZZ)V
    .locals 6

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressing:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressing:Z

    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEngineIndex:I

    sget v3, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    if-eq v2, v3, :cond_2

    iput v3, p0, Lorg/telegram/ui/web/WebActionBar;->searchEngineIndex:I

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/messenger/R$string;->AddressPlaceholder:I

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-boolean v4, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p2, v3, v0

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/web/WebActionBar$8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/web/WebActionBar$8;-><init>(Lorg/telegram/ui/web/WebActionBar;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->addressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_6
    if-eqz p1, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    iput p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/WebActionBar;->onAddressingProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v0, v0, v4

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    mul-float v0, v0, v4

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_b
    :goto_5
    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    :goto_6
    new-instance p1, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    new-instance p1, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    iget-boolean p2, p0, Lorg/telegram/ui/web/WebActionBar;->addressing:Z

    if-eqz p2, :cond_c

    const-wide/16 v0, 0x64

    goto :goto_7

    :cond_c
    const-wide/16 v0, 0x0

    :goto_7
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showSearch(ZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-boolean v5, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    if-nez v5, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget v4, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v4, v3, v1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/web/WebActionBar$7;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/web/WebActionBar$7;-><init>(Lorg/telegram/ui/web/WebActionBar;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x140

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_5
    if-eqz p1, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iput v4, p0, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-boolean v5, p0, Lorg/telegram/ui/web/WebActionBar;->backButtonShown:Z

    if-nez v5, :cond_a

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_a
    :goto_5
    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->forwardButton:Landroid/widget/ImageView;

    xor-int/2addr p1, v0

    invoke-static {v2, p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->menuButton:Landroid/widget/ImageView;

    invoke-static {v2, p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar;->clearButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-static {p1, v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public swap()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->titles:[Lorg/telegram/ui/web/WebActionBar$Title;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    aput-object v2, v0, v3

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar;->progress:[F

    aget v2, v0, v1

    aget v4, v0, v3

    aput v4, v0, v1

    aput v2, v0, v3

    invoke-virtual {p0, v1}, Lorg/telegram/ui/web/WebActionBar;->getBackgroundColor(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/web/WebActionBar;->getBackgroundColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/web/WebActionBar;->setBackgroundColor(II)V

    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/web/WebActionBar;->setBackgroundColor(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public topPadding()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

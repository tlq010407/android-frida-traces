.class abstract Lorg/telegram/ui/AvatarPreviewer$Layout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Layout"
.end annotation


# instance fields
.field private final avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

.field private blurView:Landroid/view/View;

.field private final callback:Lorg/telegram/ui/AvatarPreviewer$Callback;

.field private final container:Landroid/widget/FrameLayout;

.field private infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

.field private final menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field private openAnimator:Landroid/animation/AnimatorSet;

.field private final openInterpolator:Landroid/view/animation/Interpolator;

.field private preparingBlur:Z

.field private recycled:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showing:Z

.field private videoFileName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5AVyoeWIH1trf_diptCbRZRFtag(Lorg/telegram/ui/AvatarPreviewer$Layout;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$setShowing$4(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$96xfiRgsDrvUap7bzPmwlndPzBk(Lorg/telegram/ui/AvatarPreviewer$Layout;Lorg/telegram/ui/AvatarPreviewer$Data;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$setData$2(Lorg/telegram/ui/AvatarPreviewer$Data;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Eoewwwh2f17p-DFlge1vbmTLb9I(Lorg/telegram/ui/AvatarPreviewer$Layout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2HErQZMCFNeN1jZx0BoQlosxcA(Lorg/telegram/ui/AvatarPreviewer$Layout;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$prepareBlurBitmap$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KTIYZzg_s0bjWEpsK2dpDq33f9A(Lorg/telegram/ui/AvatarPreviewer$Layout;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$setShowing$5(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Px9SHgarFLr8XJ1L0Hs_YKSkjZg(Lorg/telegram/ui/AvatarPreviewer$Layout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/AvatarPreviewer$Layout;->prepareBlurBitmap()V

    return-void
.end method

.method public static synthetic $r8$lambda$U08UCfIaOuD4-GSUzyTBLd73-RU(Lorg/telegram/ui/AvatarPreviewer$Layout;Lorg/telegram/ui/AvatarPreviewer$MenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->lambda$setData$3(Lorg/telegram/ui/AvatarPreviewer$MenuItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Callback;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->callback:Lorg/telegram/ui/AvatarPreviewer$Callback;

    iput-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->blurView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->blurView:Landroid/view/View;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$Layout$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$1;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->container:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;F)V

    invoke-static {v1, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_0
    invoke-static {p3, p3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-direct {v1, p1, v2, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const p1, 0x800003

    const/high16 p2, -0x40000000    # -2.0f

    invoke-static {p2, p2, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/AvatarPreviewer$AvatarView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/AvatarPreviewer$Layout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V

    return-void
.end method

.method private synthetic lambda$prepareBlurBitmap$1(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->blurView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->preparingBlur:Z

    return-void
.end method

.method private synthetic lambda$setData$2(Lorg/telegram/ui/AvatarPreviewer$Data;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->recycled:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1400(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->argument:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$UserFull;

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1100(Lorg/telegram/ui/AvatarPreviewer$Data;)[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setData(Lorg/telegram/ui/AvatarPreviewer$Data;)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1400(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->argument:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1100(Lorg/telegram/ui/AvatarPreviewer$Data;)[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$setData$3(Lorg/telegram/ui/AvatarPreviewer$MenuItem;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->callback:Lorg/telegram/ui/AvatarPreviewer$Callback;

    invoke-interface {p2, p1}, Lorg/telegram/ui/AvatarPreviewer$Callback;->onMenuClick(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method private synthetic lambda$setShowing$4(ZLandroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->container:Landroid/widget/FrameLayout;

    const v2, 0x3e99999a    # 0.3f

    mul-float v2, v2, p2

    const v3, 0x3f333333    # 0.7f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p2

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p2, p2, v0

    const v0, 0x3f733333    # 0.95f

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$setShowing$5(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->blurView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->preparingBlur:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->preparingBlur:Z

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v3, 0x7

    invoke-static {v0, v2, v3, p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;FILandroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method private recycleInfoLoadTask()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    :cond_0
    return-void
.end method

.method private setShowing(Z)V
    .locals 6

    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->showing:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->showing:Z

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    const-wide/16 v4, 0xbe

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x96

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/AvatarPreviewer$Layout$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$2;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->openAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

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
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    invoke-virtual {p2}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;->getShowProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->videoFileName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->videoFileName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;->setProgress(F)V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->videoFileName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x2

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;->setProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V

    return v1

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected abstract onHideFinish()V
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->showing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->blurView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->recycled:Z

    invoke-direct {p0}, Lorg/telegram/ui/AvatarPreviewer$Layout;->recycleInfoLoadTask()V

    return-void
.end method

.method public setData(Lorg/telegram/ui/AvatarPreviewer$Data;)V
    .locals 14

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1100(Lorg/telegram/ui/AvatarPreviewer$Data;)[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1200(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;->setShowProgress(Z)V

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1300(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->videoFileName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/AvatarPreviewer$Layout;->recycleInfoLoadTask()V

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1400(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1400(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    new-instance v1, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Lorg/telegram/ui/AvatarPreviewer$Data;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->load(Landroidx/core/util/Consumer;)V

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->avatarView:Lorg/telegram/ui/AvatarPreviewer$AvatarView;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1200(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1500(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$000(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1600(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$100(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1700(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1800(Lorg/telegram/ui/AvatarPreviewer$Data;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v12

    invoke-static {p1}, Lorg/telegram/ui/AvatarPreviewer$Data;->access$1900(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/AvatarPreviewer$AvatarView;->setImage(ILorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->access$2000(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->access$2100(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez p1, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v0}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->access$2200(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)I

    move-result v8

    iget-object v11, p0, Lorg/telegram/ui/AvatarPreviewer$Layout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/AvatarPreviewer$Layout;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout;->setShowing(Z)V

    return-void
.end method

.class public abstract Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;
    }
.end annotation


# instance fields
.field private cameraReady:Z

.field private currentPage:I

.field private currentTexturePage:I

.field private isDismissed:Z

.field public micEnabled:Z

.field private micIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private needScreencast:Z

.field private outProgress:F

.field private pageOffset:F

.field private final positiveButton:Landroid/widget/TextView;

.field private final textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private final titles:[Landroid/widget/TextView;

.field private final titlesLayout:Landroid/widget/LinearLayout;

.field private final viewPager:Landroidx/viewpager/widget/ViewPager;

.field private visibleCameraPage:I


# direct methods
.method public static synthetic $r8$lambda$2zVm62CNh177m9Tq74iL5VVn7ac(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->lambda$new$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSh3xy69GTdCmuFG58UNA38BOEM(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Lorg/telegram/ui/Components/RLottieDrawable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->lambda$new$2(Lorg/telegram/ui/Components/RLottieDrawable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCb2kG4aKILEyrJlWyGgyZZFl7U(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    iput v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->visibleCameraPage:I

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    new-array v2, v2, [Landroid/widget/TextView;

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    new-instance v2, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v2, v1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/high16 v4, 0x7f000000

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    new-instance v4, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$Adapter;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    invoke-virtual {v2, v7}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-direct {v2, v1, v4, v4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v7, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v8, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v7, v8}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    sget v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v7, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    iput-boolean v3, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipToTexture:Z

    iget-object v7, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v7, v3}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v7, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v7, v3}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v6, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    new-instance v6, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$2;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$3;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->positiveButton:Landroid/widget/TextView;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v7, Lorg/telegram/messenger/R$string;->VoipShareVideo:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    const/16 v10, 0x4c

    if-lt v7, v9, :cond_1

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v6, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v7, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v2, v4, v7, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v16, 0x0

    const/high16 v17, 0x42800000    # 64.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x50

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titlesLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x40

    const/16 v9, 0x50

    const/4 v11, -0x2

    invoke-static {v11, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    array-length v9, v7

    if-ge v2, v9, :cond_5

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v7, v2

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-virtual {v7, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v7, v12, v4, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titlesLayout:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v9, v9, v2

    invoke-static {v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_2

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    sget v9, Lorg/telegram/messenger/R$string;->VoipPhoneScreen:I

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_3

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    sget v9, Lorg/telegram/messenger/R$string;->VoipBackCamera:I

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    sget v9, Lorg/telegram/messenger/R$string;->VoipFrontCamera:I

    goto :goto_2

    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    new-instance v9, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v6

    invoke-interface {v6}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$4;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    invoke-virtual {v5, v6, v7}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v2, v5, v4}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    if-eqz p2, :cond_7

    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, -0x1000000

    invoke-static {v4, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->voice_mini:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micEnabled:Z

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v7, 0x0

    const/high16 v8, 0x43080000    # 136.0f

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->updateTitlesLayout()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->onFinishMoveCameraPage()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->isDismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/projection/MediaProjectionManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/projection/MediaProjectionManager;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x208

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->dismiss(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/RLottieDrawable;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micEnabled:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micEnabled:Z

    const/16 v0, 0x45

    if-eqz p2, :cond_0

    const/16 p2, 0x24

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    const/16 p2, 0x63

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    return-void
.end method

.method private onFinishMoveCameraPage()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->visibleCameraPage:I

    if-eq v1, v2, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->saveLastCameraBitmap()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->cameraReady:Z

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    iput v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->visibleCameraPage:I

    :cond_4
    :goto_0
    return-void
.end method

.method private saveLastCameraBitmap()V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->cameraReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

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

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cthumb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->visibleCameraPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x57

    invoke-virtual {v0, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->visibleCameraPage:I

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    xor-int/2addr v2, v4

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private updateTitlesLayout()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    aget-object v2, v0, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    array-length v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v1, v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3f333333    # 0.7f

    if-lt v1, v4, :cond_4

    add-int/lit8 v8, v4, 0x1

    if-le v1, v8, :cond_2

    goto :goto_2

    :cond_2
    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3e99999a    # 0.3f

    if-ne v1, v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    mul-float v9, v9, v4

    sub-float v7, v5, v9

    mul-float v4, v4, v8

    sub-float v6, v5, v4

    goto :goto_2

    :cond_3
    iget v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    mul-float v9, v9, v4

    add-float/2addr v7, v9

    mul-float v4, v4, v8

    add-float/2addr v6, v4

    :cond_4
    :goto_2
    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titles:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentPage:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->needScreencast:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->currentTexturePage:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->pageOffset:F

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    :goto_3
    return-void
.end method


# virtual methods
.method public dismiss(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->isDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->isDismissed:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->saveLastCameraBitmap()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->onDismiss(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$5;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->invalidate()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->outProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float v1, v1, v3

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onAudioSettingsChanged()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onAudioSettingsChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public onCameraFirstFrameAvailable()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->cameraReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->cameraReady:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_0
    return-void
.end method

.method protected abstract onDismiss(ZZ)V
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->updateTitlesLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    const/high16 v3, 0x42a00000    # 80.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_1
    const/high16 v3, 0x41800000    # 16.0f

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    const/high16 v0, 0x42b00000    # 88.0f

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_2
    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_3

    :cond_3
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public synthetic onStateChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onStateChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public setBottomPadding(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public update()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    :cond_0
    return-void
.end method

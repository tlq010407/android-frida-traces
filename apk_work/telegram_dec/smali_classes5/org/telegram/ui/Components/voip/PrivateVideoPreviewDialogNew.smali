.class public abstract Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final bgBlueViolet:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgBlueVioletShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private final bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgGreenShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private final camera:Landroid/graphics/Camera;

.field private cameraReady:Z

.field private final clipPath:Landroid/graphics/Path;

.field private closeProgress:F

.field private isDismissed:Z

.field private final matrixLeft:Landroid/graphics/Matrix;

.field private final matrixRight:Landroid/graphics/Matrix;

.field private openProgress1:F

.field private openProgress2:F

.field private openTranslationX:F

.field private openTranslationY:F

.field private pageOffset:F

.field private positiveButton:Landroid/widget/TextView;

.field private positiveButtonDrawText:Z

.field private previousPage:I

.field private realCurrentPage:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollGestureDetector:Landroid/view/GestureDetector;

.field private final startLocationX:F

.field private final startLocationY:F

.field private strangeCurrentPage:I

.field private textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field private titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

.field private titlesLayout:Landroid/widget/LinearLayout;

.field private viewPager:Landroid/widget/FrameLayout;

.field private visibleCameraPage:I


# direct methods
.method public static synthetic $r8$lambda$-YNA4YQHVAO3gE5tqZaYvDVzSHo(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$dismiss$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZG_n9vJ9URYhqGO0twk4YJRQ2E(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$setCurrentPage$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBG85S5Kzwmwx6RBBk0DcI9GZus(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$new$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFp1801ceVBAt2E4S6CMNBXYbRU(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$dismiss$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RLegXFaKsgMU3GGsBD57VOWsCBI(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGQXoL9JY4rq7fqfrWu84XbvE8s(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$new$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mSaqhRgFoktgoSDDXthmHRJXKTE(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$dismiss$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9rHohmza0jyF5FyIewKzGYZwIo(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->lambda$new$2(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iput v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    const/4 v6, -0x1

    iput v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->previousPage:I

    const/4 v7, 0x0

    iput v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    iput v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress2:F

    iput v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->closeProgress:F

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Camera;

    invoke-direct {v8}, Landroid/graphics/Camera;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->camera:Landroid/graphics/Camera;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->matrixRight:Landroid/graphics/Matrix;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->matrixLeft:Landroid/graphics/Matrix;

    new-instance v8, Lorg/telegram/ui/Components/BitmapShaderTools;

    const/16 v9, 0x50

    invoke-direct {v8, v9, v9}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgGreenShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    new-instance v8, Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-direct {v8, v9, v9}, Lorg/telegram/ui/Components/BitmapShaderTools;-><init>(II)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgBlueVioletShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const v11, -0xa02faf

    const v12, -0xff4b72

    const v13, -0x56339a

    const v14, -0xa54eb9

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const v19, -0xff5c1a

    const v20, -0xd69109

    const v21, -0xe7311e

    const v22, -0xc04d01

    const/16 v23, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgBlueViolet:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationX:F

    iput v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationY:F

    const/4 v8, 0x3

    new-array v8, v8, [Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    new-instance v8, Landroid/view/GestureDetector;

    new-instance v10, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$1;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-direct {v8, v1, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollGestureDetector:Landroid/view/GestureDetector;

    new-instance v8, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$2;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/4 v11, 0x0

    invoke-direct {v8, v1, v11, v11}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v12, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v8, v12}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    sget v12, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    iput v12, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    iput-boolean v5, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipToTexture:Z

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v8, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v8, v5}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v8, v5}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v8, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v10, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v10, v11}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v10, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$3;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$4;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$4;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipShareVideo:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    const/high16 v13, 0x41000000    # 8.0f

    if-lt v8, v12, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    const/16 v14, 0x4c

    invoke-static {v10, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-static {v12, v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/GroupCallRecordAlert$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v11, v12, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/16 v19, 0x0

    const/high16 v20, 0x42a00000    # 80.0f

    const/16 v14, 0x34

    const/high16 v15, 0x42500000    # 52.0f

    const/16 v16, 0x51

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x40

    invoke-static {v6, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    array-length v9, v9

    if-ge v8, v9, :cond_3

    if-nez v8, :cond_1

    sget v9, Lorg/telegram/messenger/R$string;->VoipPhoneScreen:I

    :goto_1
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    if-ne v8, v5, :cond_2

    sget v9, Lorg/telegram/messenger/R$string;->VoipFrontCamera:I

    goto :goto_1

    :cond_2
    sget v9, Lorg/telegram/messenger/R$string;->VoipBackCamera:I

    goto :goto_1

    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    new-instance v12, Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    invoke-direct {v12, v1, v9}, Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v12, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v10, v10, v8

    invoke-virtual {v10, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v9, v9, v8

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v10, v10, v8

    const/4 v12, -0x2

    invoke-static {v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v9, v9, v8

    new-instance v10, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v8}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v8, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v8

    invoke-virtual {v6, v8}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v8

    invoke-interface {v8}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$6;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$6;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {v6, v8, v9}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v6, v11}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->createPages(Landroid/widget/FrameLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v2, v3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;FF)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$7;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v8, 0x140

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v4, 0x20

    int-to-long v14, v4

    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x78

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    const/high16 v3, 0x42540000    # 53.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButtonDrawText:Z

    invoke-direct {v0, v5, v11}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setCurrentPage(IZ)V

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
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButtonDrawText:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->camera:Landroid/graphics/Camera;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->matrixRight:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->matrixLeft:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->isDismissed:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->previousPage:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->updateTitlesLayout()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setCurrentPage(IZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgBlueViolet:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgGreenShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->bgBlueVioletShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    return p1
.end method

.method private createPages(Landroid/widget/FrameLayout;)V
    .locals 10

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v6, -0xd8baa8

    const/4 v7, 0x1

    const v3, -0xded1c6

    const v4, -0xd4a4b3

    const v5, -0xdba79d

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->screencast_big:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v8, 0x0

    const/high16 v9, 0x42700000    # 60.0f

    const/16 v3, 0x52

    const/high16 v4, 0x42a40000    # 82.0f

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->VoipVideoPrivateScreenSharing:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v8, 0x41a80000    # 21.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v6, 0x41a80000    # 21.0f

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "screencast_stub"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "image_stab"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$dismiss$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->closeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$6(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    iget p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationX:F

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationY:F

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    mul-float v2, p1, v1

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationX:F

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress2:F

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress2:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->isDismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-nez p1, :cond_1

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

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->setCurrentPage(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    const/high16 p3, 0x42500000    # 52.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iget p3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    mul-float v0, p1, p3

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationX:F

    mul-float p3, p3, p2

    sub-float/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress2:F

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress2:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$setCurrentPage$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->updateTitlesLayout()V

    return-void
.end method

.method private saveLastCameraBitmap()V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

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

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cthumb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    const-string v2, "image_stab"

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

.method private setCurrentPage(IZ)V
    .locals 7

    const/4 v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    if-eq v1, p1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-ne v1, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    const-wide/16 v5, 0xfa

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->showStub(ZZ)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->showStub(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    const-string v1, "screencast_stub"

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->saveLastCameraBitmap()V

    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->showStub(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->saveLastCameraBitmap()V

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->showStub(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoIPService;->switchCamera()V

    :cond_4
    :goto_2
    iget p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->previousPage:I

    if-le p1, p2, :cond_5

    add-int/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4

    :cond_5
    sub-int/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$8;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    iput v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->updateTitlesLayout()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    iput v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->showStub(ZZ)V

    :cond_7
    :goto_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showStub(ZZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->viewPager:Landroid/widget/FrameLayout;

    const-string v1, "image_stab"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cthumb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->visibleCameraPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateTitlesLayout()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    aget-object v2, v0, v1

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    add-int/2addr v1, v4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v3

    add-int/2addr v5, v0

    int-to-float v0, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    array-length v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f333333    # 0.7f

    if-ge v1, v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->strangeCurrentPage:I

    const v9, 0x3f666666    # 0.9f

    if-lt v1, v6, :cond_4

    add-int/lit8 v10, v6, 0x1

    if-le v1, v10, :cond_2

    goto :goto_2

    :cond_2
    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e99999a    # 0.3f

    if-ne v1, v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    mul-float v11, v11, v6

    sub-float v8, v7, v11

    mul-float v6, v6, v10

    sub-float v9, v7, v6

    goto :goto_2

    :cond_3
    iget v6, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    mul-float v11, v11, v6

    add-float/2addr v8, v11

    mul-float v6, v6, v10

    add-float/2addr v9, v6

    :cond_4
    :goto_2
    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v1, v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    mul-float v2, v2, v8

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-lez v5, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v2, v2, v0

    sub-float v1, v7, v1

    mul-float v1, v1, v8

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-ne v1, v4, :cond_a

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->previousPage:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v1, v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    mul-float v2, v2, v8

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->previousPage:I

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titles:[Lorg/telegram/ui/Components/voip/VoIpBitmapTextView;

    aget-object v0, v1, v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->pageOffset:F

    sub-float/2addr v7, v1

    mul-float v7, v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected abstract afterOpened()V
.end method

.method protected abstract beforeClosed()V
.end method

.method public dismiss(ZZ)V
    .locals 7

    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->isDismissed:Z

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->beforeClosed()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->isDismissed:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->saveLastCameraBitmap()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->onDismiss(ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->isHasVideoOnMainScreen()Z

    move-result p1

    const-wide/16 v3, 0x15e

    const-wide/16 v5, 0x3c

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$9;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    :cond_2
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$11;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$11;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p2, v0, [F

    fill-array-data p2, :array_2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x140

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xfa

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x42540000    # 53.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationX:F

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, v3

    const v0, 0x3f19999a    # 0.6f

    mul-float v0, v0, p2

    float-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p2

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float p2, p2, v0

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto/16 :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v2, v5

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    mul-float v5, v5, v7

    sub-float v13, v6, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    iget v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationX:F

    const/high16 v7, 0x42060000    # 33.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->startLocationY:F

    const v8, 0x41d4cccd    # 26.6f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    invoke-static {v6, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationX:F

    iget v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    sub-float v6, v3, v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    sub-float v8, v5, v6

    iget v5, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openTranslationY:F

    iget v6, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->openProgress1:F

    sub-float v6, v3, v6

    const/high16 v7, 0x424c0000    # 51.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    sub-float v9, v5, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    int-to-float v4, v4

    add-float v10, v8, v4

    int-to-float v2, v2

    add-float v11, v9, v2

    move v12, v13

    invoke-static/range {v7 .. v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline22;->m(Landroid/graphics/Path;FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->closeProgress:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->getFloatingViewLocation()[I

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->closeProgress:F

    const/4 v5, 0x0

    aget v5, v2, v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    const/4 v7, 0x2

    aget v2, v2, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v8, v2

    int-to-float v2, v7

    div-float/2addr v8, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v9, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v12, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v13, v2, v8

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v14, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v15, v2

    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline22;->m(Landroid/graphics/Path;FFFFFFLandroid/graphics/Path$Direction;)V

    int-to-float v2, v5

    int-to-float v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getFloatingViewLocation()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract isHasVideoOnMainScreen()Z
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

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->cameraReady:Z

    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->realCurrentPage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->update()V

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

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->updateTitlesLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

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

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->titlesLayout:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    :cond_0
    return-void
.end method

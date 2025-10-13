.class public Lorg/telegram/ui/Components/voip/VoIpGradientLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;,
        Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;
    }
.end annotation


# instance fields
.field private allowAnimations:Z

.field private alphaBlueGreen:I

.field private alphaBlueViolet:I

.field private alphaGreen:I

.field private alphaOrangeRed:I

.field private final backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field private badConnectionAnimator:Landroid/animation/ValueAnimator;

.field private final bgBlueGreen:Landroid/graphics/drawable/Drawable;

.field private final bgBlueGreenDark:Landroid/graphics/drawable/Drawable;

.field private final bgBlueGreenLight:Landroid/graphics/drawable/Drawable;

.field private final bgBlueViolet:Landroid/graphics/drawable/Drawable;

.field private final bgBlueVioletDark:Landroid/graphics/drawable/Drawable;

.field private final bgBlueVioletLight:Landroid/graphics/drawable/Drawable;

.field private final bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgGreenDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgGreenDarkReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgGreenLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgGreenLightReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgOrangeRed:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgOrangeRedDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private final bgOrangeRedLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private callingAnimator:Landroid/animation/ValueAnimator;

.field private clipCx:I

.field private clipCy:I

.field private final clipPath:Landroid/graphics/Path;

.field private clipRadius:F

.field private connectedAnimatorSet:Landroid/animation/AnimatorSet;

.field private final defaultAnimatorSet:Landroid/animation/AnimatorSet;

.field private isPaused:Z

.field public volatile lockDrawing:Z

.field private showClip:Z

.field private state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;


# direct methods
.method public static synthetic $r8$lambda$HQkk_DnxZ04zcOfBc3TAaWifPdM(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$new$0(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lu6ZbXrhPf_0kjh3OVBIO1ARXco(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$switchToConnectedAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NdAtpf0Wp0qwPG1r1-2koW7hMYs(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$switchToCalling$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aA1m3nWKJtOaWmDC0ZePcZMDyb0(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$switchToConnectedAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$foitUgjB7vq3edwIu70VlbsCbkE(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$switchToCallConnected$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzDbnNgLrL54LmPLhYF2RfPahsg(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$showToBadConnection$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qThKa9FOWGNYjCoHGarIUDPuE1k(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lambda$hideBadConnection$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaGreen:I

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipRadius:F

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showClip:Z

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCx:I

    iput v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCy:I

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/16 v4, 0x200

    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v4

    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->allowAnimations:Z

    const v4, -0xe6e0da

    if-eqz p2, :cond_0

    new-instance v5, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v5, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v7, -0x4ba928

    const v8, -0x7eb714

    const v9, -0xdf5b29

    const v10, -0xc07416

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_0
    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueViolet:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    new-instance v5, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v5, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v7, -0xba8917

    const v8, -0xc4850f

    const v9, -0xf74f5d

    const v10, -0xe8551c

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_1
    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreen:Landroid/graphics/drawable/Drawable;

    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v7, -0xf85654

    const v8, -0xf8459d

    const v9, -0x56339a

    const v10, -0xa54eb9

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const v15, -0x1796a8

    const v16, -0x189e71

    const v17, -0x246fb4

    const v18, -0x218dc8

    const/16 v19, 0x0

    move-object v14, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRed:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_2

    new-instance v5, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v5, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_2

    :cond_2
    new-instance v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v7, -0x58c930

    const v8, -0x95d423

    const v9, -0xf06a37

    const v10, -0xd7851f

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_2
    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletDark:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v6, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_3

    :cond_3
    new-instance v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const v8, -0xd29f2a

    const v9, -0xd39521

    const v10, -0xff6a6b

    const v11, -0xfd6e37

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_3
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenDark:Landroid/graphics/drawable/Drawable;

    new-instance v15, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const v8, -0xff7472

    const v9, -0xfe6cb4

    const v10, -0x7042c9

    const v11, -0xce62d9

    const/4 v12, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const v17, -0x1dc0d7

    const v18, -0x19cf91

    const v19, -0x3889ea

    const v20, -0x28a5ea

    const/16 v21, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_4

    new-instance v8, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_4

    :cond_4
    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const v17, -0x299b01

    const v18, -0x6da703

    const v19, -0xd23f07

    const v20, -0xa85e01

    const/16 v21, 0x0

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_4
    iput-object v8, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletLight:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    new-instance v9, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;

    invoke-direct {v9, v0, v4}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$PureColorDrawable;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;I)V

    goto :goto_5

    :cond_5
    new-instance v9, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const v17, -0xaa7401

    const v18, -0xa05401

    const v19, -0xfb2334

    const v20, -0xd73d01

    const/16 v21, 0x0

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    :goto_5
    iput-object v9, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenLight:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const v17, -0xff2d2b

    const v18, -0xf61d87

    const v19, -0x3810a0

    const v20, -0x9226a9

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v10, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const v25, -0x879a

    const/16 v26, -0x7d5b

    const v27, -0x14fab

    const/16 v28, -0x71af

    const/16 v29, 0x0

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v10, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v11, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLightReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    new-instance v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v25, -0xff7472

    const v26, -0xfe6cb4

    const v27, -0x7042c9

    const v28, -0xce62d9

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    iput-object v11, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDarkReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v11, 0x50

    invoke-virtual {v5, v3, v3, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v3, v3, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v15, v3, v3, v11, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v7, v3, v3, v11, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v8, v3, v3, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v3, v3, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v3, v3, v11, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v10, v3, v3, v11, v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    const/16 v5, 0x168

    filled-new-array {v3, v5}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v5, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x2ee0

    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->allowAnimations:Z

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToCalling()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showClip:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->allowAnimations:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToConnectedAnimator()V

    return-void
.end method

.method private synthetic lambda$hideBadConnection$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setDegree(I)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDegree()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p2, 0x2

    if-le p1, p2, :cond_1

    :cond_0
    const/16 p2, 0xb4

    if-lt p1, p2, :cond_2

    const/16 p2, 0xb6

    if-gt p1, p2, :cond_2

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showToBadConnection$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method

.method private synthetic lambda$switchToCallConnected$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->invalidateViews()V

    return-void
.end method

.method private synthetic lambda$switchToCalling$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$switchToConnectedAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$switchToConnectedAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private switchToConnectedAnimator()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/16 v2, 0xff

    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaGreen:I

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    filled-new-array {v1, v2, v2, v2, v1}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    filled-new-array {v1, v1, v2, v1, v1}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x5dc0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->allowAnimations:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public hideBadConnection()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToConnectedAnimator()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isConnectedCalled()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

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

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->lockDrawing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v1, v0, v0

    mul-float v3, v2, v0

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDegree()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getLightCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaGreen:I

    const/16 v5, 0xff

    if-eqz v1, :cond_1

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    if-eq v6, v5, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaGreen:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaGreen:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getLightCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    if-eqz v1, :cond_2

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    if-eq v6, v5, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenDark:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenLight:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenDark:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreenLight:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getLightCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    if-eqz v1, :cond_3

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    if-eq v6, v5, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueViolet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletDark:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletLight:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueViolet:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueViolet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletDark:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueVioletLight:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getLightCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    if-eqz v1, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRed:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRed:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedDark:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getDarkCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRedLight:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getLightCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showClip:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCx:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCy:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipRadius:F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x3f8f5c29    # 1.12f

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCx:I

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCy:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v7, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipRadius:F

    div-float/2addr v7, v2

    invoke-virtual {v0, v1, v6, v7, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLightReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLightReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDrakCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDrakCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDrakCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDarkReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDarkReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDrakCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->getRevealDrakCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreen:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgOrangeRed:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p4, p4, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueGreen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgBlueViolet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenLightReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p4, p4, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->bgGreenDarkReveal:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p4, p4, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setTotalSize(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    return-void
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->isPaused:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->defaultAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->connectedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_2
    return-void
.end method

.method public showToBadConnection()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaOrangeRed:I

    const/16 v1, 0xff

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->badConnectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public switchToCallConnected(IIZ)V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v2, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-eq v1, v2, :cond_3

    sget-object v3, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCx:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->clipCy:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v1, v3

    sub-int/2addr v2, p1

    mul-int v2, v2, v2

    sub-int/2addr v1, p2

    mul-int v1, v1, v1

    add-int v3, v2, v1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-int p1, p1, p1

    add-int/2addr v1, p1

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-int/2addr v2, p2

    int-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->showClip:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setReveal(Z)V

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, p2, v2

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_2

    const-wide/16 p2, 0x190

    goto :goto_0

    :cond_2
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public switchToCalling()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CALLING:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->state:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const/16 v0, 0xff

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->alphaBlueGreen:I

    const/4 v1, 0x0

    filled-new-array {v0, v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2ee0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->allowAnimations:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->callingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

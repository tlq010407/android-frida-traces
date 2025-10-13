.class public Lorg/telegram/ui/Stars/ProfileGiftsView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;
    }
.end annotation


# instance fields
.field private actionBarProgress:F

.field public final animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final avatarContainer:Landroid/view/View;

.field private final avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private final currentAccount:I

.field private cy:F

.field private final dialogId:J

.field private expandProgress:F

.field private expandRight:F

.field private expandRightPad:Z

.field private final expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private expandY:F

.field public final giftIds:Ljava/util/HashSet;

.field public final gifts:Ljava/util/ArrayList;

.field private left:F

.field private list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field public maxCount:I

.field public final oldGifts:Ljava/util/ArrayList;

.field private pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

.field private progressToInsets:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private right:F

.field private final rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, p1

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->progressToInsets:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->giftIds:Ljava/util/HashSet;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iput p2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    iput-wide p3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->dialogId:J

    iput-object p5, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    iput-object p6, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    iput-object p7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->dialogId:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/ProfileGiftsView;->update()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float v4, v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    const/4 v8, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v8, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    add-float/2addr v1, v7

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float v8, v5, v6

    add-float/2addr v3, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v6

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-object v10, v9, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->animatedFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v11, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v13

    if-nez v8, :cond_2

    float-to-double v11, v1

    move/from16 v17, v3

    float-to-double v2, v4

    const-wide v18, -0x400dd93c48b9de65L    # -1.1344639929903682

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v20, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v11, v20

    double-to-float v11, v11

    move/from16 v20, v5

    move/from16 v14, v17

    move/from16 v17, v4

    float-to-double v4, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-float v12, v4

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v2, v2, v10

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v16

    const/high16 v3, 0x41c80000    # 25.0f

    move-object/from16 v10, p1

    move v4, v14

    move v14, v3

    move v15, v2

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->draw(Landroid/graphics/Canvas;FFFFFF)V

    move/from16 v5, v20

    :cond_1
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_2
    move/from16 v17, v4

    move/from16 v20, v5

    move v4, v3

    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e8a3d71    # 0.27f

    mul-float v2, v2, v3

    const/high16 v3, 0x42780000    # 62.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    mul-float v3, v3, v11

    move/from16 v5, v20

    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v4, v2

    mul-float v10, v10, v10

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, -0x3f800000    # -4.0f

    :goto_2
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->draw(Landroid/graphics/Canvas;FFFFFF)V

    goto :goto_1

    :cond_3
    move/from16 v5, v20

    const/4 v2, 0x2

    if-ne v8, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eeb851f    # 0.46f

    mul-float v2, v2, v3

    const/high16 v3, 0x42d20000    # 105.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    mul-float v3, v3, v11

    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v4, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, 0x41000000    # 8.0f

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne v8, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    const/high16 v3, 0x43080000    # 136.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    mul-float v3, v3, v11

    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v4, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, 0x40400000    # 3.0f

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x4

    if-ne v8, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3da3d70a    # 0.08f

    mul-float v2, v2, v3

    const v3, 0x41accccd    # 21.6f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    mul-float v3, v3, v11

    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v2, 0x42a40000    # 82.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v4, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, -0x3fc00000    # -3.0f

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x5

    if-ne v8, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f3eb852    # 0.745f

    mul-float v2, v2, v3

    const/high16 v3, 0x433a0000    # 186.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    mul-float v3, v3, v11

    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const/high16 v2, 0x421c0000    # 39.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v12, v4, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x6

    if-ne v8, v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ec28f5c    # 0.38f

    mul-float v2, v2, v3

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float v11, v7, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x7

    if-ne v8, v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e0a3d71    # 0.135f

    mul-float v2, v2, v3

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float v11, v7, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    const v3, 0x418ccccd    # 17.6f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, -0x3f600000    # -5.0f

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x8

    if-ne v8, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f428f5c    # 0.76f

    mul-float v2, v2, v3

    const/high16 v3, 0x43320000    # 178.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float v11, v7, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    const v3, 0x41ad47ae    # 21.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v12, v2, v3

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    iget v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    sub-float v2, v3, v2

    mul-float v10, v10, v2

    mul-float v15, v10, v6

    const/high16 v14, 0x40a00000    # 5.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->draw(Landroid/graphics/Canvas;FFFFFF)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, p1

    move v3, v4

    move/from16 v4, v17

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_4
    return-void
.end method

.method public getGiftUnder(FF)Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-object v1, v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-object v1, v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/ProfileGiftsView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-object v1, v1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGiftClick(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://t.me/nft/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->slug:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stars/ProfileGiftsView;->getGiftUnder(FF)Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    if-eqz v0, :cond_3

    iget-object p1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/ProfileGiftsView;->onGiftClick(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    :goto_0
    iget-object p1, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iput-object v5, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    if-eqz p1, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->pressedGift:Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public setActionBarActionMode(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->actionBarProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->left:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->right:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->cy:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->left:F

    iput p2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->right:F

    if-nez p4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->cy:F

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FZF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandRight:F

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandRightPad:Z

    iput p3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->expandProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->progressToInsets:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->progressToInsets:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update()V
    .locals 15

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->enableGiftsInProfile:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    iput v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->maxCount:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->giftIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-wide v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->dialogId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    iget v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->dialogId:J

    if-ltz v6, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    :goto_1
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->giftIds:Ljava/util/HashSet;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez v4, :cond_4

    iget-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v4, :cond_4

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_4

    new-instance v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;-><init>(Lorg/telegram/ui/Stars/ProfileGiftsView;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->giftIds:Ljava/util/HashSet;

    iget-wide v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->giftIds:Ljava/util/HashSet;

    iget-wide v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v1, v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-object v4, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->equals(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    add-int/2addr v1, v0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_5
    const/4 v3, 0x0

    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    const/4 v6, 0x0

    :goto_7
    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-wide v7, v7, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    iget-wide v9, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    goto :goto_8

    :cond_9
    add-int/2addr v6, v0

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_8
    if-eqz v6, :cond_b

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->copy(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)V

    goto :goto_b

    :cond_b
    new-instance v6, Landroid/graphics/RadialGradient;

    const/high16 v7, 0x41b40000    # 22.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v10, v7

    iget v7, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->color:I

    const/4 v14, 0x0

    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v11

    const/4 v7, 0x2

    new-array v12, v7, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradient:Landroid/graphics/RadialGradient;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientPaint:Landroid/graphics/Paint;

    iget-object v7, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_c

    iget v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    invoke-static {v7, v2, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    :goto_9
    iput-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_a

    :cond_c
    iget v6, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->currentAccount:I

    iget-wide v7, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->documentId:J

    invoke-static {v6, v2, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    goto :goto_9

    :goto_a
    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x140

    move-object v7, v6

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->animatedFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v4, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v4, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_d
    :goto_b
    add-int/2addr v3, v0

    goto/16 :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_c
    iget-object v4, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->oldGifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    const/4 v6, 0x0

    :goto_d
    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    iget-wide v7, v7, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    iget-wide v9, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/Stars/ProfileGiftsView;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;

    goto :goto_e

    :cond_f
    add-int/2addr v6, v0

    goto :goto_d

    :cond_10
    move-object v6, v5

    :goto_e
    if-nez v6, :cond_11

    iget-object v6, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v6, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v5, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object v5, v4, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradient:Landroid/graphics/RadialGradient;

    :cond_11
    add-int/2addr v3, v0

    goto :goto_c

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

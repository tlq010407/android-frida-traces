.class public abstract Lorg/telegram/ui/Components/StorageDiagramView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;
    }
.end annotation


# instance fields
.field private animateToPercentage:[F

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field backAnimator:Landroid/animation/ValueAnimator;

.field cacheModel:Lorg/telegram/ui/Storage/CacheModel;

.field private data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

.field private dialogId:Ljava/lang/Long;

.field dialogText:Ljava/lang/CharSequence;

.field dialogTextLayout:Landroid/text/StaticLayout;

.field dialogTextPaint:Landroid/text/TextPaint;

.field private drawingPercentage:[F

.field enabledCount:I

.field pressedProgress:F

.field private rectF:Landroid/graphics/RectF;

.field private singleProgress:F

.field private startFromPercentage:[F

.field text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$ATR54lDOgXOxCBVfgFDIbKuF3J8(Lorg/telegram/ui/Components/StorageDiagramView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;->lambda$setPressed$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aRBhXNGBD8hxfdPtEDiiKBOVXgA(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StorageDiagramView;->lambda$update$0([Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v0, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    const-wide v0, 0x7fffffffffffffffL

    const/4 p1, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->CacheOtherChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 p3, 0xe

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {p3, v0, p2}, Lorg/telegram/messenger/DialogObject;->setDialogPhotoTitle(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method private synthetic lambda$setPressed$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$0([Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aget v3, v3, v0

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public calculateSize()J
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v7, v7, v0

    if-eqz v7, :cond_3

    iget-boolean v8, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v8, :cond_1

    cmp-long v8, v5, v1

    if-gtz v8, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v8, v5, v1

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_1
    add-long/2addr v3, v5

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected abstract onAvatarClick()V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    cmpl-float v2, v1, v8

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    sub-float v1, v8, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float v1, v1, v2

    const v2, 0x3f59999a    # 0.85f

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpl-float v4, v1, v9

    if-lez v4, :cond_4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_4

    iput v9, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    goto :goto_0

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpg-float v4, v1, v8

    if-gez v4, :cond_4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    iput v8, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    :cond_4
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v2, v1

    const/16 v13, 0x15

    const-wide v14, 0x4066800000000000L    # 180.0

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    const/16 v6, 0xff

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, -0x3c4c0000    # -360.0f

    const/high16 v20, -0x3d4c0000    # -90.0f

    const/high16 v21, 0x43b40000    # 360.0f

    const/high16 v22, 0x40000000    # 2.0f

    if-ge v11, v2, :cond_b

    aget-object v1, v1, v11

    if-eqz v1, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    aget v23, v2, v11

    cmpl-float v2, v23, v9

    if-nez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    if-eqz v2, :cond_9

    mul-float v19, v19, v23

    iget v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    sub-float v2, v8, v2

    mul-float v2, v2, v18

    add-float v19, v19, v2

    cmpl-float v2, v19, v9

    if-lez v2, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move/from16 v4, v19

    :goto_2
    iget-object v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    iget v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, v22

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v1

    div-double v16, v16, v14

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v16

    double-to-float v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    mul-float v21, v21, v12

    sub-float v4, v20, v21

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v1

    double-to-float v6, v14

    add-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    double-to-float v1, v1

    add-float/2addr v6, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v1, v1, v22

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    mul-float v21, v21, v12

    sub-float v3, v20, v21

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v6, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_9
    :goto_3
    add-float v12, v12, v23

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v2, v1

    if-ge v11, v2, :cond_12

    aget-object v1, v1, v11

    if-eqz v1, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    aget v23, v2, v11

    cmpl-float v2, v23, v9

    if-nez v2, :cond_d

    :cond_c
    const/16 v15, 0xff

    goto/16 :goto_9

    :cond_d
    iget-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->firstDraw:Z

    if-nez v2, :cond_f

    mul-float v2, v23, v19

    iget v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    sub-float v3, v8, v3

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    cmpl-float v3, v2, v9

    if-lez v3, :cond_e

    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    move v4, v2

    :goto_6
    iget-object v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    iget v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, v22

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v1, v16

    div-double v24, v24, v14

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v24

    double-to-float v3, v14

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    mul-float v4, v12, v21

    sub-float v4, v20, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v1

    double-to-float v14, v14

    add-float/2addr v3, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    double-to-float v1, v1

    add-float/2addr v14, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v14, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_f
    :goto_7
    const/16 v15, 0xff

    goto :goto_8

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v1, v1, v22

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    mul-float v1, v12, v21

    sub-float v3, v20, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v11

    iget-object v14, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    const/16 v15, 0xff

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_8
    add-float v12, v12, v23

    :goto_9
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0xff

    const-wide v14, 0x4066800000000000L    # 180.0

    goto/16 :goto_5

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x43140000    # 148.0f

    if-eqz v1, :cond_15

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float v3, v3, v22

    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v5, 0x42e60000    # 115.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    const/high16 v8, 0x43110000    # 145.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v10, v5, v6, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    add-float/2addr v3, v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v1, v3, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v22

    sub-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x42d60000    # 107.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    if-eqz p2, :cond_0

    const/high16 p2, 0x43260000    # 166.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, p2

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, p2

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v3, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p2, v1}, Landroid/view/View;->onMeasure(II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v3, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p2, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x12c

    const v6, 0x3e3851ec    # 0.18f

    move-object v11, v12

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x12c

    const v7, 0x3e3851ec    # 0.18f

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    const/high16 v2, 0x41500000    # 13.0f

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v1, v4

    invoke-virtual {v5, v0, v4, v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v4, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v1, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v4, v0, v6, v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v9, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v3, v9

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout2(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogTextLayout:Landroid/text/StaticLayout;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x42340000    # 45.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StorageDiagramView;->updateDescription()J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->dialogId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StorageDiagramView;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setPressed(Z)V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v4, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const-wide/16 v3, 0x50

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/StorageDiagramView;->setPressed(Z)V

    return v2
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    return-void
.end method

.method public setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V
    .locals 0

    iput-object p2, p0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/StorageDiagramView;->update(Z)V

    iget p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->singleProgress:F

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StorageDiagramView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StorageDiagramView$2;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageDiagramView;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public update(Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->data:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v8

    aget-object v10, v1, v5

    if-eqz v10, :cond_3

    iget-boolean v11, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v11, :cond_1

    cmp-long v11, v8, v3

    if-gtz v11, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v11, v8, v3

    if-lez v11, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v8, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_1
    add-long/2addr v6, v8

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iput v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    array-length v11, v1

    if-ge v8, v11, :cond_e

    iget-object v11, v0, Lorg/telegram/ui/Components/StorageDiagramView;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v11, v8}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize(I)J

    move-result-wide v11

    aget-object v13, v1, v8

    if-eqz v13, :cond_6

    iget-boolean v14, v13, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v14, :cond_5

    cmp-long v14, v11, v3

    if-lez v14, :cond_6

    :cond_5
    iget v14, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v0, Lorg/telegram/ui/Components/StorageDiagramView;->enabledCount:I

    :cond_6
    if-eqz v13, :cond_d

    iget-boolean v14, v13, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v14, :cond_7

    cmp-long v15, v11, v3

    if-gtz v15, :cond_7

    goto :goto_6

    :cond_7
    cmp-long v15, v11, v3

    if-lez v15, :cond_8

    move-wide v2, v11

    goto :goto_4

    :cond_8
    iget-wide v2, v13, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    :goto_4
    long-to-float v2, v2

    long-to-float v3, v6

    div-float/2addr v2, v3

    const v3, 0x3ce37de9    # 0.02777f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_9

    const v2, 0x3ce37de9    # 0.02777f

    :cond_9
    add-float/2addr v9, v2

    cmpl-float v3, v2, v10

    if-lez v3, :cond_b

    const-wide/16 v3, 0x0

    if-nez v14, :cond_a

    cmp-long v13, v11, v3

    if-lez v13, :cond_c

    :cond_a
    move v10, v2

    goto :goto_5

    :cond_b
    const-wide/16 v3, 0x0

    :cond_c
    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aput v2, v11, v8

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aput v5, v2, v8

    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v2

    if-lez v3, :cond_10

    div-float/2addr v2, v9

    const/4 v3, 0x0

    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_10

    aget-object v4, v1, v3

    if-nez v4, :cond_f

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    aget v5, v4, v3

    mul-float v5, v5, v2

    aput v5, v4, v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    if-nez p1, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->animateToPercentage:[F

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    array-length v1, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->drawingPercentage:[F

    iget-object v3, v0, Lorg/telegram/ui/Components/StorageDiagramView;->startFromPercentage:[F

    array-length v5, v1

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/StorageDiagramView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/StorageDiagramView$1;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageDiagramView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateDescription()J
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StorageDiagramView;->calculateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text1:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v0, v6

    if-nez v9, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    aget-object v9, v2, v8

    :goto_0
    invoke-virtual {v4, v9, v5, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object v4, p0, Lorg/telegram/ui/Components/StorageDiagramView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    cmp-long v9, v0, v6

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v2, v5

    :goto_1
    invoke-virtual {v4, v3, v5, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    :cond_2
    return-wide v0
.end method

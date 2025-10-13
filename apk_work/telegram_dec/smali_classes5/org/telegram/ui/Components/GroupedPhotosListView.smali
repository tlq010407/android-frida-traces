.class public Lorg/telegram/ui/Components/GroupedPhotosListView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;
    }
.end annotation


# instance fields
.field private animateAllLine:Z

.field private animateBackground:Z

.field private animateToDX:I

.field private animateToDXStart:I

.field private animateToItem:I

.field private animateToItemFast:Z

.field private animationsEnabled:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private currentGroupId:J

.field private currentImage:I

.field private currentItemProgress:F

.field private currentObjects:Ljava/util/ArrayList;

.field public currentPhotos:Ljava/util/ArrayList;

.field private delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

.field private drawAlpha:F

.field private drawDx:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasPhotos:Z

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private ignoreChanges:Z

.field private imagesToDraw:Ljava/util/ArrayList;

.field private itemHeight:I

.field private itemSpacing:I

.field private itemWidth:I

.field private itemY:I

.field private lastUpdateTime:J

.field private moveLineProgress:F

.field private moving:Z

.field private nextImage:I

.field private nextItemProgress:F

.field private nextPhotoScrolling:I

.field private scroll:Landroid/widget/Scroller;

.field private scrolling:Z

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private stopedScrolling:Z

.field private unusedReceivers:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$KepaK_8oXCcSf_cbb0QgwVgL6ns(Lorg/telegram/ui/Components/GroupedPhotosListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->lambda$fillList$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIrEb7L_MZwr_NKa3XEvCI9sUdo(Lorg/telegram/ui/Components/GroupedPhotosListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->lambda$fillList$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animationsEnabled:Z

    iput v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateBackground:Z

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    const/high16 p1, 0x42280000    # 42.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    const/high16 p1, 0x42600000    # 56.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    iput p2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemY:I

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x7f000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/GroupedPhotosListView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/GroupedPhotosListView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/GroupedPhotosListView;)Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/GroupedPhotosListView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/GroupedPhotosListView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private fillImages(ZI)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eqz p1, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    :goto_0
    if-ge v7, v6, :cond_5

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v11

    iget v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int v12, v11, v12

    iget v13, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v14, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v14, v13

    mul-int v12, v12, v14

    add-int/2addr v12, v3

    add-int v12, v12, p2

    if-gt v12, v2, :cond_2

    add-int/2addr v12, v13

    if-gez v12, :cond_3

    :cond_2
    iget-object v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    :cond_3
    add-int/lit8 v10, v11, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v11, v11, 0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    add-int/lit8 v9, v8, -0x1

    :cond_5
    const-string v6, "avatar_"

    if-eq v8, v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v8, v5, :cond_8

    iget v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int v7, v8, v7

    iget v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v10, v11

    mul-int v7, v7, v10

    add-int/2addr v7, v3

    add-int v7, v7, p2

    if-ge v7, v2, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lorg/telegram/messenger/ImageLocation;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getFreeReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    int-to-float v7, v7

    iget v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemY:I

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    int-to-float v13, v13

    invoke-virtual {v10, v7, v11, v12, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_2
    move-object/from16 v19, v7

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getParentObject()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v11}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getAvatarsDialogId()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :goto_3
    const/16 v18, 0x0

    const/16 v20, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, "80_80"

    const-wide/16 v16, 0x0

    move-object v11, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/ImageReceiver;->setParam(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    if-eq v9, v4, :cond_b

    :goto_4
    if-ltz v9, :cond_b

    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int v2, v9, v2

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v5, v4

    mul-int v2, v2, v5

    add-int/2addr v2, v3

    add-int v2, v2, p2

    add-int/2addr v2, v4

    if-lez v2, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getFreeReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemY:I

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    int-to-float v8, v8

    invoke-virtual {v4, v2, v5, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    move-object/from16 v18, v2

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getParentObject()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getAvatarsDialogId()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v14, "80_80"

    const-wide/16 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/ImageReceiver;->setParam(I)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    :goto_7
    return-void
.end method

.method private getFreeReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->unusedReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getCurrentAccount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    return-object v0
.end method

.method private getMaxScrollX()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method private getMinScrollX()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method private synthetic lambda$fillList$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$fillList$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private stopScrolling()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopedScrolling:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v0, v2

    mul-int v1, v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDX:I

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDXStart:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->onStopScrolling()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateAfterScroll()V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v3, v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    sub-int/2addr v0, v3

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    const/4 v1, -0x1

    :goto_0
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArrLocations()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArr()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getPageBlockArr()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    if-eq v0, v4, :cond_5

    if-ltz v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextPhotoScrolling:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    :cond_4
    :goto_2
    if-ltz v5, :cond_5

    iput-boolean v6, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->ignoreChanges:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v0, v5}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->setCurrentIndex(I)V

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    if-nez v0, :cond_6

    iput-boolean v6, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    iput-boolean v7, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopedScrolling:Z

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fillList()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v3, 0x1

    iget-boolean v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->ignoreChanges:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->ignoreChanges:Z

    return-void

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getCurrentIndex()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArrLocations()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArr()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v8}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getPageBlockArr()Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v9}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getSlideshowMessageId()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v10}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getCurrentAccount()I

    iput-boolean v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    move-object v15, v6

    move v5, v14

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_2
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v4, v13, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :cond_3
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v14

    iget-wide v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v17, v14, v1

    if-eqz v17, :cond_4

    iput-wide v14, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->forceAll()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-wide v14, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v17, v14, v11

    if-nez v17, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v15, v6

    goto/16 :goto_9

    :cond_7
    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    add-int/lit8 v14, v4, 0xa

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v4

    const/16 v17, 0x0

    :goto_3
    if-ge v15, v14, :cond_9

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_8

    if-nez v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v18

    iget-wide v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v12, v18, v10

    if-nez v12, :cond_9

    :cond_8
    add-int/lit8 v17, v17, 0x1

    add-int/2addr v15, v3

    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v10, v4, -0xa

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v11, v4, -0x1

    move/from16 v14, v17

    :goto_4
    if-lt v11, v10, :cond_b

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_a

    if-nez v2, :cond_a

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v17

    move-object v15, v6

    iget-wide v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v19, v17, v5

    if-nez v19, :cond_c

    goto :goto_5

    :cond_a
    move-object v15, v6

    :goto_5
    add-int/2addr v14, v3

    const/4 v5, -0x1

    add-int/2addr v11, v5

    move-object v6, v15

    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    move-object v15, v6

    :cond_c
    move v5, v14

    goto/16 :goto_9

    :cond_d
    move-object v15, v6

    if-eqz v8, :cond_13

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v1, v13, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    int-to-long v1, v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v10, v1, v5

    if-eqz v10, :cond_e

    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    iget-wide v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v2, v5, v10

    if-eqz v2, :cond_12

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move v6, v4

    const/4 v5, 0x0

    :goto_7
    if-ge v6, v2, :cond_f

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    int-to-long v10, v10

    move-object/from16 v17, v13

    iget-wide v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v18, v10, v12

    if-nez v18, :cond_10

    add-int/2addr v5, v3

    add-int/2addr v6, v3

    move-object/from16 v13, v17

    goto :goto_7

    :cond_f
    move-object/from16 v17, v13

    :cond_10
    add-int/lit8 v2, v4, -0x1

    :goto_8
    if-ltz v2, :cond_11

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    int-to-long v10, v6

    iget-wide v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v6, v10, v12

    if-nez v6, :cond_11

    add-int/2addr v5, v3

    const/4 v6, -0x1

    add-int/2addr v2, v6

    goto :goto_8

    :cond_11
    move-object/from16 v13, v17

    goto :goto_9

    :cond_12
    move-object/from16 v17, v13

    const/4 v5, 0x0

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_14

    return-void

    :cond_14
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animationsEnabled:Z

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    const/high16 v6, 0x43480000    # 200.0f

    if-nez v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    :cond_15
    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    if-lez v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v1, v2, v4

    aput v10, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    mul-float v2, v2, v6

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/GroupedPhotosListView$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$1;-><init>(Lorg/telegram/ui/Components/GroupedPhotosListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/GroupedPhotosListView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupedPhotosListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_16
    return-void

    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_18

    const/4 v10, 0x0

    iput-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_18
    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v11, v2, v10

    if-gez v11, :cond_19

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    if-nez v11, :cond_19

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v2, v11, v12

    aput v10, v11, v3

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    iget v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    sub-float/2addr v10, v11

    mul-float v10, v10, v6

    float-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Components/GroupedPhotosListView$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$2;-><init>(Lorg/telegram/ui/Components/GroupedPhotosListView;)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Components/GroupedPhotosListView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupedPhotosListView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_19
    if-nez v1, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v5, v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_b

    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    if-eq v5, v2, :cond_1f

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1f

    iget-boolean v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateAllLine:Z

    if-nez v6, :cond_1d

    iget-boolean v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    if-nez v10, :cond_1d

    add-int/lit8 v10, v5, -0x1

    if-eq v2, v10, :cond_1c

    add-int/lit8 v10, v5, 0x1

    if-ne v2, v10, :cond_1d

    :cond_1c
    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    const/4 v6, 0x1

    :cond_1d
    if-eqz v6, :cond_1e

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    sub-int/2addr v5, v2

    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v2, v6

    mul-int v5, v5, v2

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDX:I

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateAllLine:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->lastUpdateTime:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    goto :goto_a

    :cond_1e
    sub-int/2addr v5, v2

    iget v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v6, v10

    mul-int v5, v5, v6

    invoke-direct {v0, v3, v5}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    :goto_a
    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    goto :goto_c

    :cond_1f
    const/4 v2, 0x0

    goto :goto_c

    :goto_b
    const/4 v1, 0x1

    :goto_c
    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateAllLine:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    move-object v5, v15

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v2, -0x1

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    :cond_20
    const/4 v4, 0x1

    goto/16 :goto_14

    :cond_21
    if-eqz v7, :cond_28

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->forceAll()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_22

    const/4 v2, 0x1

    goto :goto_d

    :cond_22
    const/4 v2, 0x0

    :goto_d
    iget-wide v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v5, v10

    if-nez v8, :cond_23

    if-nez v2, :cond_23

    if-eqz v9, :cond_20

    :cond_23
    add-int/lit8 v5, v4, 0xa

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v4

    :goto_e
    const/16 v8, 0x38

    if-ge v6, v5, :cond_26

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_25

    if-nez v2, :cond_25

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v13

    move v15, v4

    iget-wide v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v16, v13, v3

    if-nez v16, :cond_24

    goto :goto_f

    :cond_24
    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_10

    :cond_25
    move v15, v4

    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-static {v4, v8, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v4, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v11

    move v4, v15

    const/4 v3, 0x1

    goto :goto_e

    :cond_26
    move v15, v4

    const/4 v11, 0x1

    const/4 v3, 0x0

    :goto_10
    iput v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v4, -0x1

    iput v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    add-int/lit8 v4, v15, -0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v15, -0x1

    :goto_11
    if-lt v3, v4, :cond_20

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_27

    if-nez v2, :cond_27

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getGroupIdForUse()J

    move-result-wide v13

    iget-wide v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v15, v13, v11

    if-nez v15, :cond_20

    :cond_27
    iget-object v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget-object v12, v5, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v12, v8, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v12, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-virtual {v11, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    add-int/2addr v5, v10

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v5, -0x1

    add-int/2addr v3, v5

    goto :goto_11

    :cond_28
    move v15, v4

    if-eqz v8, :cond_20

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    iget-wide v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_20

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move v3, v15

    :goto_12
    if-ge v3, v2, :cond_29

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    int-to-long v5, v5

    iget-wide v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v7, v5, v9

    if-nez v7, :cond_29

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_12

    :cond_29
    const/4 v4, 0x1

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v3, -0x1

    iput v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    add-int/lit8 v2, v15, -0x1

    :goto_13
    if-ltz v2, :cond_20

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    int-to-long v4, v4

    iget-wide v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentGroupId:J

    cmp-long v9, v4, v6

    if-nez v9, :cond_20

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    goto :goto_13

    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_2b
    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    :cond_2c
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    return v0
.end method

.method public hasPhotos()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateBackground:Z

    if-nez v2, :cond_2

    iget-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLocation;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v8, :cond_4

    iget v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    int-to-float v11, v11

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v8, v8

    div-float/2addr v11, v8

    mul-float v10, v10, v11

    float-to-int v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :cond_4
    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    :goto_1
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    mul-float v10, v7, v9

    float-to-int v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v11, v8

    add-int/2addr v11, v10

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    if-ltz v8, :cond_6

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    iget v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLocation;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v8, :cond_5

    iget v9, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v12, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    int-to-float v13, v13

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v8, v8

    div-float/2addr v13, v8

    mul-float v12, v12, v13

    float-to-int v8, v12

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    :cond_5
    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemHeight:I

    goto :goto_2

    :cond_6
    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    :goto_2
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    int-to-float v2, v2

    add-int v9, v5, v7

    iget v12, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    sub-int/2addr v9, v12

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    mul-float v9, v9, v8

    iget v13, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    iget v14, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/4 v15, 0x1

    if-le v13, v14, :cond_7

    const/4 v13, -0x1

    goto :goto_3

    :cond_7
    const/4 v13, 0x1

    :goto_3
    int-to-float v13, v13

    mul-float v9, v9, v13

    add-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v5, v12

    int-to-float v5, v5

    mul-float v5, v5, v8

    float-to-int v5, v5

    add-int/2addr v12, v5

    add-int/2addr v12, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_f

    iget-object v13, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v14

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    if-ne v14, v8, :cond_8

    add-int v8, v5, v2

    div-int/lit8 v14, v10, 0x2

    add-int/2addr v8, v14

    int-to-float v8, v8

    invoke-virtual {v13, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    sub-int v8, v11, v10

    invoke-virtual {v13, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageWidth(I)V

    goto/16 :goto_7

    :cond_8
    iget v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    if-ge v3, v8, :cond_9

    if-ge v14, v8, :cond_c

    if-gt v14, v3, :cond_a

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v3

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v3, v8

    add-int/2addr v3, v15

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v8, v4

    mul-int v3, v3, v8

    add-int/2addr v3, v5

    add-int/2addr v4, v12

    sub-int/2addr v3, v4

    :goto_5
    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_6

    :cond_9
    if-ge v14, v8, :cond_b

    :cond_a
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v4, v8

    mul-int v3, v3, v4

    add-int/2addr v3, v5

    goto :goto_5

    :cond_b
    if-gt v14, v3, :cond_d

    :cond_c
    add-int v3, v5, v11

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v3, v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v4, v8

    sub-int/2addr v4, v15

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v15, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v8, v15

    mul-int v4, v4, v8

    add-int/2addr v3, v4

    goto :goto_5

    :cond_d
    add-int v3, v5, v11

    iget v4, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v3, v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result v4

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x2

    iget v8, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v15, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v8, v15

    mul-int v4, v4, v8

    add-int/2addr v3, v4

    add-int/2addr v15, v12

    add-int/2addr v3, v15

    goto :goto_5

    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    if-ne v14, v3, :cond_e

    sub-int v3, v12, v7

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageWidth(I)V

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    div-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_7

    :cond_e
    iget v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageWidth(I)V

    :goto_7
    iget v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move-object/from16 v3, p1

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x11

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    move-wide v3, v5

    :cond_10
    iput-wide v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->lastUpdateTime:J

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    const/high16 v2, 0x43480000    # 200.0f

    if-ltz v1, :cond_17

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_16

    long-to-float v6, v3

    iget-boolean v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    if-eqz v7, :cond_11

    const/high16 v7, 0x42c80000    # 100.0f

    goto :goto_8

    :cond_11
    const/high16 v7, 0x43480000    # 200.0f

    :goto_8
    div-float v7, v6, v7

    sub-float/2addr v5, v7

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    iget v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    if-ne v1, v7, :cond_13

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v5

    if-gez v7, :cond_12

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_12

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    :cond_12
    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDXStart:I

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    :goto_9
    iget v6, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDX:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v1, v5

    :goto_a
    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    goto :goto_b

    :cond_13
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    iget-boolean v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopedScrolling:Z

    if-eqz v7, :cond_15

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    const/4 v7, 0x0

    cmpl-float v8, v1, v7

    if-lez v8, :cond_14

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_14

    iput v7, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDXStart:I

    goto :goto_9

    :cond_15
    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    iget v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToDX:I

    int-to-float v5, v5

    mul-float v1, v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_a

    :goto_b
    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopedScrolling:Z

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    const/4 v5, -0x1

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItemFast:Z

    :cond_16
    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_17
    iget-boolean v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    if-eqz v1, :cond_19

    iget v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_19

    long-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_18

    iput v5, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->updateAfterScroll()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopScrolling()V

    :cond_1b
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getMinScrollX()I

    move-result v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getMaxScrollX()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getMinScrollX()I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->getMaxScrollX()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    if-ge p3, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_1

    iput p2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->updateAfterScroll()V

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArrLocations()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getImagesArr()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->getPageBlockArr()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopScrolling()V

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->imagesToDraw:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getParam()I

    move-result p1

    const/4 v4, 0x1

    if-ltz p1, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne v0, p1, :cond_3

    return v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne v0, p1, :cond_3

    return v4

    :cond_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne v0, p1, :cond_3

    return v4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moveLineProgress:F

    iput-boolean v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateAllLine:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;->setCurrentIndex(I)V

    goto :goto_2

    :cond_4
    :goto_1
    return v4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scroll:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupedPhotosListView;->stopScrolling()V

    :cond_3
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hasPhotos:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    :cond_0
    return-void
.end method

.method public setAnimateBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateBackground:Z

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animationsEnabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animationsEnabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->showAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->hideAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->delegate:Lorg/telegram/ui/Components/GroupedPhotosListView$GroupedPhotosListViewDelegate;

    return-void
.end method

.method public setMoveProgress(F)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->scrolling:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->animateToItem:I

    if-ltz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    sub-int/2addr v2, v1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    add-int/2addr v2, v1

    goto :goto_0

    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextImage:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    iput v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    goto :goto_2

    :cond_2
    iput v3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentItemProgress:F

    sub-float/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->nextItemProgress:F

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->moving:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    cmpg-float v2, p1, v0

    if-gez v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_6

    :cond_4
    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->currentImage:I

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->itemSpacing:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupedPhotosListView;->drawDx:I

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/GroupedPhotosListView;->fillImages(ZI)V

    :cond_6
    :goto_4
    return-void
.end method

.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewGroupCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;
    }
.end annotation


# instance fields
.field private backgroundCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

.field private bottom:F

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private buttonTextBgPaint:Landroid/graphics/Paint;

.field private buttonTextPrice:J

.field private buttonTextRect:Landroid/graphics/RectF;

.field final gap:I

.field private group:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

.field private groupHeight:F

.field private groupWidth:F

.field final halfGap:I

.field private height:F

.field public indexStart:I

.field private interpolator:Landroid/view/animation/Interpolator;

.field private lastMediaUpdate:J

.field private left:F

.field public media:Ljava/util/ArrayList;

.field private messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field final padding:I

.field private previousGroupHeight:F

.field private previousGroupWidth:F

.field private right:F

.field public stars:J

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

.field private top:F

.field private final updateDuration:J

.field private width:F

.field public y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V
    .locals 3

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->y:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->indexStart:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->updateDuration:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->lastMediaUpdate:J

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupWidth:F

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->interpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->padding:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->gap:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->halfGap:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextBgPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const-string v0, "drawableMsgOutMedia"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->backgroundCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->height:F

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->width:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->group:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->setGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V

    return-void
.end method

.method private setGroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->group:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->calculate()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->lastMediaUpdate:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xc8

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    long-to-float v5, v5

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    invoke-static {v6, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupWidth:F

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    invoke-static {v6, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    :goto_0
    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupWidth:F

    goto :goto_1

    :cond_1
    iget v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    iget v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    goto :goto_0

    :goto_1
    iget v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->width:I

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    iget v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->height:F

    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    move-wide v9, v3

    goto :goto_2

    :cond_2
    move-wide v9, v5

    :goto_2
    iput-wide v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->lastMediaUpdate:J

    iput-wide v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->stars:J

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    if-ge v10, v6, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-wide v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->stars:J

    iget-wide v7, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->stars:J

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_4

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v15, v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-ne v15, v12, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    move-object v14, v11

    :goto_5
    if-nez v14, :cond_5

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    invoke-direct {v7, v0, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$1;)V

    invoke-static {v7, v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    invoke-static {v7, v1, v13, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-static {v14, v1, v13, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0xc8

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_7
    if-ge v9, v5, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v7, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    iget-object v8, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->access$3800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)J

    move-result-wide v7

    const-wide/16 v12, 0xc8

    add-long/2addr v7, v12

    cmp-long v10, v7, v3

    if-gtz v10, :cond_8

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->detach()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_7
    const-wide/16 v12, 0xc8

    :cond_8
    invoke-static {v6, v11, v11, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V

    goto :goto_8

    :cond_9
    const-wide/16 v12, 0xc8

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->lastMediaUpdate:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    cmpg-float v6, v2, v4

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupWidth:F

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    invoke-static {v8, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getPreviewScale()F

    move-result v9

    mul-float v8, v8, v9

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    iget v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    invoke-static {v9, v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    mul-float v9, v9, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getPreviewScale()F

    move-result v7

    mul-float v9, v9, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    iput v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->padding:I

    int-to-float v11, v11

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->padding:I

    int-to-float v12, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-float/2addr v10, v12

    div-float/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->right:F

    iget v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->padding:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->bottom:F

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    float-to-int v13, v8

    float-to-int v14, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIIIIZZ)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    float-to-int v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    float-to-int v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->right:F

    float-to-int v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->bottom:F

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    iget v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupWidth:F

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_1

    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    iget v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupWidth:F

    cmpg-float v7, v8, v7

    if-gtz v7, :cond_2

    move v4, v2

    :cond_2
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->messageBackground:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->backgroundCacheParams:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;)V

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->padding:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->bottom:F

    sub-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->bottom:F

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->right:F

    sub-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->right:F

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->right:F

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    sub-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->width:F

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->bottom:F

    iget v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    sub-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->height:F

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v5, v2, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->media:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v6, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->drawStarsButton(Landroid/graphics/Canvas;)V

    return v6
.end method

.method public drawStarsButton(Landroid/graphics/Canvas;)V
    .locals 14

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->stars:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41600000    # 14.0f

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextPrice:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/Text;

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextPrice:J

    long-to-int v1, v0

    const-string v0, "UnlockPaidContent"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonText:Lorg/telegram/ui/Components/Text;

    :cond_2
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->width:F

    sub-float v6, v5, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->height:F

    sub-float v10, v9, v1

    div-float/2addr v10, v7

    add-float/2addr v10, v8

    add-float/2addr v5, v0

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    add-float/2addr v9, v1

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    invoke-virtual {v2, v6, v10, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextBgPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x60000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextRect:Landroid/graphics/RectF;

    div-float/2addr v1, v7

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->buttonText:Lorg/telegram/ui/Components/Text;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->left:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->width:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->top:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->height:F

    div-float/2addr v1, v7

    add-float v11, v0, v1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    return-void
.end method

.method public getT()F
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->lastMediaUpdate:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public measure()F
    .locals 4

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->previousGroupHeight:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->groupHeight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->getT()F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    mul-float v1, v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->getPreviewScale()F

    move-result v0

    mul-float v1, v1, v0

    return v1
.end method

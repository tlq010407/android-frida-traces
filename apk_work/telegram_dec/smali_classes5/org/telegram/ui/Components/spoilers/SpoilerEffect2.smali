.class public Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;
    }
.end annotation


# static fields
.field private static instance:Ljava/util/HashMap;


# instance fields
.field private final MAX_DELTA:D

.field public final MAX_FPS:I

.field private final MIN_DELTA:D

.field private final checkDestroy:Ljava/lang/Runnable;

.field public destroyed:Z

.field private height:I

.field private final holders:Ljava/util/ArrayList;

.field private holdersIndex:I

.field private final holdersToIndex:Ljava/util/HashMap;

.field private final textureView:Landroid/view/TextureView;

.field private final textureViewContainer:Landroid/view/ViewGroup;

.field private thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

.field public final type:I

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$dCldKsXoPG3fgP8xhGGc9bzOs0o(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>(ILandroid/view/ViewGroup;II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersIndex:I

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->checkDestroy:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->MAX_FPS:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    iput-wide v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->MIN_DELTA:D

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    mul-double v3, v3, v1

    iput-wide v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->MAX_DELTA:D

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->type:I

    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->width:I

    iput p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->height:I

    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureViewContainer:Landroid/view/ViewGroup;

    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$2;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$2;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureView:Landroid/view/TextureView;

    new-instance p3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$3;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)V

    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->width:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->height:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->MIN_DELTA:D

    return-wide v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->MAX_DELTA:D

    return-wide v0
.end method

.method private destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->halt()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static getInstance(ILandroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
    .locals 1

    .line 0
    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
    .locals 4

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->supports()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    :cond_1
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getSize()I

    move-result v1

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->makeTextureViewContainer(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-direct {v3, p0, p2, v1, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;-><init>(ILandroid/view/ViewGroup;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_3
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(ILandroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object p0

    return-object p0
.end method

.method private static getRootView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private static getSize()I
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x2d0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x500

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x384

    goto :goto_0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroy()V

    :cond_0
    return-void
.end method

.method private static makeTextureViewContainer(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static pause(IZ)V
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget v2, v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->type:I

    if-ne v2, p0, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->pause(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static pause(Z)V
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->instance:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget-object v1, v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->thread:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->pause(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static supports()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public detach(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->checkDestroy:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->checkDestroy:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .locals 6

    .line 0
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;IIF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;IIF)V
    .locals 7

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;IIFZ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;IIFZ)V
    .locals 7

    .line 0
    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    int-to-float v2, v0

    div-float/2addr v2, v4

    int-to-float v3, v1

    div-float/2addr v3, v4

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    if-ne v2, v3, :cond_3

    int-to-float v2, v0

    div-float/2addr v2, v4

    int-to-float v3, v1

    div-float/2addr v3, v4

    invoke-virtual {p1, v6, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x4

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    int-to-float p2, v0

    div-float/2addr p2, v4

    int-to-float v2, v1

    div-float/2addr v2, v4

    invoke-virtual {p1, v5, v6, p2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4
    if-gt p3, v0, :cond_5

    if-le p4, v1, :cond_6

    :cond_5
    int-to-float p2, p3

    int-to-float p3, v0

    div-float/2addr p2, p3

    int-to-float p3, p4

    int-to-float p4, v1

    div-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureView:Landroid/view/TextureView;

    if-eqz p6, :cond_7

    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p4, -0x1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_7
    invoke-virtual {p2, p5}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/TextureView;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAttachIndex(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reassignAttach(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->holdersToIndex:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

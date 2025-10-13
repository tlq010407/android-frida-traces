.class Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;
.super Lcom/huawei/hms/maps/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;


# direct methods
.method public static synthetic $r8$lambda$XBliyybmsQ7Bq0Q82ZoaZlAYYnw(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->lambda$dispatchTouchEvent$0(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nSBmRVagJ9XihwCeu0EQpIqPUh0(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-direct {p0, p2}, Lcom/huawei/hms/maps/MapView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$1800(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$1800(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;)V

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$1900(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$1900(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;)V

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$2000(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$1;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->access$2000(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

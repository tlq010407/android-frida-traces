.class Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;
.super Lcom/google/android/gms/maps/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;


# direct methods
.method public static synthetic $r8$lambda$QYiqt34zJJBGSOSr-qD3GQo41xw(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->lambda$dispatchTouchEvent$0(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XJ-0BfHYrt6GOoYVgso0APc9zfQ(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-direct {p0, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

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

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$1800(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$1800(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;)V

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

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$1900(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {v0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$1900(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;)V

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

    iget-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$2000(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView$1;->this$0:Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;

    invoke-static {p1}, Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;->access$2000(Lorg/telegram/messenger/GoogleMapsProvider$GoogleMapView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

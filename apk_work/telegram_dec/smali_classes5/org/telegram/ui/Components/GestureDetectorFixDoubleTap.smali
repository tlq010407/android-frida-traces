.class public Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;,
        Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImplBase;,
        Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImplBase;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImplBase;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->mImpl:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->mImpl:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->mImpl:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public setLongpressDuration(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->mImpl:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$GestureDetectorCompatImpl;->setLongpressDuration(J)V

    return-void
.end method

.class public abstract Lorg/telegram/ui/Components/CastMediaRouteButton;
.super Landroidx/mediarouter/app/MediaRouteButton;
.source "SourceFile"


# instance fields
.field private lastConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private checkConnected()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->isConnected()Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/CastMediaRouteButton;->lastConnected:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CastMediaRouteButton;->lastConnected:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->stateUpdated(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->checkConnected()V

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->checkConnected()V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroidx/mediarouter/app/MediaRouteButton;

    const-string v2, "mConnectionState"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/mediarouter/app/MediaRouteButton;->onAttachedToWindow()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->checkConnected()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/CastMediaRouteButton;->checkConnected()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public abstract stateUpdated(Z)V
.end method

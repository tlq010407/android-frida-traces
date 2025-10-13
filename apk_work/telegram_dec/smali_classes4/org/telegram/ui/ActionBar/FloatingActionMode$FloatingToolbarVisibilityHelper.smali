.class final Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# instance fields
.field private mActive:Z

.field private mHideRequested:Z

.field private mLastShowTime:J

.field private mMoving:Z

.field private mOutOfBounds:Z

.field private final mToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

.field private mWindowFocused:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    return-void
.end method

.method public deactivate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->dismiss()V

    return-void
.end method

.method public setHideRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    :cond_2
    return-void
.end method

.method public setOutOfBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    return-void
.end method

.method public setWindowFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    return-void
.end method

.method public updateToolbarVisibility()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mMoving:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->show()Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mLastShowTime:J

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingActionMode$FloatingToolbarVisibilityHelper;->mToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->hide()V

    :goto_1
    return-void
.end method

.class public Lorg/telegram/messenger/browser/Browser$Progress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/browser/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field private onCancelListener:Ljava/lang/Runnable;

.field private onEndListener:Ljava/lang/Runnable;

.field private onInitListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onInitListener:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onEndListener:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onCancelListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end(Z)V

    return-void
.end method

.method public end()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end(Z)V

    return-void
.end method

.method public end(Z)V
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onEndListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onInitListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onInitListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onCancelListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onEnd(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$Progress;->onEndListener:Ljava/lang/Runnable;

    return-object p0
.end method

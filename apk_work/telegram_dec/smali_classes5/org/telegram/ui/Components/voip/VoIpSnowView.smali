.class public Lorg/telegram/ui/Components/voip/VoIpSnowView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private isPaused:Z

.field private snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x200

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getEventType()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpSnowView;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIpSnowView;->isPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpSnowView;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public setState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIpSnowView;->isPaused:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

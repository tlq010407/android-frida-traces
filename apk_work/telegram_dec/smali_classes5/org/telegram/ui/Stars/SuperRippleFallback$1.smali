.class Lorg/telegram/ui/Stars/SuperRippleFallback$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/SuperRippleFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/SuperRippleFallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$1;->this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback$1;->this$0:Lorg/telegram/ui/Stars/SuperRippleFallback;

    iget-object p1, p1, Lorg/telegram/ui/Stars/SuperRippleFallback;->radii:[F

    const/4 v0, 0x0

    aget v7, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIIIF)V

    :cond_0
    return-void
.end method

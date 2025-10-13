.class Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

.field private final x:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final y:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, p1

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->x:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->y:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$500(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->x:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->y:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$4;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$500(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Lorg/telegram/ui/Components/Paint/Views/LinkPreview;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview;->drawInternal(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

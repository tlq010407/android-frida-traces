.class Lorg/telegram/ui/Stories/PeerStoriesView$6;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$6;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

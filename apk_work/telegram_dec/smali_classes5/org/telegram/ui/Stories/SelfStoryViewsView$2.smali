.class Lorg/telegram/ui/Stories/SelfStoryViewsView$2;
.super Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;)V

    return-void
.end method

.method private checkTopOffset(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$000(Lorg/telegram/ui/Stories/SelfStoryViewsView;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->checkTopOffset(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->checkTopOffset(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$000(Lorg/telegram/ui/Stories/SelfStoryViewsView;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->checkTopOffset(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$000(Lorg/telegram/ui/Stories/SelfStoryViewsView;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

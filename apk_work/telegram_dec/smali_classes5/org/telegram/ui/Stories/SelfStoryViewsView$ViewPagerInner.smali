.class abstract Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerInner"
.end annotation


# instance fields
.field gesturesEnabled:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->keyboardHeight:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->keyboardHeight:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

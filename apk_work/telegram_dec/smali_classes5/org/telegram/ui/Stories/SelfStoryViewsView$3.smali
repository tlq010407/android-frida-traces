.class Lorg/telegram/ui/Stories/SelfStoryViewsView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$102(Lorg/telegram/ui/Stories/SelfStoryViewsView;I)I

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->access$100(Lorg/telegram/ui/Stories/SelfStoryViewsView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->listenPager:Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-boolean v0, p3, Lorg/telegram/ui/Stories/SelfStoryViewsView;->listenPager:Z

    if-eqz v0, :cond_0

    iget-object p3, p3, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionWithOffset(IF)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.class Lorg/telegram/ui/Stories/PeerStoriesView$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ChooseSpeedLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$8;->addSpeedLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

.field final synthetic val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedSelected(FZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setSpeed(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$11400(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    :cond_1
    return-void
.end method

.class Lorg/telegram/ui/Components/ChatAvatarContainer$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field final synthetic val$avatarClickable:Z

.field final synthetic val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$avatarClickable:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer$1;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowDrawStories:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$000(Lorg/telegram/ui/Components/ChatAvatarContainer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v0, v1, p1, v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$avatarClickable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrProfilePicture:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowDrawStories:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

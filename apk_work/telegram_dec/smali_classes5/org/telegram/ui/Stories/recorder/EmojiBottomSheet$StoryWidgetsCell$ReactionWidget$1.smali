.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->onAttachToWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;


# direct methods
.method public static synthetic $r8$lambda$gIPXHtWXvt5Z-aZvGbBqUUd9mtM(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->visibleReactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->currentIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->currentIndex:I

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->visibleReactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->currentIndex:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->visibleReactions:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->currentIndex:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;->this$2:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

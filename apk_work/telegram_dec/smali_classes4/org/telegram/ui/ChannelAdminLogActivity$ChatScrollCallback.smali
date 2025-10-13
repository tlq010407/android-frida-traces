.class public Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatScrollCallback"
.end annotation


# instance fields
.field private bottom:Z

.field private lastBottom:Z

.field private lastItemOffset:I

.field private lastPadding:I

.field private offset:I

.field private position:I

.field private scrollTo:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method public static synthetic $r8$lambda$Zf2beKOHbKfRQjd8PDHDf2DP0iA(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lambda$onEndAnimation$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method static synthetic access$10002(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$10102(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastBottom:Z

    return p1
.end method

.method static synthetic access$10202(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastItemOffset:I

    return p1
.end method

.method static synthetic access$10302(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    return p1
.end method

.method static synthetic access$10402(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    return p1
.end method

.method static synthetic access$10502(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    return p1
.end method

.method private synthetic lambda$onEndAnimation$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$10600(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onEndAnimation()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->access$9900(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$5400(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$7300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastItemOffset:I

    iget v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastPadding:I

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->lastBottom:Z

    invoke-virtual {v1, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$7300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->position:I

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->offset:I

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->bottom:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4502(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$10700(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartAnimation()V
    .locals 4

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$10600(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$10602(Lorg/telegram/ui/ChannelAdminLogActivity;I)I

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$5600(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

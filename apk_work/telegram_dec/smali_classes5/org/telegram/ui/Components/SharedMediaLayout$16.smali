.class Lorg/telegram/ui/Components/SharedMediaLayout$16;
.super Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkHighlightCell(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-nez v1, :cond_0

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    sub-float/2addr v3, v0

    div-float v0, v3, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_b

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42900000    # 72.0f

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    const/16 v5, 0x9

    :goto_0
    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7100(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v5

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v5

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    if-nez v1, :cond_4

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    if-eq v5, v1, :cond_9

    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveChannelHint:I

    goto :goto_2

    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveGroupHint:I

    goto :goto_2

    :cond_8
    sget v4, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveHint:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v5

    move v9, v1

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutWidth:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayoutLeft:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v4

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_b
    :goto_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v1, 0x3c2ec33e

    add-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    iput v2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    iput-boolean v3, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    iput v3, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Stories/UserListPoller;->getInstance(I)Lorg/telegram/ui/Stories/UserListPoller;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/UserListPoller;->checkList(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$16;->isChangeColumnsAnimation()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6802(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->startY:F

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->lastY:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->startY:F

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected emptyViewUpdated(ZZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnimateToColumnsCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    return v0
.end method

.method public getChangeColumnsProgress()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7100(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v0

    return v0
.end method

.method public getColumnsCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMessageAlphaEnter()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getMovingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->access$7400(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSupportingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    return-object v0
.end method

.method public isChangeColumnsAnimation()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    return v0
.end method

.method public isStories()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isThisListView()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7200(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$16;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.class Lorg/telegram/ui/PeerColorActivity$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    }
.end annotation


# instance fields
.field private actionBarHeight:I

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonCollectible:Ljava/lang/CharSequence;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private buttonLocked:Ljava/lang/CharSequence;

.field buttonRow:I

.field private buttonShadow:Landroid/view/View;

.field private buttonUnlocked:Ljava/lang/CharSequence;

.field clearRow:I

.field colorPickerRow:I

.field giftsCount:I

.field giftsEndRow:I

.field giftsHeaderRow:I

.field giftsInfoRow:I

.field giftsLoadingEndRow:I

.field giftsLoadingStartRow:I

.field giftsStartRow:I

.field iconRow:I

.field info2Row:I

.field infoRow:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

.field private peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

.field previewRow:I

.field private profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

.field rowCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

.field private selectedColor:I

.field private selectedEmoji:J

.field private selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

.field private setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

.field shadowRow:I

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;

.field private final type:I

.field final uniqueGifts:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$WQDvWiIpBo2Zgle2HxOn92Ongic(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$updateColors$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gvGpQ8X6uTj-QqgvVdTaiTskjkw(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqExD_-dDPzDBq7g_IUhuGMKQY4(Lorg/telegram/ui/PeerColorActivity$Page;ILandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$new$0(ILandroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iput-object v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    const/4 v7, 0x0

    iput-object v7, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->previewRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->info2Row:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    const/4 v8, 0x0

    iput v8, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    iput v3, v0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v9, 0x1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-ne v3, v9, :cond_2

    if-gez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v11

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    if-eqz v10, :cond_1

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    if-eqz v10, :cond_1

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v11, :cond_1

    :goto_0
    move-object v7, v10

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    :cond_1
    :goto_1
    iput-object v7, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    goto :goto_3

    :cond_2
    if-gez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v11

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v10

    :goto_2
    iput-wide v10, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v10

    goto :goto_2

    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v7, :cond_4

    iput v4, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    iput-wide v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    :cond_4
    new-instance v5, Lorg/telegram/ui/PeerColorActivity$Page$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7, v1}, Lorg/telegram/ui/PeerColorActivity$Page$1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PeerColorActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v6, Lorg/telegram/ui/PeerColorActivity$Page$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PeerColorActivity$Page$2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/PeerColorActivity$Page$3;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PeerColorActivity$Page$3;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, v0, Lorg/telegram/ui/PeerColorActivity$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/PeerColorActivity$Page$4;

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/telegram/ui/PeerColorActivity$Page$4;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V

    iput-object v6, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;I)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$Page$5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/PeerColorActivity$Page$5;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonShadow:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonShadow:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonShadow:Landroid/view/View;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const v11, 0x3f28f5c3    # 0.66f

    const/16 v12, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, "l"

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->ChannelColorApply:I

    goto :goto_4

    :cond_5
    sget v5, Lorg/telegram/messenger/R$string;->UserColorApplyIcon:I

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, " "

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    sget v2, Lorg/telegram/messenger/R$string;->UserColorApplyCollectible:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonCollectible:Ljava/lang/CharSequence;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v9, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonCollectible:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_8
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {v2, v5, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v15, 0x41600000    # 14.0f

    const/high16 v16, 0x41600000    # 14.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const/16 v12, 0x77

    const/high16 v13, 0x41600000    # 14.0f

    const v14, 0x416a8f5c    # 14.66f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x50

    const/4 v6, -0x2

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$Page$6;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/PeerColorActivity$Page$6;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v10, 0x15e

    invoke-virtual {v2, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    if-ne v3, v9, :cond_9

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$1800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity;->access$1900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    const/16 v2, 0x37

    invoke-static {v4, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateColors()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateRows()V

    invoke-virtual {v0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PeerColorActivity$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateButtonY()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PeerColorActivity$Page;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PeerColorActivity$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PeerColorActivity$Page;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    return-wide v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/PeerColorActivity$Page;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    return-wide p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    return-object p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    return-object p1
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;I)V
    .locals 4

    instance-of v0, p2, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, p2, :cond_3

    iput v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-direct {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    if-eqz p2, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p1, :cond_5

    iget p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    if-lt p3, p1, :cond_5

    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    if-ge p3, p2, :cond_5

    sub-int/2addr p3, p1

    if-ltz p3, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    iput v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->emojiStatusCollectibleFromGift(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$3200(Lorg/telegram/ui/PeerColorActivity;)V

    return-void
.end method

.method private synthetic lambda$updateColors$2(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->updateColors()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->updateColors()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;->card:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateButtonY()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    if-gt v7, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v7, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const v3, 0x429951ec    # 76.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateMessages()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->getColorId()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    iput-wide v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    aget-object v3, v0, v1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAvatar(Lorg/telegram/messenger/MessageObject;)V

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->previewRow:I

    :cond_0
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    add-int/lit8 v5, v3, 0x2

    iput v4, p0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    add-int/lit8 v4, v3, 0x3

    iput v4, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    if-ne v1, v2, :cond_2

    iget v5, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    if-gez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v5, :cond_2

    :cond_1
    add-int/lit8 v5, v3, 0x4

    iput v4, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    add-int/lit8 v3, v3, 0x5

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    :cond_2
    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    const/4 v2, 0x3

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    const/4 v2, 0x3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez v0, :cond_7

    :cond_5
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    if-gtz v2, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    :cond_7
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    :cond_8
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->seesLoading()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_9
    return-void
.end method


# virtual methods
.method public checkResetColorButton()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateRows()V

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void
.end method

.method public hasUnsavedChanged()Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {v0, v3}, Lorg/telegram/ui/PeerColorActivity;->eq(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v3, :cond_a

    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    if-ne v3, v4, :cond_9

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_2
    return v1

    :cond_a
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    if-ne v3, v4, :cond_c

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_c

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {v0, v3}, Lorg/telegram/ui/PeerColorActivity;->eq(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_3
    return v1
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43100000    # 144.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public premiumChanged()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonCollectible:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2
    return-void
.end method

.method public seesLoading()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V
    .locals 23

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-nez v0, :cond_7

    if-nez v14, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v15, 0x1

    new-array v12, v15, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/high16 v0, 0x43a50000    # 330.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x43a20000    # 324.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2800(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2800(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2800(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->updateImageBounds()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2800(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    neg-int v3, v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    move v9, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_1
    new-instance v8, Lorg/telegram/ui/PeerColorActivity$Page$7;

    iget-object v2, v13, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/16 v16, 0x5

    if-nez v0, :cond_3

    const/4 v6, 0x5

    goto :goto_2

    :cond_3
    const/4 v0, 0x7

    const/4 v6, 0x7

    :goto_2
    iget-object v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v17

    iget v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v0, :cond_4

    const/16 v0, 0x18

    const/16 v18, 0x18

    goto :goto_3

    :cond_4
    const/16 v0, 0x10

    const/16 v18, 0x10

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->getColor()I

    move-result v19

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    move/from16 v21, v9

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v22, v11

    move-object/from16 v11, p1

    move-object/from16 v17, v12

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/PeerColorActivity$Page$7;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    move-object/from16 v0, v20

    iput-boolean v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->useAccentForPlus:Z

    iget-wide v1, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$Page$8;

    const/4 v3, -0x2

    invoke-direct {v2, v13, v0, v3, v3}, Lorg/telegram/ui/PeerColorActivity$Page$8;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;II)V

    iput-object v2, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v0, 0x0

    aput-object v2, v17, v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/16 v16, 0x3

    :cond_6
    or-int/lit8 v1, v16, 0x30

    move/from16 v3, v21

    invoke-virtual {v2, v14, v0, v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    aget-object v0, v17, v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    :cond_7
    :goto_5
    return-void
.end method

.method public update()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateRows()V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonShadow:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public updateProfilePreview(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->document_id:J

    invoke-virtual {v0, v2, v3, v1, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZZ)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    invoke-virtual {v0, v2, v3, v1, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(J)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v5}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(J)Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setStatusEmoji(JZZ)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-virtual {v0, v3, v4, v2, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZZ)V

    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$3000(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$3000(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$3000(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity;->access$3100(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1400(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonCollectible:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->checkResetColorButton()V

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateSelectedGift()V

    return-void
.end method

.method public updateSelectedGift()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmojiCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->getGiftId()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

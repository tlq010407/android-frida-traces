.class public Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;,
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;,
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueCell;,
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$RevenueUserCell;,
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$EmptyHintRow;,
        Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

.field private canEdit:Z

.field private chatId:J

.field creatorHeaderRow:I

.field creatorRow:I

.field divider2Row:I

.field divider3Row:I

.field dividerRow:I

.field emptyHintRow:I

.field emptyView:I

.field emptyView2:I

.field emptyView3:I

.field expiredEndRow:I

.field expiredHeaderRow:I

.field expiredStartRow:I

.field expiredUsers:Ljava/util/ArrayList;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field hasMore:Z

.field private ignoreLayout:Z

.field info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field inviteDelegate:Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;

.field private isChannel:Z

.field public isNeedReopen:Z

.field joinedEndRow:I

.field joinedHeaderRow:I

.field joinedStartRow:I

.field joinedUsers:Ljava/util/ArrayList;

.field linkActionRow:I

.field linkInfoRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field loadingRow:I

.field private permanent:Z

.field requestedEndRow:I

.field requestedHeaderRow:I

.field requestedStartRow:I

.field requestedUsers:Ljava/util/ArrayList;

.field revenueHeaderRow:I

.field revenueRow:I

.field rowCount:I

.field private scrollOffsetY:I

.field private shadow:Landroid/view/View;

.field private shadowAnimation:Landroid/animation/AnimatorSet;

.field private final timeDif:J

.field private titleTextView:Landroid/widget/TextView;

.field private titleVisible:Z

.field users:Ljava/util/HashMap;

.field usersLoading:Z


# direct methods
.method public static synthetic $r8$lambda$6uW2B24H9KB1coV_eCr1CwHiWSk(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$loadCreator$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HuGIzlOmASQejq-jrz_i3BDXNzk(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Ljava/util/List;ZZZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$loadUsers$7(Ljava/util/List;ZZZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KdfKgS27tL0gJRDpvugreVGLZ94(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;ZZZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$loadUsers$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;ZZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$NTr7CT2fMjcci3TBUA8a-dXqga4(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$ChatFull;Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$ChatFull;Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RAifFcnvR9AMA7QSZs3FOl5nZuc([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$showSubscriptionSheet$9([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$__2YuoicMaFZai95J4SPU4xBnJc(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$showSubscriptionSheet$8(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eeMGUetJqG4Q25L-nHcHYbQSiJY(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$loadCreator$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$osQzYD-uVub9XaUvXN2Vtby-Ao8(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9B07PJ5M8dFPnB8LeRd5KqS03M(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZ0CUWEIKFDYQslN3rs0AkufMME(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v13, p8

    const/4 v14, 0x0

    invoke-direct {v9, v10, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    const/4 v15, 0x1

    iput-boolean v15, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->canEdit:Z

    iput-boolean v14, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isNeedReopen:Z

    iput-object v11, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object v12, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    move-object/from16 v8, p5

    iput-object v8, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v4, p3

    iput-object v4, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-wide/from16 v6, p6

    iput-wide v6, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->chatId:J

    iput-boolean v13, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->permanent:Z

    move/from16 v0, p9

    iput-boolean v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isChannel:Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    :cond_0
    iget v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    sub-long/2addr v0, v2

    iput-wide v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->timeDif:J

    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$2;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v15, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;)V

    iput-object v2, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->adapter:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;

    invoke-direct {v2, v9, v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v3, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, p2

    move-object v15, v3

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$ChatFull;Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v15, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-nez v13, :cond_3

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-eqz v0, :cond_1

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ExpiredLink:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v0, :cond_2

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->RevokedLink:I

    goto :goto_0

    :cond_2
    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->InviteLink:I

    goto :goto_0

    :goto_1
    iput-boolean v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    goto :goto_2

    :cond_3
    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->InviteLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    const/high16 v5, 0x42300000    # 44.0f

    if-nez v2, :cond_5

    const/16 v17, 0x0

    goto :goto_3

    :cond_5
    const/high16 v17, 0x42300000    # 44.0f

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x33

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    iget-boolean v2, v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    if-nez v2, :cond_6

    const/high16 v13, 0x42300000    # 44.0f

    goto :goto_4

    :cond_6
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v13, 0x42480000    # 50.0f

    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateRows()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadUsers()V

    move-object/from16 v0, p4

    if-eqz v0, :cond_7

    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadCreator()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->chatId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isChannel:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->canEdit:Z

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->timeDif:J

    return-wide v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateLayout()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private synthetic lambda$loadCreator$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object v0, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->adapter:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadCreator$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;ZZZZ)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->importers:Ljava/util/ArrayList;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->count:I

    if-eqz p4, :cond_1

    if-ge p1, p2, :cond_3

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    if-lt p1, p2, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_2
    if-lt p1, p2, :cond_4

    if-nez p6, :cond_4

    if-eqz p7, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->hasMore:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateRows()V

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->usersLoading:Z

    return-void
.end method

.method private synthetic lambda$loadUsers$7(Ljava/util/List;ZZZZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda8;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/List;ZZZZ)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 11

    move-object v0, p0

    const-wide/16 v1, 0x190

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    move-wide v1, p3

    neg-long v5, v1

    move-object/from16 v1, p5

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->showSubscriptionSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda9;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isNeedReopen:Z

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$ChatFull;Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 15

    move-object v8, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p9

    iget v3, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-ne v2, v3, :cond_0

    iget-wide v3, v6, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    iget v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v9, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v5, v3, v9

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget v3, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_1

    iget v7, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    if-ge v2, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget v9, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredStartRow:I

    if-lt v2, v9, :cond_2

    iget v10, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredEndRow:I

    if-ge v2, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    iget v11, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    if-lt v2, v11, :cond_3

    iget v12, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    if-ge v2, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget v12, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    if-eq v2, v12, :cond_4

    if-nez v7, :cond_4

    if-eqz v4, :cond_c

    :cond_4
    if-eqz v0, :cond_c

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    const/4 v14, 0x0

    if-eqz v7, :cond_5

    iget-object v4, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    move-object v9, v2

    goto :goto_5

    :cond_5
    if-eqz v10, :cond_6

    iget-object v3, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    sub-int/2addr v2, v9

    :goto_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    iget-object v3, v8, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    sub-int/2addr v2, v11

    goto :goto_4

    :cond_7
    move-object v9, v14

    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_c

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v10, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    if-eqz v7, :cond_b

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v0, :cond_b

    if-eqz v1, :cond_9

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_9

    :goto_6
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v0, v2, v12

    if-nez v0, :cond_8

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-nez v14, :cond_a

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x3

    move-object/from16 v3, p4

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x78

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    iget v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    iget v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda3;

    move-object v0, v13

    move-object v1, p0

    move-wide/from16 v4, p5

    move-object/from16 v6, p1

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V

    invoke-virtual {v12, v11, v10, v13}, Lorg/telegram/messenger/MessagesController;->getChannelParticipant(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_8

    :cond_a
    move-object/from16 v3, p4

    iget v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    move-wide/from16 v1, p5

    neg-long v1, v1

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 p1, p4

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v9

    move-object/from16 p7, v14

    move-object/from16 p8, v5

    invoke-static/range {p1 .. p8}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->showSubscriptionSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_8

    :cond_b
    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda4;

    move-object/from16 v1, p7

    invoke-direct {v0, p0, v10, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_c
    :goto_8
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$8(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$9([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private loadCreator()V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private runShadowAnimation(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p1, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    new-array v8, v1, [F

    aput v7, v8, v0

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v3, v7, v0

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_6
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$4;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    return-void
.end method

.method public static showSubscriptionSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    new-instance v8, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x1

    new-array v11, v10, [Lorg/telegram/ui/ActionBar/BottomSheet;

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v16, 0x40800000    # 4.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v12, v14, v7, v13, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x0

    const/16 v23, 0xa

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x42480000    # 50.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v13, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v13}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const-wide/16 v17, 0x0

    cmp-long v14, v1, v17

    if-ltz v14, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    invoke-virtual {v10, v1, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    :goto_1
    const/16 v1, 0x64

    const/16 v2, 0x11

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v10, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v13, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x1c

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v14, 0x42080000    # 34.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v13, v9}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v9, 0x420c0000    # 35.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setTranslationY(F)V

    const v15, 0x3f8ccccd    # 1.1f

    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleY(F)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x1

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v1, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscriptionTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, 0x14

    const/16 v23, 0x4

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x11

    const/16 v20, 0x14

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v12, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget v10, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const-string v13, "min"

    const-string v14, "5min"

    const v2, 0x3f4ccccd    # 0.8f

    const v7, 0x278d00

    if-ne v10, v7, :cond_1

    sget v10, Lorg/telegram/messenger/R$string;->StarsSubscriptionPrice:I

    move-object/from16 v17, v8

    iget-wide v7, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    new-array v15, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v15, v8

    invoke-static {v10, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v10, v13

    move-object v15, v14

    goto :goto_3

    :cond_1
    move-object/from16 v17, v8

    const/16 v7, 0x12c

    if-ne v10, v7, :cond_2

    move-object v7, v14

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v10, v13

    move-object v15, v14

    iget-wide v13, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v2, v14

    const/4 v13, 0x1

    aput-object v7, v2, v13

    const-string v7, "\u2b50%1$d/%2$s"

    invoke-static {v8, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v7, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/16 v25, 0x14

    const/16 v26, 0x4

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x11

    const/16 v23, 0x14

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const-string v7, "USD"

    const-wide v8, 0x408f400000000000L    # 1000.0

    const v13, 0x278d00

    if-ne v2, v13, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionApproxMonth:I

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v10

    iget-wide v13, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v8

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    double-to-int v3, v13

    int-to-long v8, v3

    invoke-virtual {v10, v8, v9, v7}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v8, v7

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_3
    const/16 v13, 0x12c

    if-ne v2, v13, :cond_4

    move-object v13, v15

    goto :goto_5

    :cond_4
    move-object v13, v10

    :goto_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v10

    iget-wide v14, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v8

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v8

    double-to-int v3, v14

    int-to-long v8, v3

    invoke-virtual {v10, v8, v9, v7}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v8, v7

    const/4 v3, 0x1

    aput-object v13, v8, v3

    const-string v3, "appx. %1$s per %2$s"

    invoke-static {v2, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :goto_6
    const/16 v23, 0x14

    const/16 v24, 0x4

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x11

    const/16 v21, 0x14

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v1, v0, v6}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v3, 0x414a8f5c    # 12.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const v8, 0x411547ae    # 9.33f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v7, v9, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v7, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v7, Lorg/telegram/ui/AvatarSpan;

    const/high16 v8, 0x41c00000    # 24.0f

    move/from16 v9, p1

    invoke-direct {v7, v2, v9, v8}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v13, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v10, 0x1

    goto :goto_7

    :cond_5
    const/4 v10, 0x0

    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v8}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "x  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v8, v7, v14, v15, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Lorg/telegram/ui/Components/InviteLinkBottomSheet$5;

    invoke-direct {v7, v11, v4}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$5;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/4 v15, 0x3

    invoke-virtual {v8, v7, v15, v14, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v10, :cond_6

    sget v7, Lorg/telegram/messenger/R$string;->StarsParticipantSubscription:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    :cond_6
    sget v2, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionStart:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v7, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v8

    new-instance v10, Ljava/util/Date;

    iget v13, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    int-to-long v13, v13

    const-wide/16 v18, 0x3e8

    mul-long v13, v13, v18

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v10

    new-instance v13, Ljava/util/Date;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    int-to-long v14, v4

    mul-long v14, v14, v18

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v13}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v13, v10

    const/4 v8, 0x1

    aput-object v4, v13, v8

    invoke-static {v7, v13}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-eqz v5, :cond_8

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->subscription_until_date:I

    if-le v4, v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionRenews:I

    goto :goto_8

    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionExpired:I

    :goto_8
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v8, Ljava/util/Date;

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->subscription_until_date:I

    int-to-long v9, v9

    mul-long v9, v9, v18

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->subscription_until_date:I

    int-to-long v13, v5

    mul-long v13, v13, v18

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    const/high16 v21, 0x41880000    # 17.0f

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v0, v6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v8, 0x41700000    # 15.0f

    move/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v2

    move/from16 p6, v3

    invoke-static/range {p1 .. p6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, -0x1

    const/16 v3, 0x30

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda6;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    aput-object v0, v11, v2

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    aget-object v0, v11, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    aget-object v0, v11, v2

    return-object v0
.end method

.method private updateColorForView(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/LinkActionView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v3, v0, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    :goto_1
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v4, v3, v0, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private updateLayout()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->runShadowAnimation(Z)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->scrollOffsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->dividerRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider2Row:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->divider3Row:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView2:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView3:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkActionRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkInfoRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyHintRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadingRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredHeaderRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredEndRow:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->permanent:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkActionRow:I

    iput v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->linkInfoRow:I

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueHeaderRow:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->revenueRow:I

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorHeaderRow:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->creatorRow:I

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-gtz v2, :cond_3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-gtz v4, :cond_3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    if-gtz v4, :cond_3

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_expired:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v2, v4, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_expired:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v2, v4, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    if-eqz v4, :cond_4

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedHeaderRow:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedEndRow:I

    const/4 v0, 0x1

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredHeaderRow:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredEndRow:I

    const/4 v0, 0x1

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedHeaderRow:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedEndRow:I

    goto :goto_4

    :cond_8
    move v3, v0

    :goto_4
    if-nez v1, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    if-nez v3, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->dividerRow:I

    add-int/lit8 v2, v0, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadingRow:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->emptyView2:I

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->adapter:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadUsers()V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->usersLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->subscription_expired:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v1, v4, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->request_needed:Z

    if-eqz v4, :cond_3

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v1, v4, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    if-eqz v11, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    if-eqz v10, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :goto_4
    if-eqz v8, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->requestedUsers:Ljava/util/ArrayList;

    :goto_5
    move-object v7, v0

    goto :goto_6

    :cond_6
    if-eqz v9, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->expiredUsers:Ljava/util/ArrayList;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->joinedUsers:Ljava/util/ArrayList;

    goto :goto_5

    :goto_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;-><init>()V

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->chatId:J

    neg-long v4, v4

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->requested:Z

    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->subscription_expired:Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    goto :goto_7

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->users:Ljava/util/HashMap;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_date:I

    :goto_7
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->usersLoading:Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda1;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Ljava/util/List;ZZZZ)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_9
    return-void
.end method

.method public setCanEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->canEdit:Z

    return-void
.end method

.method public setInviteDelegate(Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->inviteDelegate:Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isNeedReopen:Z

    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->shadow:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColorForView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColorForView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColorForView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColorForView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

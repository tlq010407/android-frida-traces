.class public abstract Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$MessageEntityViewSelectionView;
    }
.end annotation


# instance fields
.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private clipVideoMessageForBitmap:Z

.field public final container:Landroid/widget/FrameLayout;

.field private final currentColors:Landroid/util/SparseIntArray;

.field public firstMeasure:Z

.field private groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

.field private isDark:Z

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field public final messageObjects:Ljava/util/ArrayList;

.field private msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgMediaInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgMediaInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgMediaOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgMediaOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textureView:Landroid/view/TextureView;

.field private textureViewActive:Z

.field private usesBackgroundPaint:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$WJ6ZUblGCnsBkpSBJKCfxHxBqvg(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/view/TextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->lambda$new$0(Landroid/view/TextureView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c7MUwsOexxPq3GCXt0Yp6OjZydk(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$f1ac0PpokJUyMxQs-IQ_HjZDFT0(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->lambda$new$2(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p8

    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoWidth:I

    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoHeight:I

    iput-boolean v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->firstMeasure:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->isDark:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v3, p6

    iput-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move/from16 v1, p3

    invoke-virtual {v6, v1}, Landroid/view/View;->setRotation(F)V

    move/from16 v1, p4

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    move-object/from16 v4, p5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    iget-object v10, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->copyMessage(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v14

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v10, :cond_0

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v10, :cond_0

    iput-object v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    :cond_0
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget v13, v9, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object v15, v9, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesController;->getUsers()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    iget v9, v9, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesController;->getChats()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    const/16 v24, 0x1

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    move-object v12, v5

    move/from16 v25, p7

    invoke-direct/range {v12 .. v26}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->setType()V

    iget-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v5, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-direct {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->groupId:J

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_2
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$1;

    invoke-direct {v9, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;)V

    iput-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v12, v6, v7, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v6, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v13, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;Z)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, v3

    move/from16 p6, v1

    move/from16 p7, v2

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;IIZ)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v12, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$6;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    invoke-virtual {v12, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_3

    iget-boolean v0, v8, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->takeTextureView(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->updatePosition()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->getCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->msgMediaOutDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->usesBackgroundPaint:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->isDark:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->clipVideoMessageForBitmap:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->textureViewActive:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private getCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private synthetic lambda$new$0(Landroid/view/TextureView;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->textureViewActive:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->invalidateAll()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoWidth:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->videoHeight:I

    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V

    const-wide/16 v0, 0x3c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public copyMessage(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    :goto_0
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->expire_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->expire_date:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTimeMillis:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTimeMillis:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reqId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reqId:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->isThreadMessage:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->isThreadMessage:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-object v0

    :cond_1
    return-object p1
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$MessageEntityViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$MessageEntityViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract drawForBitmap()Z
.end method

.method protected getBounceScale()F
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    return v0
.end method

.method public getBubbleBounds(Landroid/graphics/RectF;)F
    .locals 13

    const/high16 v0, 0x4f000000

    const/high16 v1, -0x31000000

    const/4 v2, 0x0

    const/high16 v1, 0x4f000000

    const/high16 v2, -0x31000000

    const/high16 v3, -0x31000000

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    add-float/2addr v9, v6

    goto/16 :goto_1

    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->groupedMessages:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v9, :cond_1

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    const v10, 0x3fd47ae1    # 1.66f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v11, v5

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v11, v5

    move v8, v10

    move v12, v9

    move v9, v5

    move v5, v7

    move v7, v12

    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_2
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_3

    :cond_2
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v6, v5, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getBoundsLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getBoundsRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v9, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sget p1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x420e0000    # 35.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v5

    mul-float v5, v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v7

    mul-float v6, v6, v7

    div-float/2addr v6, v4

    mul-float v6, v6, v0

    sub-float/2addr v5, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    mul-float v3, v3, v0

    const/high16 v4, 0x428e0000    # 71.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v7

    mul-float v6, v6, v7

    mul-float v6, v6, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v6, v0

    invoke-direct {v1, v2, v5, v3, v6}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public invalidateAll()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->updatePosition()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->firstMeasure:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/high16 v3, 0x42300000    # 44.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v0, 0x43400000    # 192.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v3

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->firstMeasure:Z

    :cond_5
    return-void
.end method

.method public prepareToDraw(Z)V
    .locals 3

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->clipVideoMessageForBitmap:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setupTheme(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v3, "Blue"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v1, v3

    :cond_2
    const-string v4, "lastDarkTheme"

    const-string v5, "Dark Blue"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v5

    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Night"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_6
    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_7
    move-object v5, v0

    goto :goto_0

    :goto_2
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->isDark:Z

    if-eqz p1, :cond_8

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    :goto_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-static {v3, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v3, 0x0

    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    aget v5, v1, v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->invalidateAll()V

    return-void
.end method

.method protected updatePosition()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->usesBackgroundPaint:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->invalidateAll()V

    :cond_0
    return-void
.end method

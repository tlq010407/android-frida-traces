.class public Lorg/telegram/ui/bots/BotShareSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# instance fields
.field private final actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final botId:J

.field private final botName:Ljava/lang/String;

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Landroid/widget/FrameLayout;

.field private final chatListView:Landroid/widget/LinearLayout;

.field private final chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final currentAccount:I

.field private final message:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

.field private final messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private openedDialogsActivity:Z

.field private sent:Z

.field private final whenDone:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public static synthetic $r8$lambda$EXaIjZzBQ7aMcNHqrlgv1i_xxj8(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$share$3(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F7CzwfxG4tvl_Pz77g1Z7DE65WU(Lorg/telegram/ui/bots/BotShareSheet;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Lorg/telegram/messenger/Utilities$Callback2;IJLjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$new$6(Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Lorg/telegram/messenger/Utilities$Callback2;IJLjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RThqjKcuIYuSKpX2GkydPHam6fY(Lorg/telegram/ui/web/HttpGetFileTask;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$share$2(Lorg/telegram/ui/web/HttpGetFileTask;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBWWo7HLsxBgsqo_RZ9O4nT44IE(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$share$4(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hcU3xY32ckDDjeMDDi-Mn7Som-k(Lorg/telegram/ui/bots/BotShareSheet;ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$new$5(ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lUTp97u8Hrsi9JSYuCe7stR8o5c(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$share$0(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgRbaSSp7en3a3AYtxdSwXe9K-w([Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotShareSheet;->lambda$share$1([Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v14, 0x0

    iput-boolean v14, v8, Lorg/telegram/ui/bots/BotShareSheet;->openedDialogsActivity:Z

    iput-boolean v14, v8, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    iput v9, v8, Lorg/telegram/ui/bots/BotShareSheet;->currentAccount:I

    iput-object v12, v8, Lorg/telegram/ui/bots/BotShareSheet;->message:Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    iput-wide v10, v8, Lorg/telegram/ui/bots/BotShareSheet;->botId:J

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/bots/BotShareSheet;->botName:Ljava/lang/String;

    move-object/from16 v3, p10

    iput-object v3, v8, Lorg/telegram/ui/bots/BotShareSheet;->whenDone:Lorg/telegram/messenger/Utilities$Callback2;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setSlidingActionBar()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingTop:I

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingBottom:I

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v2, p7

    invoke-static {v9, v10, v11, v1, v2}, Lorg/telegram/ui/bots/BotShareSheet;->convert(IJLorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/io/File;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/ui/bots/BotShareSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v1, v7, v14, v13}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v8, Lorg/telegram/ui/bots/BotShareSheet;->actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v2, Lorg/telegram/ui/bots/BotShareSheet$1;

    invoke-direct {v2, v8}, Lorg/telegram/ui/bots/BotShareSheet$1;-><init>(Lorg/telegram/ui/bots/BotShareSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    sget v2, Lorg/telegram/messenger/R$string;->BotShareMessagePreview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/bots/BotShareSheet$2;

    invoke-direct {v2, v8, v7, v9}, Lorg/telegram/ui/bots/BotShareSheet$2;-><init>(Lorg/telegram/ui/bots/BotShareSheet;Landroid/content/Context;I)V

    iput-object v2, v8, Lorg/telegram/ui/bots/BotShareSheet;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v4, Lorg/telegram/ui/bots/BotShareSheet$3;

    invoke-direct {v4, v8}, Lorg/telegram/ui/bots/BotShareSheet$3;-><init>(Lorg/telegram/ui/bots/BotShareSheet;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    iget-object v4, v8, Lorg/telegram/ui/bots/BotShareSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v20}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v8, Lorg/telegram/ui/bots/BotShareSheet;->chatListView:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/bots/BotShareSheet$4;

    invoke-direct {v1, v8, v7}, Lorg/telegram/ui/bots/BotShareSheet$4;-><init>(Lorg/telegram/ui/bots/BotShareSheet;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/bots/BotShareSheet;->chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v9, v10, v11, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x41000000    # 8.0f

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x77

    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x41000000    # 8.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v8, Lorg/telegram/ui/bots/BotShareSheet;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v5, v7, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v8, Lorg/telegram/ui/bots/BotShareSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v0, Lorg/telegram/messenger/R$string;->BotShareMessageShare:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v14}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v13, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda5;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v4, p2

    move-object v9, v5

    move-wide/from16 v5, p3

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/BotShareSheet;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Lorg/telegram/messenger/Utilities$Callback2;IJLjava/lang/Runnable;)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v22, 0x41200000    # 10.0f

    const/16 v16, -0x1

    const/high16 v17, 0x42400000    # 48.0f

    const/16 v18, 0x77

    const/high16 v19, 0x41200000    # 10.0f

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v6, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x57

    move v4, v6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v14, v14, v14, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/bots/BotShareSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotShareSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/bots/BotShareSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    return p1
.end method

.method public static convert(IJLorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/io/File;)Lorg/telegram/messenger/MessageObject;
    .locals 17

    .line 0
    move-object/from16 v4, p3

    if-eqz p4, :cond_1a

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "voice"

    const-string v6, "video"

    const-string v7, "audio"

    const-string v9, "gif"

    const-string v10, "sticker"

    const/4 v13, 0x4

    const-string v14, "file"

    const/4 v15, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_1
    const-string v8, "x"

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v5, v12

    move-object v6, v5

    goto/16 :goto_c

    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v12}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v12

    :goto_2
    if-nez v0, :cond_9

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    invoke-static/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    new-array v1, v15, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v2

    aget v3, v2, v15

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    aget v2, v2, v5

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v5, v0

    move-object v6, v12

    goto/16 :goto_c

    :pswitch_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    const-wide/16 v11, 0x0

    iput-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput v15, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v11, v15, [B

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    invoke-static/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_3
    const/16 v16, -0x1

    goto :goto_4

    :sswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const/16 v16, 0x5

    goto :goto_4

    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/16 v16, 0x4

    goto :goto_4

    :sswitch_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x3

    goto :goto_4

    :sswitch_a
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const/16 v16, 0x2

    goto :goto_4

    :sswitch_b
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    const/16 v16, 0x1

    goto :goto_4

    :sswitch_c
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    const/16 v16, 0x0

    :goto_4
    const/16 v0, 0x37

    const-string v3, "."

    const/high16 v6, 0x42b40000    # 90.0f

    packed-switch v16, :pswitch_data_1

    :cond_10
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_b

    :pswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultDuration(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)I

    move-result v1

    int-to-double v6, v1

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    const-string v1, "audio.ogg"

    :goto_6
    iput-object v1, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_3
    const-string v1, "video.mp4"

    iput-object v1, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v7

    aget v9, v7, v15

    iput v9, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    aget v7, v7, v5

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultDuration(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)I

    move-result v7

    int-to-double v9, v7

    iput-wide v9, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/io/File;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    const-string v10, "jpg"

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v6, v6, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v1, v6, v6, v0, v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v0, v5

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_11
    :goto_7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultDuration(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)I

    move-result v1

    int-to-double v6, v1

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v3, :cond_12

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    const/4 v3, 0x3

    or-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    :cond_12
    const-string v1, "audio.mp3"

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    add-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    :cond_13
    iput-object v14, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_6
    const-string v0, "animation.gif"

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    const-string v0, "mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "video/mp4"

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    const-string v0, "image/gif"

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    const-string v7, ""

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v7

    aget v9, v7, v15

    iput v9, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    aget v7, v7, v5

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "sticker.webp"

    iput-object v1, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    :try_start_1
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/io/File;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    const-string v10, "webp"

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v1, v3, v6, v6, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1, v6, v6, v0, v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v0, v5

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_15
    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_16
    :goto_b
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    if-nez v0, :cond_17

    iput-object v14, v11, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    :cond_17
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "application/octet-stream"

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_18
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getInlineResultWidthAndHeight(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)[I

    move-result-object v1

    aget v6, v1, v15

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    aget v1, v1, v5

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v15, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v0, v5

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    :cond_19
    move-object v6, v2

    move-object v5, v3

    :goto_c
    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/bots/BotShareSheet;->convert(IJLorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_d
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_6
        0x18fc4 -> :sswitch_5
        0x2ff57c -> :sswitch_4
        0x58d9bd6 -> :sswitch_3
        0x65b3e32 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6b2e132 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_c
        0x18fc4 -> :sswitch_b
        0x2ff57c -> :sswitch_a
        0x58d9bd6 -> :sswitch_9
        0x6b0147b -> :sswitch_8
        0x6b2e132 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static convert(IJLorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 0
    if-nez p4, :cond_0

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_0
    if-nez p5, :cond_1

    iget-object p5, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    if-eqz p1, :cond_8

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    :goto_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    goto/16 :goto_2

    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->vcard:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    goto :goto_1

    :cond_4
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    goto :goto_0

    :cond_6
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaInvoice;

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaWebPage;

    if-eqz p2, :cond_8

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaWebPage;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->force_large_media:Z

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->force_small_media:Z

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->manual:Z

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->manual:Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->safe:Z

    iput-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->safe:Z

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :goto_1
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_8
    :goto_2
    const/4 p1, 0x1

    if-eqz p4, :cond_9

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_3
    iget p4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p4, p4, 0x200

    iput p4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_4

    :cond_9
    if-eqz p5, :cond_a

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iget p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr p4, p1

    iput p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "voice"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "round"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    iput-object p5, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_a
    :goto_4
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    if-eqz p2, :cond_b

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz p2, :cond_b

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_b
    new-instance p2, Lorg/telegram/ui/bots/BotShareSheet$6;

    invoke-direct {p2, p0, v0, p1, p1}, Lorg/telegram/ui/bots/BotShareSheet$6;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-object p2
.end method

.method private synthetic lambda$new$5(ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v14, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v8, v5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    neg-long v10, v14

    invoke-virtual {v5, v10, v11, v8, v9}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_1

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    move/from16 v12, p1

    invoke-direct {v6, v12, v5, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    goto :goto_1

    :cond_1
    move/from16 v12, p1

    :goto_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->query_id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "query_id"

    invoke-virtual {v11, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "id"

    invoke-virtual {v11, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "bot"

    invoke-virtual {v11, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, p5

    move-object v9, v5

    move-object v10, v7

    move-wide v12, v14

    move-wide/from16 v24, v14

    move-object v14, v6

    move-object v15, v6

    move/from16 v18, p11

    move/from16 v19, p12

    invoke-static/range {v8 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;IJ)V

    if-eqz p9, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    invoke-interface/range {p9 .. p9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-wide/from16 v9, v24

    move-object v11, v6

    move-object v12, v6

    invoke-static/range {v8 .. v21}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :cond_2
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    if-nez v1, :cond_5

    iput-boolean v7, v0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v6, "USER_DECLINED"

    :goto_2
    invoke-interface {v2, v6, v3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    if-eqz p13, :cond_6

    invoke-virtual/range {p13 .. p13}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-virtual/range {p7 .. p7}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p7 .. p7}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_3
    return v7
.end method

.method private synthetic lambda$new$6(Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Lorg/telegram/messenger/Utilities$Callback2;IJLjava/lang/Runnable;Landroid/view/View;)V
    .locals 13

    move-object v8, p0

    move-object v3, p1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v8, Lorg/telegram/ui/bots/BotShareSheet;->openedDialogsActivity:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "canSelectTopics"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "dialogsType"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->peer_types:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "allowGroups"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allowMegagroups"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "allowLegacyGroups"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "allowUsers"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "allowChannels"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "allowBots"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->peer_types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$InlineQueryPeerType;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_inlineQueryPeerTypePM;

    if-eqz v12, :cond_2

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_inlineQueryPeerTypeBotPM;

    if-eqz v12, :cond_3

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_inlineQueryPeerTypeBroadcast;

    if-eqz v12, :cond_4

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_inlineQueryPeerTypeChat;

    if-eqz v12, :cond_5

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_inlineQueryPeerTypeMegagroup;

    if-eqz v11, :cond_1

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    new-instance v10, Lorg/telegram/ui/bots/BotShareSheet$5;

    move-object v7, p2

    invoke-direct {v10, p0, v1, p2}, Lorg/telegram/ui/bots/BotShareSheet$5;-><init>(Lorg/telegram/ui/bots/BotShareSheet;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback2;)V

    new-instance v11, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, p1

    move-wide/from16 v4, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/BotShareSheet;ILorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotShareSheet;->dismiss()V

    if-eqz p6, :cond_7

    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method private static synthetic lambda$share$0(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 12

    new-instance v11, Lorg/telegram/ui/bots/BotShareSheet;

    const/4 v0, 0x0

    aget-object v7, p6, v0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/bots/BotShareSheet;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$share$1([Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    aput-object p3, p0, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$share$2(Lorg/telegram/ui/web/HttpGetFileTask;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method private static synthetic lambda$share$3(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p8

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    move-object v12, v0

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;

    const/4 v0, 0x1

    new-array v13, v0, [Ljava/io/File;

    new-instance v14, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;[Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    if-eqz v12, :cond_1

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v0, v11}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;->result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x3

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lorg/telegram/ui/web/HttpGetFileTask;

    new-instance v4, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v13, v1, v14}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda3;-><init>([Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)V

    invoke-direct {v3, v4, v11}, Lorg/telegram/ui/web/HttpGetFileTask;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/web/HttpGetFileTask;->setDestFile(Ljava/io/File;)Lorg/telegram/ui/web/HttpGetFileTask;

    const-wide/32 v4, 0x800000

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/web/HttpGetFileTask;->setMaxSize(J)Lorg/telegram/ui/web/HttpGetFileTask;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, v3}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/HttpGetFileTask;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto :goto_1

    :cond_1
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    const-string v0, "MESSAGE_EXPIRED"

    invoke-interface {v10, v0, v11}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$share$4(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object/from16 v1, p8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static share(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 13

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPreparedInlineMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPreparedInlineMessage;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-wide v5, p2

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPreparedInlineMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    move-object/from16 v1, p4

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPreparedInlineMessage;->id:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda0;

    move-object v2, v12

    move-object v3, p0

    move v4, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v11, v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/bots/BotShareSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/bots/BotShareSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/BotShareSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/bots/BotShareSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v8
.end method

.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotShareSheet;->openedDialogsActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotShareSheet;->sent:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet;->whenDone:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    const-string v1, "USER_DECLINED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/bots/BotShareSheet;->chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v0, -0x1

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BotShareMessageInfo:I

    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet;->botName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->BotShareMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

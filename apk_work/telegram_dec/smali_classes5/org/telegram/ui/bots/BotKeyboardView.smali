.class public abstract Lorg/telegram/ui/bots/BotKeyboardView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;,
        Lorg/telegram/ui/bots/BotKeyboardView$Button;
    }
.end annotation


# instance fields
.field private botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private buttonHeight:I

.field private buttonIcons:Ljava/util/ArrayList;

.field private buttonViews:Ljava/util/ArrayList;

.field private container:Landroid/widget/LinearLayout;

.field private delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

.field private isFullSize:Z

.field private panelHeight:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollView:Landroid/widget/ScrollView;


# direct methods
.method public static synthetic $r8$lambda$7SyAU_nNe54KjpJ3o7sX_1IjGHw(Lorg/telegram/ui/bots/BotKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotKeyboardView;->lambda$setButtons$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonIcons:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotKeyboardView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotKeyboardView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotKeyboardView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$setButtons$0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-interface {v0, p1}, Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;->didPressedButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    return-void
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int v0, v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public invalidateViews()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFullSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    return v0
.end method

.method public setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    if-eqz v1, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->resize:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    const/high16 v4, 0x41200000    # 10.0f

    if-nez v2, :cond_0

    const/16 v2, 0x2a

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int v5, v5, v6

    sub-int/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v2, v5

    int-to-float v2, v2

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v5

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    iput v2, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    const/4 v2, 0x0

    :goto_1
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, v0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    iget v9, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    const/high16 v8, 0x41700000    # 15.0f

    if-nez v2, :cond_1

    const/high16 v11, 0x41700000    # 15.0f

    goto :goto_2

    :cond_1
    const/high16 v11, 0x41200000    # 10.0f

    :goto_2
    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_2

    const/high16 v13, 0x41700000    # 15.0f

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_3
    const/4 v8, -0x1

    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v7

    const/4 v7, 0x0

    :goto_4
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    new-instance v14, Lorg/telegram/ui/bots/BotKeyboardView$Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v14, v0, v9, v15}, Lorg/telegram/ui/bots/BotKeyboardView$Button;-><init>(Lorg/telegram/ui/bots/BotKeyboardView;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v13, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v7, v9, :cond_3

    const/16 v9, 0xa

    const/16 v16, 0xa

    goto :goto_5

    :cond_3
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/16 v18, 0x0

    move v11, v8

    move-object v4, v13

    move/from16 v13, v18

    move-object v3, v14

    move/from16 v14, v16

    move-object v1, v15

    move/from16 v15, v17

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/bots/BotKeyboardView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/bots/BotKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotKeyboardView;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonText:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    instance-of v9, v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;

    if-nez v9, :cond_5

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;

    if-eqz v1, :cond_4

    goto :goto_6

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    sget v1, Lorg/telegram/messenger/R$drawable;->bot_webview:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonIcons:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v15, 0x41000000    # 8.0f

    const/16 v16, 0x0

    const/16 v10, 0xc

    const/high16 v11, 0x41400000    # 12.0f

    const/16 v12, 0x35

    const/4 v13, 0x0

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->delegate:Lorg/telegram/ui/bots/BotKeyboardView$BotKeyboardViewDelegate;

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 5

    iput p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->isFullSize:Z

    if-nez p1, :cond_0

    const/16 p1, 0x2a

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->panelHeight:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr p1, v0

    int-to-float p1, p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    iget-object p1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonHeight:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v4, v0, :cond_1

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/bots/BotKeyboardView;->scrollView:Landroid/widget/ScrollView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackground:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botKeyboardButtonBackgroundPressed:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotKeyboardView;->buttonIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/bots/BotKeyboardView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

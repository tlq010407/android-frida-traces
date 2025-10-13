.class public Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;
    }
.end annotation


# instance fields
.field private final audioView:Landroid/widget/ImageView;

.field private boost:Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private hasAudioView:Z

.field private hasVideoView:Z

.field private final isOnline:[Z

.field private final optionsView:Landroid/widget/ImageView;

.field private showCallButtons:Z

.field statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private final videoView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$I-X7WD9KM80l3TErTDnOqU39-AY(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->lambda$setCallButtonsVisible$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$KzINmfFN0Bvk0a536BYN3uc2w2E(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->lambda$setCallButtonsVisible$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 6

    .line 0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x1

    new-array v4, v3, [Z

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->showCallButtons:Z

    new-instance v4, Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v4, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-eqz p3, :cond_3

    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {v3, v1, v4, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v3, v4, v9, v10}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    or-int/lit8 v11, v6, 0x30

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/high16 v9, 0x42200000    # 40.0f

    const/high16 v12, 0x42200000    # 40.0f

    :goto_1
    if-eqz v4, :cond_2

    const/high16 v4, 0x421c0000    # 39.0f

    const/high16 v14, 0x421c0000    # 39.0f

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x0

    const/16 v9, 0x18

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v13, 0x42040000    # 33.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->updateLayouts()V

    goto :goto_7

    :cond_3
    if-eqz p2, :cond_6

    new-instance v9, Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {v9, v1, v4, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p5, :cond_4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    :goto_4
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBoxCheck:I

    invoke-virtual {v9, v4, v10, v11}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    goto :goto_5

    :cond_4
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    goto :goto_4

    :goto_5
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/16 v3, 0xa

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v6, v6}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_6

    :cond_5
    const/4 v3, 0x3

    :goto_6
    or-int/lit8 v12, v3, 0x10

    const/high16 v15, 0x41600000    # 14.0f

    const/16 v16, 0x0

    const/16 v10, 0x18

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v13, 0x41500000    # 13.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    :goto_7
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x3

    goto :goto_8

    :cond_7
    const/4 v6, 0x5

    :goto_8
    or-int/lit8 v13, v6, 0x10

    const/high16 v16, 0x41400000    # 12.0f

    const/16 v17, 0x0

    const/16 v11, 0x20

    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v14, 0x41400000    # 12.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v6, Lorg/telegram/messenger/R$drawable;->menu_phone:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-direct {v6, v11, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_8

    const/4 v11, 0x3

    goto :goto_9

    :cond_8
    const/4 v11, 0x5

    :goto_9
    or-int/lit8 v14, v11, 0x10

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x42500000    # 52.0f

    if-eqz v6, :cond_9

    const/high16 v15, 0x42500000    # 52.0f

    goto :goto_a

    :cond_9
    const/high16 v15, 0x41400000    # 12.0f

    :goto_a
    if-eqz v6, :cond_a

    const/high16 v17, 0x41400000    # 12.0f

    goto :goto_b

    :cond_a
    const/high16 v17, 0x42500000    # 52.0f

    :goto_b
    const/16 v18, 0x0

    const/16 v12, 0x20

    const/high16 v13, 0x42000000    # 32.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_videocall:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    const/4 v7, 0x3

    :cond_b
    or-int/lit8 v10, v7, 0x10

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v14, 0x0

    const/16 v8, 0x20

    const/high16 v9, 0x42000000    # 32.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static buildCountDownTime(J)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x36ee80

    div-long v4, p0, v2

    rem-long/2addr p0, v2

    const-wide/32 v2, 0xea60

    div-long v6, p0, v2

    rem-long/2addr p0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x0

    const-string v3, ":"

    const-string v10, "%02d"

    cmp-long v11, v4, v8

    if-lez v11, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-static {v10, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setCallButtonsVisible$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setCallButtonsVisible$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    return-object v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method protected needCheck()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->getDrawUnchecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onDetachedFromWindow()V

    return-void
.end method

.method public setBoost(Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    sget v0, Lorg/telegram/messenger/R$string;->BoostExpireOn:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget v3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->expires:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    if-lez p1, :cond_0

    int-to-long v0, p1

    mul-long v0, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    sget p1, Lorg/telegram/messenger/R$string;->BoostingAvailableIn:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->buildCountDownTime(J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    :goto_0
    return-void
.end method

.method public setCallButtons(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasAudioView:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->showCallButtons:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasVideoView:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->showCallButtons:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCallButtonsVisible(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->showCallButtons:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->showCallButtons:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasAudioView:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasAudioView:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;)V

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasVideoView:Z

    if-eqz v2, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasVideoView:Z

    if-nez p1, :cond_6

    :cond_5
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;)V

    :cond_6
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasAudioView:Z

    if-eqz v3, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->audioView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz p1, :cond_9

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasAudioView:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasVideoView:Z

    if-eqz v4, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->videoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->hasVideoView:Z

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    if-gtz p2, :cond_1

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "Subscribers"

    goto :goto_1

    :cond_2
    const-string p1, "Members"

    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->DiscussChannel:I

    goto :goto_2

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 p1, 0xc8

    if-le p2, p1, :cond_5

    const p1, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    return-void
.end method

.method public setCheckboxAlpha(FZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_1
    return-void
.end method

.method public setCustomUser(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    const/4 p2, 0x0

    aput-boolean p2, p1, p2

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    aget-boolean p2, p3, p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setOptions(Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->optionsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-lez v0, :cond_0

    const-string v2, "BotUsers"

    const/16 v3, 0x2c

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    invoke-static {v0, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->isOnline:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLObject;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public updateTimer()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    if-lez v1, :cond_0

    int-to-long v5, v1

    mul-long v5, v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v5, v3

    sget v1, Lorg/telegram/messenger/R$string;->BoostingAvailableIn:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->buildCountDownTime(J)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->BoostExpireOn:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterBoostExpired()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->expires:I

    int-to-long v7, v7

    mul-long v7, v7, v3

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    :goto_0
    return-void
.end method

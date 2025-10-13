.class public Lorg/telegram/ui/Business/BusinessBotButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private botId:J

.field private final currentAccount:I

.field private dialogId:J

.field private flags:I

.field private leftMargin:F

.field private manageUrl:Ljava/lang/String;

.field private final menuView:Landroid/widget/ImageView;

.field private final pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

.field private paused:Z

.field private final subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final titleView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$-zCiV6C2OIaXYF5zw34UD61q81U(Lorg/telegram/ui/Business/BusinessBotButton;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/BusinessBotButton;->lambda$new$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$550M6GcBr_Sg4fGMNk_Htw8r-cY(Lorg/telegram/ui/Business/BusinessBotButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/BusinessBotButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TECeooc0VaYDLvyqmUvzZwLXvPg(Lorg/telegram/ui/Business/BusinessBotButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessBotButton;->updateTextRightPadding()V

    return-void
.end method

.method public static synthetic $r8$lambda$YOawwZkbswk0klySmfncJheHa4o(Lorg/telegram/ui/Business/BusinessBotButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessBotButton;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$abNJkZYemC8BjEYq4msIhfzaKmU(Lorg/telegram/ui/Business/BusinessBotButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessBotButton;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/ui/Business/BusinessBotButton;->botId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v14, 0x0

    const/16 v8, 0x20

    const/high16 v9, 0x42000000    # 32.0f

    const/16 v10, 0x13

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/BusinessBotButton;->textLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Business/BusinessBotButton;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean v3, v7, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v8

    invoke-virtual {v8, v6, v6, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/16 v10, 0x11

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/BusinessBotButton;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean v3, v5, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v7

    invoke-virtual {v7, v6, v6, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    sget v9, Lorg/telegram/messenger/R$string;->BizBotStatusManages:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    const/16 v9, 0x11

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v16, 0x42440000    # 49.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x10

    const/high16 v14, 0x42500000    # 52.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v5

    invoke-virtual {v5, v6, v6, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    sget-object v17, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x15e

    const/high16 v12, 0x3f400000    # 0.75f

    move-object v11, v4

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setScaleProperty(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const v11, 0x3df5c28f    # 0.12f

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v6

    invoke-static {v5, v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessBotButton;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/BusinessBotButton;)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setOnWidthUpdatedListener(Ljava/lang/Runnable;)V

    iget-boolean v3, v0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->BizBotStart:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->BizBotStop:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x42440000    # 49.0f

    const/4 v11, 0x0

    const/16 v5, 0x40

    const/high16 v6, 0x41e00000    # 28.0f

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Business/BusinessBotButton;->menuView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda2;

    move-object/from16 v4, p2

    invoke-direct {v1, v0, v4, v2}, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/BusinessBotButton;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v9, 0x41100000    # 9.0f

    const/4 v10, 0x0

    const/16 v4, 0x20

    const/high16 v5, 0x42000000    # 32.0f

    const/16 v6, 0x15

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->BizBotStart:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->BizBotStop:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->BizBotStatusStopped:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->BizBotStatusManages:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->flags:I

    or-int/2addr p1, v0

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->flags:I

    goto :goto_3

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->flags:I

    and-int/lit8 p1, p1, -0x2

    goto :goto_2

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_botflags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->flags:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$toggleConnectedBotPaused;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$toggleConnectedBotPaused;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$toggleConnectedBotPaused;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$toggleConnectedBotPaused;->paused:Z

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$disablePeerConnectedBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$disablePeerConnectedBot;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$disablePeerConnectedBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_botid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_boturl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_botflags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->peerSettingsDidLoad:I

    iget-wide v2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/BusinessChatbotController;->getInstance(I)Lorg/telegram/ui/Business/BusinessChatbotController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Business/BusinessChatbotController;->invalidate(Z)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->manageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Business/BusinessBotButton;->menuView:Landroid/widget/ImageView;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    sget p3, Lorg/telegram/messenger/R$string;->BizBotRemove:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/BusinessBotButton;)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->manageUrl:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v0, Lorg/telegram/messenger/R$string;->BizBotManage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/BusinessBotButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/BusinessBotButton;)V

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_0
    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private updateTextRightPadding()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->leftMargin:F

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    return-void
.end method


# virtual methods
.method public set(JJLjava/lang/String;I)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->dialogId:J

    iput-wide p3, p0, Lorg/telegram/ui/Business/BusinessBotButton;->botId:J

    iput-object p5, p0, Lorg/telegram/ui/Business/BusinessBotButton;->manageUrl:Ljava/lang/String;

    iput p6, p0, Lorg/telegram/ui/Business/BusinessBotButton;->flags:I

    const/4 p1, 0x1

    and-int/lit8 p2, p6, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    iget p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-boolean p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->BizBotStatusStopped:I

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->BizBotStatusManages:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->pauseButton:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    iget-boolean p2, p0, Lorg/telegram/ui/Business/BusinessBotButton;->paused:Z

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->BizBotStart:I

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->BizBotStop:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Business/BusinessBotButton;->leftMargin:F

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessBotButton;->textLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Business/BusinessBotButton;->updateTextRightPadding()V

    return-void
.end method

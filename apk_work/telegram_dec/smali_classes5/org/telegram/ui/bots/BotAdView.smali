.class public Lorg/telegram/ui/bots/BotAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final channelTitleView:Landroid/widget/TextView;

.field public final closeView:Landroid/widget/ImageView;

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private invalidatedMeasure:Z

.field private final layout:Landroid/widget/LinearLayout;

.field public final removeView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$P25H35BgaKK2z3c9Musq0lGku4E(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/BotAdView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9BNqyvfPAXS4TKUxMYl96TORbs(Lorg/telegram/ui/bots/BotAdView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotAdView;->lambda$set$1(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Va83yWJilzRQbxEY2IMw9hPpCRQ(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotAdView;->lambda$set$4(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pf5881vKpvzId0H2abS4VU4l_Dg(Lorg/telegram/ui/bots/BotAdView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotAdView;->lambda$set$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$puxQK1w-OL9Nff1GJAcexXGGA-U(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotAdView;->lambda$set$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/bots/BotAdView;->invalidatedMeasure:Z

    iput-object v2, v0, Lorg/telegram/ui/bots/BotAdView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/bots/BotAdView;->layout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    const v6, 0x3ccccccd    # 0.025f

    const v7, 0x3fb33333    # 1.4f

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/16 v6, 0x77

    const/4 v7, -0x1

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-static {v8, v5, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x3

    const/4 v12, -0x2

    invoke-static {v7, v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/bots/BotAdView;->titleView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v10, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static {v12, v12, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v10}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/bots/BotAdView;->removeView:Landroid/widget/TextView;

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v10, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-static {v10, v9, v12}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const v12, 0x40ca8f5c    # 6.33f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v10, v14, v5, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lorg/telegram/messenger/R$string;->BotAdWhat:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    const/4 v14, -0x2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x13

    const/16 v18, 0x5

    const/16 v19, 0x1

    invoke-static/range {v14 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/bots/BotAdView;->channelTitleView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v18, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/bots/BotAdView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/16 v7, 0x30

    const/16 v8, 0x30

    const/16 v9, 0x35

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->closeView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const/4 v7, 0x5

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v12, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    const/4 v11, 0x3

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$set$1(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Landroid/text/style/ClickableSpan;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/telegram/ui/ChatActivity;->logSponsoredClicked(Lorg/telegram/messenger/MessageObject;ZZ)V

    :cond_0
    instance-of p2, p3, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_3

    move-object p2, p3

    check-cast p2, Landroid/text/style/URLSpan;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->openHashtagSearch(Ljava/lang/String;Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/bots/BotAdView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$set$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$set$3(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4}, Lorg/telegram/ui/ChatActivity;->logSponsoredClicked(Lorg/telegram/messenger/MessageObject;ZZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean v8, p1, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private static synthetic lambda$set$4(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public height()I
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotAdView;->invalidatedMeasure:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotAdView;->invalidatedMeasure:Z

    return-void
.end method

.method public set(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/bots/BotAdView;->invalidatedMeasure:Z

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->sponsoredTitle:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/bots/BotAdView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v7, v0, Lorg/telegram/ui/bots/BotAdView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x30

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Lorg/telegram/ui/bots/BotAdView;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v12, :cond_1

    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v8, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    iget-object v11, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    :goto_0
    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v13, "48_48"

    const-string v15, "48_48"

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v8, v11, v3, v9, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9, v11, v3, v8, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v12, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v8, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->sponsoredMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v8}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    goto :goto_0

    :cond_2
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->sponsoredPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_3

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v8, v11, v3, v9, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->sponsoredPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9, v11, v3, v8, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v12, v2, Lorg/telegram/messenger/MessageObject;->sponsoredPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v8, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->sponsoredPhoto:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v8}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v13, "48_48"

    const-string v15, "48_48"

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    iget-object v8, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Lorg/telegram/ui/bots/BotAdView;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    :cond_4
    :goto_1
    new-instance v8, Landroid/text/SpannableStringBuilder;

    sget v9, Lorg/telegram/messenger/R$string;->SponsoredMessageAd:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v13, v0, Lorg/telegram/ui/bots/BotAdView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-direct {v11, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v8, v11, v6, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v11, " \u2009"

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v11, v0, Lorg/telegram/ui/bots/BotAdView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    const v15, 0x4232a3d8    # 44.660004f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    iget-object v15, v0, Lorg/telegram/ui/bots/BotAdView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    iget-object v10, v0, Lorg/telegram/ui/bots/BotAdView;->removeView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v13, v10

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v13, v10

    if-eqz v3, :cond_5

    const/high16 v3, 0x42680000    # 58.0f

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v13, v3

    cmpl-float v3, v11, v13

    if-lez v3, :cond_6

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, v0, Lorg/telegram/ui/bots/BotAdView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v6, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->channelTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->channelTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->channelTitleView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x2

    const/16 v4, 0x53

    const/4 v5, -0x1

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v4, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotAdView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setOnLinkPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V

    iget-object v3, v0, Lorg/telegram/ui/bots/BotAdView;->removeView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda1;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, v2, v7}, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotAdView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/bots/BotAdView;->closeView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda3;

    move-object/from16 v3, p4

    invoke-direct {v2, v3}, Lorg/telegram/ui/bots/BotAdView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

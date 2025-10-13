.class public Lorg/telegram/ui/Components/TableView;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TableView$TableRowTitle;,
        Lorg/telegram/ui/Components/TableView$TableRowContent;,
        Lorg/telegram/ui/Components/TableView$TableRowFullContent;
    }
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final hw:F

.field private final path:Landroid/graphics/Path;

.field private final radii:[F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final w:F


# direct methods
.method public static synthetic $r8$lambda$94D2tet7nd1WDB-XBAcVpSQDBqE(Ljava/lang/CharSequence;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/TableView;->lambda$addRowMonospaced$0(Ljava/lang/CharSequence;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rEbVSy3GeF1keOVG62K5kjVlt_A(JILorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;Landroid/graphics/drawable/Drawable;I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/TableView;->lambda$addRowUserWithEmojiStatus$1(JILorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;Landroid/graphics/drawable/Drawable;I[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView;->path:Landroid/graphics/Path;

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView;->radii:[F

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView;->borderPaint:Landroid/graphics/Paint;

    const p1, 0x3f28f5c3    # 0.66f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/TableView;->w:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/TableView;->hw:F

    iput-object p2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0, v0}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TableView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TableView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableView;->radii:[F

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableView;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TableView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/TableView;->hw:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableView;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TableView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TableView;->borderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private static synthetic lambda$addRowMonospaced$0(Ljava/lang/CharSequence;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$addRowUserWithEmojiStatus$1(JILorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;Landroid/graphics/drawable/Drawable;I[Ljava/lang/Object;)V
    .locals 6

    const-wide/32 v0, 0x28ae10

    cmp-long p7, p0, v0

    if-eqz p7, :cond_7

    invoke-static {p0, p1}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p7

    if-eqz p7, :cond_0

    goto :goto_5

    :cond_0
    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    if-lez v4, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v4

    cmp-long p2, v4, v0

    if-eqz p2, :cond_5

    invoke-virtual {p3, v4, v5, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result p0

    invoke-virtual {p3, p0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    :goto_3
    invoke-virtual {p4, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p3, p5, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p3, p7, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_3

    :cond_6
    invoke-virtual {p4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_4
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const p1, 0x414a8f5c    # 12.66f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v3, 0x411547ae    # 9.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v4, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    iput v3, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    new-instance v3, Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    invoke-direct {v3, p0, v0, v2}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;-><init>(Lorg/telegram/ui/Components/TableView;Landroid/view/View;Z)V

    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method public addFullRow(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 9

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p2, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    iput v1, p2, Landroid/widget/TableRow$LayoutParams;->span:I

    new-instance v1, Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;-><init>(Lorg/telegram/ui/Components/TableView;Landroid/view/View;)V

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance p2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    new-instance v3, Lorg/telegram/ui/Components/TableView$TableRowTitle;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/TableView$TableRowTitle;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v4, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    new-instance v1, Lorg/telegram/ui/Components/TableView$TableRowContent;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/TableView$TableRowContent;-><init>(Lorg/telegram/ui/Components/TableView;Landroid/view/View;)V

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const-string p2, " "

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4, v2}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    new-instance p2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/TableRow$LayoutParams;

    const/4 p4, -0x2

    const/4 v1, -0x1

    invoke-direct {p3, p4, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    new-instance p4, Lorg/telegram/ui/Components/TableView$TableRowTitle;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/TableView$TableRowTitle;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v1, p3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    new-instance p3, Lorg/telegram/ui/Components/TableView$TableRowContent;

    invoke-direct {p3, p0, v0}, Lorg/telegram/ui/Components/TableView$TableRowContent;-><init>(Lorg/telegram/ui/Components/TableView;Landroid/view/View;)V

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;
    .locals 7

    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v1, v2, p2

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1
.end method

.method public addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v1, 0x414a8f5c    # 12.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v3, 0x411547ae    # 9.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Lorg/telegram/ui/Components/TableView$5;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/TableView$5;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1
.end method

.method public addRowMonospaced(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 9

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x414a8f5c    # 12.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v2, 0x411547ae    # 9.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x412a8f5c    # 10.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "fonts/rmono.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p3, p3

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p3, 0x4

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x42080000    # 34.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_0

    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    iget-object v3, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lorg/telegram/ui/Components/TableView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p4}, Lorg/telegram/ui/Components/TableView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const p4, 0x3dcccccd    # 0.1f

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    const/4 p4, 0x7

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x15

    const/16 p4, 0x1e

    invoke-static {p4, p4, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1
.end method

.method public addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;
    .locals 4

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    new-instance v2, Lorg/telegram/ui/Components/TableView$TableRowTitle;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/TableView$TableRowTitle;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v3, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    new-instance v1, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lorg/telegram/ui/Components/TableView$TableRowContent;-><init>(Lorg/telegram/ui/Components/TableView;Landroid/view/View;Z)V

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 8

    .line 0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1
.end method

.method public addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 8

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v1, 0x414a8f5c    # 12.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v3, 0x411547ae    # 9.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v1, Lorg/telegram/ui/AvatarSpan;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {v1, v0, p2, v3}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    const-wide/32 v3, 0x28ae10

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    cmp-long v7, p3, v3

    if-nez v7, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StarsTransactionHidden:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "anonymous"

    invoke-static {p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v1, p3}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    goto :goto_5

    :cond_0
    invoke-static {p3, p4}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v3

    if-eqz v3, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fragment"

    invoke-static {p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p3, p4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v1, p3}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x1

    goto :goto_5

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    if-ltz v5, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p2}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_2
    move-object p2, p4

    goto :goto_0

    :cond_3
    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    if-nez p2, :cond_5

    const-string p4, ""

    goto :goto_4

    :cond_5
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, p2}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_2

    :goto_5
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p2, 0x21

    invoke-virtual {v3, v1, v6, v2, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p4, :cond_6

    new-instance p4, Lorg/telegram/ui/Components/TableView$4;

    invoke-direct {p4, p0, p5}, Lorg/telegram/ui/Components/TableView$4;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p5

    const/4 v1, 0x3

    invoke-virtual {v3, p4, v1, p5, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-eqz p6, :cond_7

    new-instance p2, Lorg/telegram/ui/Components/ButtonSpan;

    iget-object p4, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p6, p7, p4}, Lorg/telegram/ui/Components/ButtonSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->addButton(Lorg/telegram/ui/Components/ButtonSpan;)V

    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_8

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public addRowUserWithEmojiStatus(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 14

    move-object v0, p0

    move-wide/from16 v2, p3

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v9, v1, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v1, 0x414a8f5c    # 12.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, 0x411547ae    # 9.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v9, v4, v6, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v4, v0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    const/16 v1, 0xe

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    new-instance v1, Lorg/telegram/ui/AvatarSpan;

    const/high16 v4, 0x41c00000    # 24.0f

    move/from16 v10, p2

    invoke-direct {v1, v9, v10, v4}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    const-wide/32 v4, 0x28ae10

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x1

    cmp-long v11, v2, v4

    if-nez v11, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionHidden:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "anonymous"

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v11, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    goto :goto_3

    :cond_0
    invoke-static/range {p3 .. p4}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fragment"

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v11, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    if-ltz v7, :cond_2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_1
    move-object v4, v5

    goto :goto_0

    :cond_2
    neg-long v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v5, ""

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v4}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_1

    :goto_3
    new-instance v11, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x  "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x21

    invoke-virtual {v11, v1, v6, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v5, :cond_4

    invoke-virtual {v9, v8}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/TableView$2;

    move-object/from16 v5, p5

    invoke-direct {v1, p0, v5}, Lorg/telegram/ui/Components/TableView$2;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v11, v1, v7, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v4, v0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    new-instance v12, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v12, v9, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v12, v1, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offset(II)V

    new-instance v1, Lorg/telegram/ui/Components/TableView$3;

    invoke-direct {v1, p0, v12}, Lorg/telegram/ui/Components/TableView$3;-><init>(Lorg/telegram/ui/Components/TableView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v8, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v13, Lorg/telegram/ui/Components/TableView$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-wide/from16 v2, p3

    move/from16 v4, p2

    move-object v5, v12

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/TableView$$ExternalSyntheticLambda1;-><init>(JILorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksSimpleTextView;Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, v9, v2, v13}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    invoke-virtual {v1, v9, v2, v13}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move-object v1, p1

    invoke-virtual {p0, p1, v9}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    move-result-object v1

    return-object v1
.end method

.method public addWalletAddressRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;
    .locals 11

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const-string v2, "fonts/rmono.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v4, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const-string v5, "\n"

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_0

    new-instance v4, Lorg/telegram/ui/Components/TableView$1;

    invoke-direct {v4, p0, p2, p3}, Lorg/telegram/ui/Components/TableView$1;-><init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 v5, 0x21

    invoke-virtual {v2, v4, p3, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    const p2, 0x414a8f5c    # 12.66f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const p3, 0x411547ae    # 9.33f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v3, 0x412a8f5c    # 10.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {v1, p2, v2, v3, p3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x77

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/TableLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView;->borderPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/telegram/ui/Components/TableView;->w:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView;->borderPaint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_table_border:I

    iget-object p3, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView;->backgroundPaint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_table_background:I

    iget-object p3, p0, Lorg/telegram/ui/Components/TableView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_b

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    instance-of p4, p4, Landroid/widget/TableRow;

    if-nez p4, :cond_0

    goto :goto_9

    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TableRow;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_a

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/TableView$TableRowTitle;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/Components/TableView$TableRowTitle;

    if-nez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ne p3, v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/TableView$TableRowTitle;->setFirstLast(ZZ)V

    goto :goto_8

    :cond_3
    instance-of v2, v1, Lorg/telegram/ui/Components/TableView$TableRowContent;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/ui/Components/TableView$TableRowContent;

    if-nez p3, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v4, p1, -0x1

    if-ne p3, v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/TableView$TableRowContent;->setFirstLast(ZZ)V

    goto :goto_8

    :cond_6
    instance-of v2, v1, Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    if-eqz v2, :cond_9

    check-cast v1, Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    if-nez p3, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v4, p1, -0x1

    if-ne p3, v4, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;->setFirstLast(ZZ)V

    :cond_9
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    :goto_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

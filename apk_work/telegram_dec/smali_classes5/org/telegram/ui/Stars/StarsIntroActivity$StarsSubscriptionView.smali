.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsSubscriptionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field public final priceLayout:Landroid/widget/LinearLayout;

.field public final priceSubtitleView:Landroid/widget/TextView;

.field public final priceTitleView:Landroid/widget/TextView;

.field public final productView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final subtitleView:Landroid/widget/TextView;

.field public final textLayout:Landroid/widget/LinearLayout;

.field private threeLines:Z

.field public final titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v3, p2

    iput v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/16 v5, 0x2e

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/16 v8, 0x13

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->textLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v15, 0x12

    const/16 v16, 0x0

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v15, 0x1

    const/4 v9, -0x1

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42880000    # 68.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42680000    # 58.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    cmp-long v9, v3, v7

    iget v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    if-gez v9, :cond_1

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    xor-int/2addr v3, v6

    move-object/from16 v21, v4

    move v4, v3

    move-object/from16 v3, v21

    :goto_1
    iget v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v3, v10, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v9, 0x41600000    # 14.0f

    const/16 v10, 0x8

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v11, :cond_2

    new-instance v11, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    iget v13, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-direct {v11, v12, v13, v9}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    invoke-virtual {v11, v5}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    new-instance v12, Landroid/text/SpannableString;

    const-string v13, "x"

    invoke-direct {v12, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v13, 0x21

    invoke-virtual {v12, v11, v5, v6, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v14, v11, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v11}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v16, "14_14"

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    iget-boolean v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    if-eqz v11, :cond_4

    const/high16 v9, 0x41500000    # 13.0f

    :cond_4
    invoke-virtual {v3, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v3, v3

    cmp-long v9, v3, v7

    if-gez v9, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpired:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusExpired:I

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenews:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2b50\ufe0f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v3, 0x278d00

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionPerMonth:I

    goto :goto_3

    :cond_7
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    const-string v3, "per minute"

    goto :goto_4

    :cond_8
    const/16 v3, 0x12c

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    const-string v3, "per 5 minutes"

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v11, v9

    cmp-long v9, v11, v7

    if-gez v9, :cond_a

    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpired:I

    goto :goto_6

    :cond_a
    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpires:I

    :goto_6
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v5

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v1, :cond_c

    if-eqz v4, :cond_b

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusBizCancelled:I

    goto :goto_7

    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusBotCancelled:I

    goto :goto_7

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusCancelled:I

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_8
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->needDivider:Z

    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

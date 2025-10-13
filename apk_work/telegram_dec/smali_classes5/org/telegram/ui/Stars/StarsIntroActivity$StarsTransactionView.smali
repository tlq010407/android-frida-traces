.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsTransactionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;
    }
.end annotation


# static fields
.field public static cachedPlatformDrawables:Ljava/util/HashMap;


# instance fields
.field private final amountTextView:Landroid/widget/TextView;

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private cancelCurrentGift:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private final dateTextView:Landroid/widget/TextView;

.field private final dateTextViewParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final imageView2:Lorg/telegram/ui/Components/BackupImageView;

.field private final imageViewContainer:Landroid/widget/FrameLayout;

.field private imageViewCount:I

.field private needDivider:Z

.field private final star:Landroid/text/SpannableString;

.field private final subtitleTextView:Landroid/widget/TextView;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private threeLines:Z

.field private final titleTextView:Landroid/widget/TextView;

.field private final titleTextViewParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final ton:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    move/from16 v4, p2

    iput v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->currentAccount:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$1;

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/16 v7, 0x73

    const/16 v8, 0x48

    const/4 v9, -0x1

    invoke-static {v8, v9, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView2:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/high16 v15, 0x41500000    # 13.0f

    const/16 v16, 0x0

    const/16 v10, 0x2e

    const/high16 v11, 0x42380000    # 46.0f

    const/16 v12, 0x10

    const/high16 v13, 0x41500000    # 13.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->textLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x77

    const/4 v8, -0x2

    invoke-static {v8, v9, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v6, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v15, 0x0

    const v16, 0x408a8f5c    # 4.33f

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextViewParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v16, 0x3ea8f5c3    # 0.33f

    const/4 v11, -0x1

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v6, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextViewParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x4174cccd    # 15.3f

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x15

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "\u2b50\ufe0f"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->star:Landroid/text/SpannableString;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "TON"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->ton:Landroid/text/SpannableString;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    return p0
.end method

.method public static getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;
    .locals 1

    .line 0
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;I)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getPlatformDrawable(Ljava/lang/String;I)Lorg/telegram/ui/Components/CombinedDrawable;
    .locals 1

    .line 0
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    invoke-static {p1, p0}, Lorg/telegram/ui/Cells/SessionCell;->createDrawable(ILjava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cachedPlatformDrawables:Ljava/util/HashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cachedPlatformDrawables:Ljava/util/HashMap;

    :cond_1
    sget-object p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cachedPlatformDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-nez p1, :cond_2

    sget-object p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cachedPlatformDrawables:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lorg/telegram/ui/Cells/SessionCell;->createDrawable(ILjava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42900000    # 72.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->threeLines:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x428e0000    # 71.0f

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

.method public set(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ZZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v7, v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v9, 0x20000

    and-int/2addr v9, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    const-wide/16 v20, 0x0

    cmp-long v9, v5, v20

    if-eqz v9, :cond_2

    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v9, :cond_5

    :cond_2
    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-nez v9, :cond_5

    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-nez v9, :cond_5

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v9, :cond_3

    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v9, :cond_5

    :cond_3
    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v9, :cond_4

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v9, v9, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->threeLines:Z

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextViewParams:Landroid/widget/LinearLayout$LayoutParams;

    const v22, 0x408a8f5c    # 4.33f

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_4
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-boolean v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->threeLines:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    iget-boolean v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->threeLines:Z

    if-eqz v12, :cond_8

    const/high16 v12, 0x41500000    # 13.0f

    goto :goto_6

    :cond_8
    const/high16 v12, 0x41600000    # 14.0f

    :goto_6
    invoke-virtual {v9, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    iget v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    int-to-long v13, v12

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatShortDateTime(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    const-string v12, " \u2014 "

    if-eqz v9, :cond_9

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$string;->StarsRefunded:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/CharSequence;

    aput-object v13, v15, v11

    aput-object v12, v15, v10

    aput-object v14, v15, v4

    invoke-static {v15}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_7
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_9
    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$string;->StarsFailed:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/CharSequence;

    aput-object v13, v15, v11

    aput-object v12, v15, v10

    aput-object v14, v15, v4

    invoke-static {v15}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_7

    :cond_a
    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v9, :cond_b

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$string;->StarsPending:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/CharSequence;

    aput-object v13, v15, v11

    aput-object v12, v15, v10

    aput-object v14, v15, v4

    invoke-static {v15}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_7

    :cond_b
    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cancelCurrentGift:Ljava/lang/Runnable;

    const/4 v15, 0x0

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    iput-object v15, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->cancelCurrentGift:Ljava/lang/Runnable;

    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationX(F)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView2:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v23, 0x42380000    # 46.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v9, v12}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    const-string v24, " "

    if-eqz v9, :cond_d

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v9, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v12, 0x2e

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v6, v8, v9, v12, v13}, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$StarGift;IF)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionUpgraded:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2e

    :cond_d
    const/16 v9, 0x8

    const-string v12, "fragment"

    const-string v14, ""

    cmp-long v13, v5, v20

    if-eqz v13, :cond_3b

    invoke-static {v5, v6}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v13

    if-eqz v13, :cond_e

    sget v5, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    goto :goto_b

    :cond_e
    cmp-long v12, v5, v20

    if-ltz v12, :cond_10

    iget v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_f

    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    :goto_9
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v5, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_10
    iget v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    :goto_a
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v5, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-nez v5, :cond_12

    move-object v5, v14

    goto :goto_b

    :cond_12
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_b
    iget-object v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const-string v13, "x"

    const/high16 v9, 0x40800000    # 4.0f

    const/16 v15, 0x21

    if-eqz v12, :cond_1e

    new-instance v6, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->currentAccount:I

    const/high16 v14, 0x41800000    # 16.0f

    invoke-direct {v6, v8, v12, v14}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6, v11, v10, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, v6, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v12, 0x10

    invoke-static {v6, v9, v12}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v5, :cond_16

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "x "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v8}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v5, v6, v11, v10, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v6}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result v6

    if-nez v6, :cond_14

    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v6, :cond_13

    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftPurchaseRefund:I

    goto :goto_c

    :cond_13
    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftSale:I

    :goto_c
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    :cond_14
    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v6, :cond_15

    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftSaleRefund:I

    goto :goto_c

    :cond_15
    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftPurchase:I

    goto :goto_c

    :goto_d
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    :goto_e
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_16
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v5, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v5, :cond_18

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v6, :cond_17

    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftTransferRefund:I

    goto :goto_f

    :cond_17
    sget v6, Lorg/telegram/messenger/R$string;->StarGiftTransactionGiftTransfer:I

    :goto_f
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_10
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_18
    iget-boolean v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v12, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v6, v12, v20

    if-lez v6, :cond_1a

    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v6, :cond_19

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedUpgrade:I

    goto :goto_11

    :cond_19
    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedSent:I

    goto :goto_11

    :cond_1a
    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedConverted:I

    :goto_11
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v3, [Ljava/lang/CharSequence;

    aput-object v8, v9, v11

    aput-object v24, v9, v10

    aput-object v6, v9, v4

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_10

    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v12, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v6, v12, v20

    if-lez v6, :cond_1c

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionConverted:I

    goto :goto_12

    :cond_1c
    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v6, :cond_1d

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionUpgraded:I

    goto :goto_12

    :cond_1d
    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransactionSent:I

    :goto_12
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v3, [Ljava/lang/CharSequence;

    aput-object v8, v9, v11

    aput-object v24, v9, v10

    aput-object v6, v9, v4

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_10

    :cond_1e
    iget-boolean v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v12, :cond_21

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    const v6, 0x278d00

    if-ne v5, v6, :cond_1f

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarsTransactionSubscriptionMonthly:I

    goto :goto_f

    :cond_1f
    const/16 v6, 0x12c

    if-ne v5, v6, :cond_20

    const-string v5, "5 minutes"

    goto :goto_13

    :cond_20
    const-string v5, "Minute"

    :goto_13
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const-string v5, "%s subscription fee"

    invoke-static {v8, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_e

    :cond_21
    iget-boolean v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v12, :cond_23

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_22

    const/16 v12, 0x8

    goto :goto_14

    :cond_22
    const/4 v12, 0x0

    :goto_14
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_messages:I

    const-string v8, "StarsTransactionMessageFee"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    :cond_23
    iget-boolean v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v12, :cond_25

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_24

    const/16 v12, 0x8

    goto :goto_15

    :cond_24
    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarsTransactionPremiumGift:I

    goto/16 :goto_f

    :cond_25
    if-eqz v8, :cond_27

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_26

    const/16 v12, 0x8

    goto :goto_16

    :cond_26
    const/4 v12, 0x0

    :goto_16
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarTransactionCommission:I

    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-static {v8}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v11

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    :cond_27
    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v8, :cond_29

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_28

    const/16 v12, 0x8

    goto :goto_17

    :cond_28
    const/4 v12, 0x0

    :goto_17
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    goto/16 :goto_f

    :cond_29
    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_2b

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2a

    const/16 v12, 0x8

    goto :goto_18

    :cond_2a
    const/4 v12, 0x0

    :goto_18
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarsGiveawayPrizeReceived:I

    goto/16 :goto_f

    :cond_2b
    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz v8, :cond_2d

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2c

    const/16 v12, 0x8

    goto :goto_19

    :cond_2c
    const/4 v12, 0x0

    :goto_19
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarsReactionsSent:I

    goto/16 :goto_f

    :cond_2d
    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_35

    if-eqz p2, :cond_2e

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->StarMediaPurchase:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_2e
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->StarMediaPurchase:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_2f

    const/16 v12, 0x8

    goto :goto_1a

    :cond_2f
    const/4 v12, 0x0

    :goto_1a
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1b
    iput v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    const/4 v5, 0x0

    :goto_1c
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_33

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v5, :cond_30

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    :goto_1d
    move-object v12, v8

    goto :goto_1e

    :cond_30
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView2:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_1d

    :goto_1e
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_31

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v8, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    :goto_1f
    move-object v13, v6

    goto :goto_20

    :cond_31
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v8, :cond_32

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    goto :goto_1f

    :cond_32
    const/4 v13, 0x0

    :goto_20
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v16, 0x0

    const/4 v6, 0x0

    const-string v14, "46_46"

    const/4 v15, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v19

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    add-int/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    add-int/2addr v5, v10

    goto :goto_1c

    :cond_33
    const/16 v8, 0x8

    const/4 v5, 0x0

    :goto_21
    iget v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    if-ge v5, v6, :cond_48

    if-nez v5, :cond_34

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_22

    :cond_34
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView2:Lorg/telegram/ui/Components/BackupImageView;

    :goto_22
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    iget v14, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    int-to-float v14, v14

    div-float/2addr v14, v9

    sub-float v14, v13, v14

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    mul-float v14, v14, v15

    add-float/2addr v12, v14

    invoke-virtual {v6, v12}, Landroid/view/View;->setTranslationX(F)V

    iget v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageViewCount:I

    int-to-float v12, v12

    div-float/2addr v12, v9

    sub-float/2addr v13, v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v13, v13, v9

    invoke-virtual {v6, v13}, Landroid/view/View;->setTranslationY(F)V

    add-int/2addr v5, v10

    goto :goto_21

    :cond_35
    const/16 v8, 0x8

    iget-object v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v12, :cond_38

    new-instance v12, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->currentAccount:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v12, v8, v4, v3}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v12, v9}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12, v11, v10, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v12, v12, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v4}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v4, "14_14"

    const/4 v15, 0x0

    move-object v8, v14

    move-object v14, v4

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_36

    const/16 v15, 0x8

    goto :goto_23

    :cond_36
    const/4 v15, 0x0

    :goto_23
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    if-eqz v14, :cond_37

    :goto_24
    const/4 v5, 0x3

    goto :goto_25

    :cond_37
    move-object v14, v8

    goto :goto_24

    :goto_25
    new-array v6, v5, [Ljava/lang/CharSequence;

    aput-object v3, v6, v11

    aput-object v24, v6, v10

    const/4 v3, 0x2

    aput-object v14, v6, v3

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_38
    move-object v8, v14

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_39

    const/16 v15, 0x8

    goto :goto_26

    :cond_39
    const/4 v15, 0x0

    :goto_26
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v14, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    if-eqz v14, :cond_3a

    goto :goto_27

    :cond_3a
    move-object v14, v8

    :goto_27
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v14, v4, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e

    :cond_3b
    move-object v8, v14

    move-object v9, v15

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionFloodskip:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    const-string v5, "StarsTransactionFloodskipMessages"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "api"

    :goto_28
    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    :goto_29
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2e

    :cond_3c
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAppStore;

    if-eqz v4, :cond_3d

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionInApp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "ios"

    goto :goto_28

    :cond_3d
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPlayMarket;

    if-eqz v4, :cond_3e

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionInApp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "android"

    goto :goto_28

    :cond_3e
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v4, :cond_44

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v3, :cond_40

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_3f

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionTONFromFragment:I

    goto :goto_2a

    :cond_3f
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    :goto_2a
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    :cond_40
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    if-nez p2, :cond_43

    iget-boolean v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v4, :cond_41

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v4}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_2b

    :cond_41
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v4}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_2b

    :cond_42
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionFragment:I

    goto :goto_2c

    :cond_43
    :goto_2b
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionWithdrawFragment:I

    :goto_2c
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2d
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v4

    goto/16 :goto_29

    :cond_44
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz v4, :cond_45

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionBot:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "premiumbot"

    goto/16 :goto_28

    :cond_45
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerUnsupported;

    if-eqz v4, :cond_46

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionUnsupported:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "?"

    goto/16 :goto_28

    :cond_46
    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAds;

    if-eqz v3, :cond_47

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionAds:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "ads"

    goto/16 :goto_28

    :cond_47
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_48
    :goto_2e
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v6, v4, v20

    if-gtz v6, :cond_4d

    cmp-long v6, v4, v20

    if-nez v6, :cond_49

    iget v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-lez v6, :cond_49

    goto :goto_33

    :cond_49
    cmp-long v6, v4, v20

    if-ltz v6, :cond_4b

    cmp-long v6, v4, v20

    if-nez v6, :cond_4a

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-gez v3, :cond_4a

    goto :goto_2f

    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    :cond_4b
    :goto_2f
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v7, :cond_4c

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->ton:Landroid/text/SpannableString;

    :goto_30
    const/4 v5, 0x3

    goto :goto_31

    :cond_4c
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->star:Landroid/text/SpannableString;

    goto :goto_30

    :goto_31
    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, v11

    aput-object v24, v5, v10

    const/4 v1, 0x2

    aput-object v4, v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_32
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    :cond_4d
    :goto_33
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->amountTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v7, :cond_4e

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->ton:Landroid/text/SpannableString;

    goto :goto_34

    :cond_4e
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->star:Landroid/text/SpannableString;

    :goto_34
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string v6, "+"

    aput-object v6, v5, v11

    aput-object v1, v5, v10

    const/4 v1, 0x2

    aput-object v24, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_32

    :goto_35
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->needDivider:Z

    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

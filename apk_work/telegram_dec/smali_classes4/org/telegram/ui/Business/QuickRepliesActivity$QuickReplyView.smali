.class public Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/QuickRepliesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickReplyView"
.end annotation


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private local:Z

.field private needDivider:Z

.field private final orderView:Landroid/widget/ImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private spanWidth:[I

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    new-array v4, v3, [I

    iput-object v4, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->spanWidth:[I

    iput-object v2, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    if-eqz p2, :cond_0

    const/16 v5, 0x2a

    goto :goto_0

    :cond_0
    const/16 v5, 0x10

    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLines(I)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v7, 0x42800000    # 64.0f

    if-eqz v3, :cond_1

    int-to-float v8, v5

    move v12, v8

    goto :goto_1

    :cond_1
    const/high16 v12, 0x42800000    # 64.0f

    :goto_1
    if-eqz v3, :cond_2

    const/high16 v14, 0x42800000    # 64.0f

    goto :goto_2

    :cond_2
    int-to-float v7, v5

    move v14, v7

    :goto_2
    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/4 v11, 0x7

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x3

    if-eqz p2, :cond_4

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->orderView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    const/4 v1, 0x5

    :goto_3
    or-int/lit8 v1, v1, 0x70

    const/16 v6, 0x32

    invoke-static {v6, v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->orderView:Landroid/widget/ImageView;

    :goto_4
    new-instance v1, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x15

    invoke-direct {v1, v5, v6, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v6, -0x1

    invoke-virtual {v1, v6, v2, v5}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41c00000    # 24.0f

    const v9, 0x800033

    const/high16 v10, 0x42040000    # 33.0f

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public invalidateEmojis()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :goto_1
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->needDivider:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "paintDivider"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_1
    move-object v6, v0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42800000    # 64.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x42800000    # 64.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->local:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->local:Z

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v5, "/"

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v8, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    iget-object v9, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v4, v6, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    const-string v2, " "

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    :cond_5
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result v2

    if-le v2, v5, :cond_8

    const-string v2, "  "

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result v7

    sub-int/2addr v7, v5

    iget-object v8, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->spanWidth:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->of(I[I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    int-to-float v6, v6

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v6, v6, v10

    iget-object v10, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->spanWidth:[I

    aget v3, v10, v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v6, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2026

    if-ne v3, v4, :cond_7

    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v4, v8

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v3, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const/high16 v9, 0x42100000    # 36.0f

    if-eqz v3, :cond_a

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_a

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v2, v9, v5, v8, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v15, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v15, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_9

    :goto_2
    move-wide v12, v6

    goto :goto_3

    :cond_9
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v6, v1

    goto :goto_2

    :goto_3
    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v10, "36_36"

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_5
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move/from16 v1, p3

    goto/16 :goto_a

    :cond_a
    if-eqz v3, :cond_d

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v10, :cond_d

    iget-object v10, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_b
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2, v6, v5, v8, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v3, "g"

    move-object v8, v2

    move-object v9, v3

    :goto_6
    move-wide v11, v5

    goto :goto_7

    :cond_c
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v5, v2

    const-string v2, "36_36"

    move-object v9, v2

    move-object v8, v3

    goto :goto_6

    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v14, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v14, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_d
    if-eqz v3, :cond_f

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v10, :cond_f

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_f

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v2, v9, v5, v8, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v1, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_e

    :goto_8
    move-wide v12, v6

    goto :goto_9

    :cond_e
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v6, v1

    goto :goto_8

    :goto_9
    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto/16 :goto_3

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_5

    :goto_a
    iput-boolean v1, v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->needDivider:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setReorder(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->orderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->local:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

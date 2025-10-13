.class Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddEmojiCell"
.end annotation


# instance fields
.field private final editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private lastCallback:Ljava/lang/Runnable;

.field private lastQuery:Ljava/lang/String;

.field private needDivider:Z

.field private reqId:I

.field private final textWatcher:Landroid/text/TextWatcher;

.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;-><init>(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)V

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->textWatcher:Landroid/text/TextWatcher;

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "t.me/addemoji/"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 p2, 0x4000

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lorg/telegram/messenger/R$string;->AddEmojiPackLinkHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    const/4 v6, -0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->reqId:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->reqId:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->lastCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->lastCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->lastQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->lastQuery:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public bind(ZLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->needDivider:Z

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->needDivider:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

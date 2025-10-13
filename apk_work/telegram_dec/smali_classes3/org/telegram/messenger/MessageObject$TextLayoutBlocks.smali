.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlocks"
.end annotation


# instance fields
.field public hasCode:Z

.field public hasCodeAtBottom:Z

.field public hasCodeAtTop:Z

.field public hasQuote:Z

.field public hasQuoteAtBottom:Z

.field public hasRtl:Z

.field public hasSingleCode:Z

.field public hasSingleQuote:Z

.field public lastLineWidth:I

.field public final text:Ljava/lang/CharSequence;

.field public final textLayoutBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public textWidth:I

.field public textXOffset:F


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    iput v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    iget v3, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    instance-of v3, v0, Landroid/text/Spanned;

    const-class v4, Lorg/telegram/messenger/CodeHighlighting$Span;

    if-eqz v3, :cond_3

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v5, v9, v6, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/CodeHighlighting$Span;

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v3, :cond_4

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v5, v9, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    array-length v5, v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v3, v9, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v6, 0x0

    :goto_4
    array-length v7, v5

    if-ge v6, v7, :cond_5

    aget-object v7, v5, v6

    iput-boolean v9, v7, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    array-length v6, v5

    if-ne v6, v10, :cond_6

    aget-object v6, v5, v9

    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_6

    aget-object v5, v5, v9

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, v9, v5, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/CodeHighlighting$Span;

    array-length v5, v4

    if-ne v5, v10, :cond_7

    aget-object v5, v4, v9

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_7

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v4, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    :cond_8
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41700000    # 15.0f

    if-eqz v3, :cond_9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_7
    sub-int v3, p4, v3

    move/from16 v20, v3

    goto :goto_8

    :cond_9
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v3, :cond_a

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_7

    :cond_a
    move/from16 v20, p4

    :goto_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, v20

    :try_start_0
    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v2, :cond_13

    iget-boolean v5, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v5, :cond_13

    iget v5, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x7

    goto :goto_9

    :cond_b
    const/16 v5, 0xc

    goto :goto_9

    :cond_c
    const/16 v5, 0x16

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v5, v5, -0x8

    :cond_d
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-le v6, v5, :cond_13

    sget v6, Lorg/telegram/messenger/R$string;->ReadMore:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u2026 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p3

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v7, v14

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v7, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v13, v5, :cond_e

    invoke-virtual {v3, v13}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_e
    sub-int/2addr v5, v10

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    sub-int/2addr v5, v10

    :goto_b
    if-lt v5, v4, :cond_10

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    int-to-float v10, v7

    sub-float v10, v14, v10

    cmpg-float v10, v13, v10

    if-gez v10, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x1

    goto :goto_b

    :cond_10
    :goto_c
    if-lt v5, v4, :cond_12

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_12
    :goto_d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks$1;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks$1;-><init>(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v14, v0

    move-object/from16 v15, p3

    move/from16 v16, v20

    :try_start_1
    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    move-object/from16 v30, v3

    move-object v3, v0

    move-object/from16 v0, v30

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :goto_e
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    if-eqz v4, :cond_14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v4, v20, v4

    goto :goto_f

    :cond_14
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v4, :cond_15

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v4, v20, v5

    goto :goto_f

    :cond_15
    move/from16 v4, v20

    :goto_f
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_16

    const/4 v6, 0x1

    goto :goto_10

    :cond_16
    const/4 v6, 0x0

    :goto_10
    const/16 v7, 0xa

    if-eqz v6, :cond_17

    const/4 v8, 0x1

    goto :goto_11

    :cond_17
    int-to-float v8, v5

    int-to-float v10, v7

    div-float/2addr v8, v10

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v8, v13

    :goto_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    instance-of v13, v3, Landroid/text/Spanned;

    if-eqz v13, :cond_19

    iget-boolean v13, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    if-nez v13, :cond_18

    iget-boolean v13, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v13, :cond_19

    :cond_18
    invoke-static {v3, v10}, Lorg/telegram/messenger/MessageObject;->cutIntoRanges(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_15

    :cond_19
    if-nez v6, :cond_1c

    const/4 v6, 0x1

    if-ne v8, v6, :cond_1a

    goto :goto_14

    :cond_1a
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v6, v8, :cond_1d

    sub-int v14, v5, v13

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v0, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v15

    add-int/2addr v14, v13

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    if-ge v7, v15, :cond_1b

    goto :goto_13

    :cond_1b
    new-instance v13, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-direct {v13, v15, v7}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v14

    :goto_13
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xa

    goto :goto_12

    :cond_1c
    :goto_14
    new-instance v5, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v9, v6}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    move-object v6, v0

    move/from16 v7, v20

    const/4 v8, 0x0

    :goto_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4e

    new-instance v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct {v13}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextRange;

    iget-boolean v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    iput-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iget-boolean v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    iput-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    iget-boolean v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->collapse:Z

    iput-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quoteCollapse:Z

    if-eqz v14, :cond_1e

    iput-object v2, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->messageObject:Lorg/telegram/messenger/MessageObject;

    :cond_1e
    iput v8, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->index:I

    if-nez v8, :cond_1f

    const/4 v14, 0x1

    goto :goto_17

    :cond_1f
    const/4 v14, 0x0

    :goto_17
    iput-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v8, v14, :cond_20

    const/4 v14, 0x1

    goto :goto_18

    :cond_20
    const/4 v14, 0x0

    :goto_18
    iput-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    iget-boolean v15, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v15, :cond_21

    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    :cond_21
    if-eqz v14, :cond_22

    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    :cond_22
    if-eqz v15, :cond_23

    if-eqz v14, :cond_23

    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v9, :cond_23

    const/4 v9, 0x1

    goto :goto_19

    :cond_23
    const/4 v9, 0x0

    :goto_19
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    const/high16 v17, 0x40e00000    # 7.0f

    if-eqz v9, :cond_26

    const/high16 v9, 0x40c00000    # 6.0f

    if-eqz v15, :cond_24

    if-eqz v14, :cond_24

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    goto :goto_1e

    :cond_24
    if-eqz v15, :cond_25

    const/high16 v9, 0x41000000    # 8.0f

    :cond_25
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_1a
    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    goto :goto_1e

    :cond_26
    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_2a

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v9, v14, v11}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->layoutCode(Ljava/lang/String;IZ)V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iget v15, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageHeight:I

    add-int/2addr v14, v15

    iget-boolean v15, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v15, :cond_27

    const/4 v15, 0x0

    goto :goto_1b

    :cond_27
    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    :goto_1b
    add-int/2addr v14, v15

    iput v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    if-eqz v14, :cond_28

    const/4 v14, 0x0

    goto :goto_1c

    :cond_28
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_1c
    add-int/2addr v9, v14

    iget-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->hasCodeCopyButton:Z

    if-eqz v14, :cond_29

    const/high16 v14, 0x42180000    # 38.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_1d

    :cond_29
    const/4 v14, 0x0

    :goto_1d
    add-int/2addr v9, v14

    goto :goto_1a

    :cond_2a
    :goto_1e
    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_2d

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v14, v15

    const/16 v15, 0xdc

    if-le v14, v15, :cond_2b

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode3Paint:Landroid/text/TextPaint;

    :goto_1f
    move-object/from16 v22, v15

    goto :goto_20

    :cond_2b
    const/16 v15, 0x50

    if-le v14, v15, :cond_2c

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode2Paint:Landroid/text/TextPaint;

    goto :goto_1f

    :cond_2c
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCodePaint:Landroid/text/TextPaint;

    goto :goto_1f

    :cond_2d
    move-object/from16 v22, p3

    :goto_20
    iget-boolean v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v14, :cond_2e

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v4, v9

    goto :goto_21

    :cond_2e
    if-eqz v9, :cond_2f

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int v9, v4, v14

    goto :goto_21

    :cond_2f
    move v9, v4

    :goto_21
    const/high16 v14, 0x40400000    # 3.0f

    const v15, 0x3fb33333    # 1.4f

    const/4 v12, 0x1

    if-ne v5, v12, :cond_32

    iget-boolean v12, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v12, :cond_31

    iget-boolean v12, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v12, :cond_31

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v12, v12, Landroid/text/Spannable;

    if-eqz v12, :cond_31

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_30

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v7, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v3, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    :goto_22
    move-object/from16 v21, v6

    goto :goto_23

    :cond_30
    new-instance v6, Landroid/text/SpannableString;

    iget v7, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v3, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_22

    :goto_23
    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->originalWidth:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v23, v9

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v6

    move v7, v9

    goto :goto_24

    :cond_31
    iput v7, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->originalWidth:I

    :goto_24
    iput-object v6, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/4 v12, 0x0

    iput v12, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    mul-float v9, v9, v15

    mul-float v9, v9, v14

    iget v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    int-to-float v14, v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedHeight:I

    goto/16 :goto_27

    :cond_32
    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    if-ge v14, v12, :cond_33

    move-object/from16 v18, v3

    move v9, v4

    move-object/from16 v21, v10

    move/from16 v23, v11

    const/4 v4, 0x1

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x41700000    # 15.0f

    move-object v10, v2

    const/4 v2, 0x0

    goto/16 :goto_3f

    :cond_33
    iput v12, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    iput v14, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    :try_start_2
    iget-boolean v15, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v15, :cond_34

    iget-boolean v15, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v15, :cond_34

    invoke-interface {v3, v12, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v12, v14}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v12

    :goto_25
    move-object/from16 v21, v12

    goto :goto_26

    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move v9, v4

    move-object/from16 v21, v10

    move/from16 v23, v11

    const/4 v4, 0x1

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x41700000    # 15.0f

    move-object v10, v2

    const/4 v2, 0x0

    goto/16 :goto_3e

    :cond_34
    invoke-interface {v3, v12, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v12

    goto :goto_25

    :goto_26
    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->originalWidth:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v23, v9

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v9

    iput-object v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    const v12, 0x3fb33333    # 1.4f

    mul-float v9, v9, v12

    const/high16 v12, 0x40400000    # 3.0f

    mul-float v9, v9, v12

    iget v12, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    int-to-float v12, v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_27
    iget-boolean v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_35

    iget-object v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_35

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Landroid/text/Spannable;

    iget-object v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v23

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v27}, Lorg/telegram/messenger/CodeHighlighting;->highlight(Landroid/text/Spannable;IILjava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Z)V

    :cond_35
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    :try_start_3
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    if-nez v8, :cond_36

    const/4 v12, 0x0

    cmpl-float v14, v0, v12

    if-ltz v14, :cond_36

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_28

    :catch_2
    move-exception v0

    goto :goto_29

    :cond_36
    :goto_28
    move v12, v0

    goto :goto_2a

    :goto_29
    if-nez v8, :cond_37

    const/4 v12, 0x0

    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    :cond_37
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    :goto_2a
    :try_start_4
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2b

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2b
    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v0, v14

    add-int/lit8 v14, v4, 0x50

    if-le v0, v14, :cond_38

    move v0, v4

    :cond_38
    add-int/lit8 v14, v5, -0x1

    if-ne v8, v14, :cond_39

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_39
    int-to-float v15, v0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v19

    add-float v3, v15, v19

    move-object/from16 p2, v6

    move/from16 v19, v7

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    iget-boolean v6, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v6, :cond_3a

    const/4 v6, 0x0

    iput v6, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v9, :cond_3a

    :try_start_5
    iget v7, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v20, v0

    :try_start_6
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2d

    :catch_4
    move/from16 v20, v0

    :catch_5
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v0, v0

    iput v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v20

    goto :goto_2c

    :cond_3a
    move/from16 v20, v0

    const/4 v6, 0x1

    if-le v9, v6, :cond_45

    move-object/from16 v21, v10

    move/from16 v0, v20

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move v10, v3

    :goto_2e
    if-ge v15, v9, :cond_41

    move/from16 v22, v9

    :try_start_7
    iget-object v9, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v23, v11

    goto :goto_2f

    :catch_6
    nop

    move/from16 v23, v11

    const/4 v9, 0x0

    :goto_2f
    iget-boolean v11, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v11, :cond_3b

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    :goto_30
    add-float/2addr v9, v2

    goto :goto_31

    :cond_3b
    iget-boolean v2, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v2, :cond_3c

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v2, v11

    goto :goto_30

    :cond_3c
    :goto_31
    :try_start_8
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_32

    :catch_7
    nop

    const/4 v2, 0x0

    :goto_32
    add-int/lit8 v11, v4, 0x14

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-lez v11, :cond_3d

    int-to-float v9, v4

    const/4 v2, 0x0

    :cond_3d
    const/4 v11, 0x0

    cmpl-float v20, v2, v11

    if-gtz v20, :cond_3f

    iget-object v11, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v15}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v11

    move/from16 v24, v4

    const/4 v4, -0x1

    if-ne v11, v4, :cond_3e

    goto :goto_33

    :cond_3e
    iget-byte v4, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v11, 0x1

    goto :goto_34

    :cond_3f
    move/from16 v24, v4

    :goto_33
    iget v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    iget-byte v4, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v11, 0x1

    or-int/2addr v4, v11

    int-to-byte v4, v4

    iput-byte v4, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    iput-boolean v11, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    :goto_34
    if-nez v6, :cond_40

    const/4 v4, 0x0

    cmpl-float v20, v2, v4

    if-nez v20, :cond_40

    :try_start_9
    iget-object v4, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v15}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    if-ne v4, v11, :cond_40

    :catch_8
    const/4 v6, 0x1

    :cond_40
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-float/2addr v2, v9

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move v4, v6

    move v11, v7

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move v6, v4

    move v7, v11

    move/from16 v9, v22

    move/from16 v11, v23

    move/from16 v4, v24

    goto/16 :goto_2e

    :cond_41
    move/from16 v24, v4

    move/from16 v23, v11

    if-eqz v6, :cond_43

    if-ne v8, v14, :cond_42

    iput v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_42
    move v12, v7

    goto :goto_35

    :cond_43
    if-ne v8, v14, :cond_44

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_44
    :goto_35
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move v3, v10

    move/from16 v9, v24

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_3a

    :cond_45
    move/from16 v24, v4

    move-object/from16 v21, v10

    move/from16 v23, v11

    const/4 v2, 0x0

    cmpl-float v0, v12, v2

    if-lez v0, :cond_48

    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_46

    add-float/2addr v15, v12

    float-to-int v0, v15

    :goto_36
    const/4 v4, 0x1

    goto :goto_37

    :cond_46
    move/from16 v0, v20

    goto :goto_36

    :goto_37
    if-eq v5, v4, :cond_47

    const/4 v6, 0x1

    goto :goto_38

    :cond_47
    const/4 v6, 0x0

    :goto_38
    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    iget-byte v6, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/2addr v6, v4

    int-to-byte v6, v6

    iput-byte v6, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_39

    :cond_48
    const/4 v4, 0x1

    iget-byte v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    move/from16 v0, v20

    :goto_39
    iget v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move/from16 v9, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :goto_3a
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageLayout:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_4a

    iget v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v6, v6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v0

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v7, v10

    add-float/2addr v0, v7

    iget-object v7, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_49

    const/4 v12, 0x0

    goto :goto_3b

    :cond_49
    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v12, v7

    :goto_3b
    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :cond_4a
    move-object/from16 v10, p1

    if-eqz v10, :cond_4d

    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_4d

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->access$100(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-boolean v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    const/high16 v11, 0x42000000    # 32.0f

    if-eqz v0, :cond_4b

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v3, v0

    move/from16 v27, v3

    const/high16 v12, 0x41700000    # 15.0f

    goto :goto_3c

    :cond_4b
    iget-boolean v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    const/high16 v12, 0x41700000    # 15.0f

    if-eqz v0, :cond_4c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v3, v0

    :cond_4c
    move/from16 v27, v3

    :goto_3c
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iget-object v3, v13, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    const/16 v26, -0x1

    const/16 v28, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object/from16 v29, v3

    invoke-static/range {v24 .. v29}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    goto :goto_3d

    :cond_4d
    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x41700000    # 15.0f

    :goto_3d
    move-object/from16 v6, p2

    move/from16 v7, v19

    goto :goto_3f

    :goto_3e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3f
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    move-object v2, v10

    move-object/from16 v3, v18

    move-object/from16 v10, v21

    move/from16 v11, v23

    const/4 v9, 0x0

    const/high16 v12, 0x42000000    # 32.0f

    goto/16 :goto_16

    :cond_4e
    return-void

    :catch_9
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bounceFrom(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->collapsedBounce:Lorg/telegram/ui/Components/ButtonBounce;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public textHeight()I
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public textHeight(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

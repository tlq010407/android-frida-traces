.class public abstract Lorg/telegram/messenger/utils/CopyUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;,
        Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;,
        Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;
    }
.end annotation


# direct methods
.method public static fromHTML(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x18

    const-string v4, "</inject>"

    const-string v5, "<inject>"

    if-lt v2, v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;

    new-instance v3, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-direct {v2, v3, v1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    const/16 v3, 0x3f

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/utils/CopyUtilities$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;

    new-instance v3, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-direct {v2, v3, v1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    array-length v8, v2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ge v7, v8, :cond_c

    aget-object v8, v2, v7

    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    instance-of v13, v8, Landroid/text/style/StyleSpan;

    if-eqz v13, :cond_3

    check-cast v8, Landroid/text/style/StyleSpan;

    invoke-virtual {v8}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-lez v9, :cond_2

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    invoke-static {v9, v11, v12}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v8, v8, 0x2

    if-lez v8, :cond_b

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    :goto_2
    invoke-static {v8, v11, v12}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v8

    :goto_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    instance-of v13, v8, Landroid/text/style/UnderlineSpan;

    if-eqz v13, :cond_4

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;-><init>()V

    goto :goto_2

    :cond_4
    instance-of v13, v8, Landroid/text/style/StrikethroughSpan;

    if-eqz v13, :cond_5

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;-><init>()V

    goto :goto_2

    :cond_5
    instance-of v13, v8, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    if-eqz v13, :cond_a

    check-cast v8, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    iget v13, v8, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    if-nez v13, :cond_6

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;-><init>()V

    goto :goto_2

    :cond_6
    if-ne v13, v10, :cond_8

    iget-object v9, v8, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->lng:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    goto :goto_2

    :cond_8
    const/4 v10, 0x2

    if-eq v13, v10, :cond_9

    if-ne v13, v9, :cond_b

    :cond_9
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    instance-of v9, v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v9, :cond_b

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    check-cast v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v13, v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iput-wide v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iget-object v8, v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v9, v11, v12}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v8

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3, v7, v7}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    const/4 v8, 0x0

    :goto_5
    array-length v11, v2

    const/16 v12, 0x21

    if-ge v8, v11, :cond_f

    aget-object v11, v2, v8

    instance-of v13, v11, Landroid/text/style/URLSpan;

    if-eqz v13, :cond_e

    invoke-interface {v0, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v0, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-interface {v0, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    check-cast v11, Landroid/text/style/URLSpan;

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    new-instance v15, Landroid/text/style/URLSpan;

    invoke-direct {v15, v11}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v7, v15, v13, v14, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_d
    new-instance v15, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-direct {v15, v11}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_f
    invoke-static {v3, v7, v1}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    new-instance v11, Lorg/telegram/messenger/CodeHighlighting$Span;

    iget-object v2, v2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->lng:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x1

    move-object v13, v11

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v18}, Lorg/telegram/messenger/CodeHighlighting$Span;-><init>(ZILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11, v3, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iget v2, v2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    if-ne v2, v9, :cond_11

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    invoke-static {v7, v3, v5, v2}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_12
    return-object v7

    :goto_b
    const-string v2, "Html.fromHtml"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .locals 0

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    return-object p0
.end method

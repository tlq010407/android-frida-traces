.class public abstract Lorg/telegram/ui/Components/StaticLayoutEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static alignments:[Landroid/text/Layout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    return-void
.end method

.method public static ALIGN_LEFT()Landroid/text/Layout$Alignment;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0
.end method

.method public static ALIGN_RIGHT()Landroid/text/Layout$Alignment;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/StaticLayoutEx;->alignments:[Landroid/text/Layout$Alignment;

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 11

    .line 0
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v8, p9

    const-string v7, "\u2026"

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    if-ne v8, v1, :cond_1

    :try_start_0
    const-string v2, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    sub-int/2addr v2, v1

    if-lez v2, :cond_0

    :try_start_1
    invoke-interface {v0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_6

    :cond_0
    :goto_0
    int-to-float v1, v15

    :try_start_2
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v9, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v15, Landroid/text/StaticLayout;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    move-object v0, v15

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v10, v6

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    :try_start_3
    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v15

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v17, v10

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v10, v6

    goto :goto_1

    :cond_1
    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v5, v2, v9, v10}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v11}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v13, v12}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v14}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline5;->m(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    int-to-float v4, v10

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v5, v1, v9, v10}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v13, v12}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v14}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline5;->m(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v1

    :cond_2
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move v14, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x17

    goto :goto_2

    :cond_4
    new-instance v16, Landroid/text/StaticLayout;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v14, 0x17

    move/from16 v4, p2

    const/4 v14, 0x0

    move-object/from16 v5, p3

    move-object/from16 v17, v6

    move/from16 v6, p4

    move-object/from16 v18, v7

    move/from16 v7, p5

    move v14, v8

    move/from16 v8, p6

    :try_start_5
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v1, v16

    :goto_3
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-gt v2, v14, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v1, v2, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    :goto_4
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v15, v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_7

    add-int/lit8 v1, v1, 0x3

    :cond_7
    new-instance v2, Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, -0x3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v2, v3, v0, v9, v10}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v11}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v13, v12}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v7, p6

    invoke-static {v0, v7}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline5;->m(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v1, v1

    if-lez v1, :cond_8

    move-object/from16 v1, v17

    goto :goto_5

    :cond_8
    move-object/from16 v1, p7

    :goto_5
    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v14}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v1, p10

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    :cond_9
    move/from16 v7, p6

    new-instance v8, Landroid/text/StaticLayout;

    move-object v0, v8

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v8

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v17
.end method

.method public static createStaticLayout2(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;
    .locals 11

    move/from16 v8, p8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static {p0, v1, v0, p1, v8}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object v4, p3

    invoke-static {v0, p3}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move v5, p4

    move/from16 v6, p5

    invoke-static {v0, v6, p4}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v7, p6

    invoke-static {v0, v7}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline5;->m(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v9, p9

    invoke-static {v0, v9}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p9

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

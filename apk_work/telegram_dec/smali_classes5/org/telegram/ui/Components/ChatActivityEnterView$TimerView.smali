.class public Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerView"
.end annotation


# instance fields
.field inLayout:Landroid/text/StaticLayout;

.field isRunning:Z

.field lastSendTypingTime:J

.field left:F

.field oldString:Ljava/lang/String;

.field outLayout:Landroid/text/StaticLayout;

.field final replaceDistance:F

.field replaceIn:Landroid/text/SpannableStringBuilder;

.field replaceOut:Landroid/text/SpannableStringBuilder;

.field replaceStable:Landroid/text/SpannableStringBuilder;

.field replaceTransition:F

.field startTime:J

.field stopTime:J

.field stoppedInternal:Z

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x41700000    # 15.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    return-void
.end method


# virtual methods
.method public getLeftProperty()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v2, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long v6, v4, v6

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    iget-wide v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    sub-long/2addr v6, v8

    :goto_0
    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    rem-long v8, v6, v8

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0xa

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    const-wide/32 v12, 0xe86c

    cmp-long v8, v6, v12

    if-ltz v8, :cond_3

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    if-nez v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v12

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v7, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v7, :cond_2

    const v7, 0x7fffffff

    const v16, 0x7fffffff

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v12 .. v20}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIJJ)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-wide/16 v12, 0x0

    invoke-static {v7, v12, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    :cond_3
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    const-wide/16 v12, 0x1388

    add-long/2addr v6, v12

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    iput-wide v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v13

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x7

    const/16 v17, 0x7

    goto :goto_2

    :cond_4
    const/16 v17, 0x1

    :goto_2
    const/16 v18, 0x0

    move-wide v15, v4

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    :cond_5
    long-to-int v4, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatTimerDurationFast(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    if-lt v4, v6, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v12, v4, -0x1

    const/16 v13, 0x21

    if-ge v8, v12, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v12, v14, :cond_8

    if-nez v11, :cond_6

    move v7, v8

    :cond_6
    add-int/lit8 v11, v11, 0x1

    if-eqz v10, :cond_a

    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v14, v4, -0x2

    if-ne v8, v14, :cond_7

    add-int/lit8 v10, v10, 0x1

    :cond_7
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v10, v6

    invoke-virtual {v14, v12, v6, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v12, v6, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    if-nez v10, :cond_9

    move v6, v8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    if-eqz v11, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v14, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v14}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v11, v7

    invoke-virtual {v12, v14, v7, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v11, 0x0

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_c

    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    add-int/2addr v10, v6

    add-int/2addr v10, v3

    invoke-virtual {v8, v4, v6, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4, v6, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    if-eqz v11, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/2addr v11, v7

    invoke-virtual {v3, v4, v7, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceIn:Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v22

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceOut:Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    goto :goto_6

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_f

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_10

    goto :goto_5

    :cond_10
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v11, v4, -0x1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int v14, v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    move-object v13, v2

    invoke-virtual/range {v10 .. v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_11
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-eqz v6, :cond_12

    const v6, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v4

    if-nez v6, :cond_13

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v5

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    :goto_7
    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->left:F

    goto/16 :goto_8

    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v6, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float v10, v5, v10

    mul-float v10, v10, v8

    float-to-int v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float v10, v10, v11

    sub-float/2addr v6, v10

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->inLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    mul-float v10, v10, v8

    float-to-int v8, v10

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float v6, v3, v6

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceDistance:F

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    sub-float/2addr v5, v10

    mul-float v8, v8, v5

    add-float/2addr v6, v8

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->outLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceStable:Landroid/text/SpannableStringBuilder;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v5

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v4

    goto/16 :goto_7

    :goto_8
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->oldString:Ljava/lang/String;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->replaceTransition:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_17

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stoppedInternal:Z

    return-void
.end method

.method public start(J)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->isRunning:Z

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->startTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->stopTime:J

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->lastSendTypingTime:J

    return-void
.end method

.method public updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

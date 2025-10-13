.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoryWidgetsCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;
    }
.end annotation


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field lineWidths:[F

.field private onClickListener:Lorg/telegram/messenger/Utilities$Callback;

.field private final textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

.field private final widgets:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$zJDOyGzYFYu1dQhx2ZNgG-Xjy5Y(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;[Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lambda$new$0([Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->bgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->textPaint:Landroid/text/TextPaint;

    const v2, 0x19ffffff

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string p2, "fonts/rcondensedbold.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p2, 0x41aa6666    # 21.3f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, -0x1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    sget v6, Lorg/telegram/messenger/R$string;->StoryWidgetLink:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v3, v5, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;IILjava/lang/String;)V

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;->needsPremium()Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin3:I

    sget v5, Lorg/telegram/messenger/R$string;->StoryWidgetLocation:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;IILjava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->getCached()Lorg/telegram/ui/Stories/recorder/Weather$State;

    move-result-object v4

    new-array v5, v0, [Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_2

    const-string v7, "\ud83c\udf24"

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_4

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isDefaultCelsius()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "24\u00b0C"

    goto :goto_1

    :cond_3
    const-string v7, "72\u00b0F"

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v6, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$8300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->storyWeatherPreload:Z

    if-eqz v6, :cond_5

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v6}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v4, "___"

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-direct {v4, p0, v6}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v1, v4, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    invoke-direct {v4, p0, p0, v3, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;Landroid/view/View;ILjava/lang/CharSequence;)V

    aput-object v4, v5, v2

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;[Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;)V

    invoke-static {v2, v4}, Lorg/telegram/ui/Stories/recorder/Weather;->fetch(ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_5
    aget-object v2, v5, v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    invoke-direct {v2, p0, p0, v3, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_6
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_widget_music:I

    sget v3, Lorg/telegram/messenger/R$string;->StoryWidgetAudio:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;IILjava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_premium_camera:I

    sget v3, Lorg/telegram/messenger/R$string;->StoryWidgetPhoto:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;IILjava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$ReactionWidget;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->bgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$new$0([Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string v2, "\ud83c\udf24"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isDefaultCelsius()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "24\u00b0C"

    goto :goto_1

    :cond_1
    const-string p2, "72\u00b0F"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    aget v5, v4, v2

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v2

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    aget v5, v4, v2

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->animatedWidth:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->width:F

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    add-float/2addr v5, v1

    aput v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutX:F

    add-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    add-int/lit8 v4, v4, -0x1

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->onAttachToWindow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->onAttachToWindow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    iput v3, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutX:F

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->width:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-float/2addr v3, v7

    int-to-float v7, p2

    cmpl-float v7, v3, v7

    if-lez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    iput v2, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutX:F

    iget v3, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->width:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v3, v2

    :cond_0
    iput v4, v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    if-eqz p2, :cond_3

    array-length v0, p2

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array p2, v4, [F

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->layoutLine:I

    sub-int/2addr v3, v1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    aget v7, v5, v3

    cmpl-float v8, v7, v2

    if-lez v8, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v5, v3

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->lineWidths:[F

    aget v7, v5, v3

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->width:F

    add-float/2addr v7, v0

    aput v7, v5, v3

    goto :goto_3

    :cond_5
    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int v0, v0, v4

    add-int/2addr p2, v0

    sub-int/2addr v4, v1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int v4, v4, v0

    add-int/2addr p2, v4

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;

    if-eq v2, v1, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_6

    if-eqz v1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_6

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell$BaseWidget;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_6
    if-eqz v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method

.method public setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

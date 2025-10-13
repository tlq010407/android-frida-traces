.class public Lorg/telegram/ui/Components/SuggestionOffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SuggestionOffer$Row;
    }
.end annotation


# instance fields
.field public height:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public rows:Ljava/util/ArrayList;

.field private rowsInfoX:I

.field private rowsTitleX:I

.field public title:Landroid/text/StaticLayout;

.field private titleX:I

.field public width:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/SuggestionOffer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private updateBuildTitleStep(Ljava/lang/StringBuilder;IZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedAnd:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IFFFFZ)V
    .locals 4

    iget p7, p0, Lorg/telegram/ui/Components/SuggestionOffer;->width:I

    sub-int/2addr p2, p7

    div-int/lit8 p2, p2, 0x2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, p2

    add-int/2addr p7, p2

    int-to-float p7, p7

    iget v2, p0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p3, p7

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p3, p0, Lorg/telegram/ui/Components/SuggestionOffer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p4, "paintChatActionBackground"

    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    int-to-float v1, p4

    mul-float v1, v1, p6

    mul-float v1, v1, p5

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/SuggestionOffer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result p3

    if-eqz p3, :cond_1

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SuggestionOffer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p4, "paintChatActionBackgroundDarken"

    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    int-to-float v1, p4

    mul-float v1, v1, p6

    mul-float v1, v1, p5

    float-to-int p5, v1

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p4, p0, Lorg/telegram/ui/Components/SuggestionOffer;->titleX:I

    add-int/2addr p4, p2

    int-to-float p4, p4

    int-to-float p5, p3

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p4, p0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    invoke-virtual {p4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p4, p0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    invoke-virtual {p4}, Landroid/text/Layout;->getHeight()I

    move-result p4

    const/high16 p5, 0x41400000    # 12.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p4, p5

    add-int/2addr p3, p4

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/SuggestionOffer$Row;

    iget-object p6, p5, Lorg/telegram/ui/Components/SuggestionOffer$Row;->title:Lorg/telegram/ui/Components/Text;

    iget v0, p0, Lorg/telegram/ui/Components/SuggestionOffer;->rowsTitleX:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p5}, Lorg/telegram/ui/Components/SuggestionOffer$Row;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p7

    add-float/2addr v2, v1

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {p6, p1, v0, v2, v3}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFF)V

    iget-object p6, p5, Lorg/telegram/ui/Components/SuggestionOffer$Row;->info:Lorg/telegram/ui/Components/Text;

    iget v0, p0, Lorg/telegram/ui/Components/SuggestionOffer;->rowsInfoX:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p5}, Lorg/telegram/ui/Components/SuggestionOffer$Row;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p7

    add-float/2addr v1, v2

    invoke-virtual {p6, p1, v0, v1}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p5}, Lorg/telegram/ui/Components/SuggestionOffer$Row;->getHeight()I

    move-result p5

    const/high16 p6, 0x40e00000    # 7.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    add-int/2addr p5, p6

    add-int/2addr p3, p5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    return v0
.end method

.method protected getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestionOffer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SuggestionOffer;->width:I

    return v0
.end method

.method public update(Lorg/telegram/messenger/MessageObject;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-static {v5}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/tgnet/TLRPC$SuggestedPost;)Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v6

    const-string v7, "paintChatActionText3"

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/SuggestionOffer;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/text/TextPaint;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    iput v7, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    iget-object v7, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v6, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isZero()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Components/SuggestionOffer$Row;

    new-instance v9, Lorg/telegram/ui/Components/Text;

    sget v11, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoPrice:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    new-instance v11, Lorg/telegram/ui/Components/Text;

    iget-object v6, v6, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v6}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v11, v6, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-direct {v8, v9, v11}, Lorg/telegram/ui/Components/SuggestionOffer$Row;-><init>(Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/Components/Text;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    if-lez v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Components/SuggestionOffer$Row;

    new-instance v8, Lorg/telegram/ui/Components/Text;

    sget v9, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTime:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    new-instance v9, Lorg/telegram/ui/Components/Text;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    int-to-long v11, v5

    invoke-static {v11, v12, v4}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v9, v5, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    invoke-direct {v7, v8, v9}, Lorg/telegram/ui/Components/SuggestionOffer$Row;-><init>(Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/Components/Text;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/SuggestionOffer$Row;

    iget-object v9, v8, Lorg/telegram/ui/Components/SuggestionOffer$Row;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v9, v8, Lorg/telegram/ui/Components/SuggestionOffer$Row;->info:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    invoke-virtual {v8}, Lorg/telegram/ui/Components/SuggestionOffer$Row;->getHeight()I

    move-result v8

    add-int/2addr v9, v8

    iput v9, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v9, v8

    iput v9, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    goto :goto_1

    :cond_4
    add-float/2addr v7, v6

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getEditedSuggestionFlags()I

    move-result v9

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-nez v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleYou:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_c

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitle:I

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-static {v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v13, v9, 0x4

    if-eqz v13, :cond_8

    const/4 v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    :goto_3
    and-int/lit8 v15, v9, 0x2

    if-eqz v15, :cond_9

    const/16 v17, 0x1

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    :goto_4
    add-int v14, v14, v17

    and-int/lit8 v17, v9, 0x8

    if-eqz v17, :cond_a

    const/16 v18, 0x1

    goto :goto_5

    :cond_a
    const/16 v18, 0x0

    :goto_5
    add-int v14, v14, v18

    and-int/2addr v9, v4

    if-eqz v9, :cond_b

    const/16 v18, 0x1

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    :goto_6
    add-int v14, v14, v18

    if-eqz v9, :cond_d

    sget v9, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedPrice:I

    if-ne v14, v4, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    invoke-direct {v0, v12, v9, v5}, Lorg/telegram/ui/Components/SuggestionOffer;->updateBuildTitleStep(Ljava/lang/StringBuilder;IZ)V

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-eqz v15, :cond_f

    sget v9, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedTime:I

    add-int/2addr v5, v4

    if-ne v14, v5, :cond_e

    const/4 v15, 0x1

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    :goto_9
    invoke-direct {v0, v12, v9, v15}, Lorg/telegram/ui/Components/SuggestionOffer;->updateBuildTitleStep(Ljava/lang/StringBuilder;IZ)V

    :cond_f
    if-eqz v13, :cond_11

    sget v9, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedText:I

    add-int/2addr v5, v4

    if-ne v14, v5, :cond_10

    const/4 v13, 0x1

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    :goto_a
    invoke-direct {v0, v12, v9, v13}, Lorg/telegram/ui/Components/SuggestionOffer;->updateBuildTitleStep(Ljava/lang/StringBuilder;IZ)V

    :cond_11
    if-eqz v17, :cond_13

    sget v9, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedMedia:I

    add-int/2addr v5, v4

    if-ne v14, v5, :cond_12

    const/4 v5, 0x1

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    :goto_b
    invoke-direct {v0, v12, v9, v5}, Lorg/telegram/ui/Components/SuggestionOffer;->updateBuildTitleStep(Ljava/lang/StringBuilder;IZ)V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_14

    sget v1, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedFromYou:I

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v12, v5, v3

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->SuggestionOfferInfoTitleEditedFromX:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v8, v5, v3

    aput-object v12, v5, v4

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :goto_c
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, v1

    move/from16 v11, v16

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-ge v3, v5, :cond_15

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v3, v4

    goto :goto_d

    :cond_15
    iget v3, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    iget-object v4, v0, Lorg/telegram/ui/Components/SuggestionOffer;->title:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Components/SuggestionOffer;->height:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/SuggestionOffer;->width:I

    sub-int v3, v1, v16

    div-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/SuggestionOffer;->titleX:I

    sub-int/2addr v1, v7

    div-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rowsTitleX:I

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/SuggestionOffer;->rowsInfoX:I

    return-void
.end method

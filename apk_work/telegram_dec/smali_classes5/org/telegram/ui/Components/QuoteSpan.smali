.class public Lorg/telegram/ui/Components/QuoteSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;,
        Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;,
        Lorg/telegram/ui/Components/QuoteSpan$Block;,
        Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;,
        Lorg/telegram/ui/Components/QuoteSpan$QuoteButtonNewLineSpan;
    }
.end annotation


# static fields
.field public static COLLAPSE_LINES:I = 0x3


# instance fields
.field public adaptLineHeight:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final backgroundPathRadii:[F

.field public collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

.field private color:I

.field public final edit:Z

.field public end:I

.field private expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private expandDrawable:Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

.field private expandPressed:Z

.field private expandScale:Lorg/telegram/ui/Components/AnimatedFloat;

.field private expandText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private expandTextCollapsed:Z

.field private expandTextWidth:I

.field public first:Z

.field public isCollapsing:Z

.field public last:Z

.field private final linePaint:Landroid/graphics/Paint;

.field private final linePath:Landroid/graphics/Path;

.field private final linePathRadii:[F

.field private newline:Landroid/text/SpannableString;

.field private final quoteDrawable:Landroid/graphics/drawable/Drawable;

.field public rtl:Z

.field public singleLine:Z

.field public start:I

.field public final styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPathRadii:[F

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    new-array v0, v2, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePathRadii:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePath:Landroid/graphics/Path;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->mini_quote:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    const/16 p2, 0x1e

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandScale:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandScale:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandDrawable:Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandDrawable:Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/QuoteSpan;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/QuoteSpan;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandTextCollapsed:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/QuoteSpan;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandTextCollapsed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/QuoteSpan;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandTextWidth:I

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/QuoteSpan;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandTextWidth:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/ButtonBounce;)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPathRadii:[F

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePathRadii:[F

    return-object p0
.end method

.method public static mergeQuotes(Landroid/text/SpannableStringBuilder;Ljava/util/ArrayList;)V
    .locals 11

    if-eqz p1, :cond_10

    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    goto :goto_3

    :cond_1
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v6

    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBlockquote;

    if-eqz v8, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->collapsed:Z

    if-eqz v4, :cond_3

    const/16 v5, 0x10

    :cond_3
    or-int v4, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    or-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v0, v7, :cond_c

    add-int/lit8 v8, v7, -0x1

    const/16 v9, 0xa

    if-ltz v8, :cond_9

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-ge v8, v10, :cond_9

    invoke-virtual {p0, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_9

    add-int/lit8 v8, v7, -0x1

    goto :goto_5

    :cond_9
    move v8, v7

    :goto_5
    if-lez v3, :cond_a

    invoke-static {p0, v0, v8, v4}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    :cond_a
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-ge v0, v8, :cond_b

    invoke-virtual {p0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_b

    goto :goto_6

    :cond_b
    move v0, v7

    :cond_c
    :goto_6
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_d

    add-int/lit8 v3, v3, -0x1

    :cond_d
    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_e

    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-ge v0, p1, :cond_10

    if-lez v3, :cond_10

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-static {p0, v0, p1, v4}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    :cond_10
    :goto_7
    return-void
.end method

.method public static normalizeQuotes(Landroid/text/Editable;)V
    .locals 12

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    const/4 v4, 0x0

    invoke-interface {p0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    aget-object v5, v2, v3

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v10, v5, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    if-eqz v10, :cond_2

    const/16 v6, 0x10

    :cond_2
    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    or-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    iget-object v5, v5, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v2, v8, :cond_a

    add-int/lit8 v9, v8, -0x1

    const/16 v10, 0xa

    if-ltz v9, :cond_7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_7

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_7

    add-int/lit8 v9, v8, -0x1

    goto :goto_4

    :cond_7
    move v9, v8

    :goto_4
    if-lez v3, :cond_8

    invoke-static {p0, v2, v9, v5}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    :cond_8
    add-int/lit8 v2, v8, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v2, v9, :cond_9

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_9

    goto :goto_5

    :cond_9
    move v2, v8

    :cond_a
    :goto_5
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_b

    add-int/lit8 v3, v3, -0x1

    :cond_b
    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_c

    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_6

    :cond_c
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v7, 0x10

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v2, v0, :cond_e

    if-lez v3, :cond_e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, v2, v0, v5}, Lorg/telegram/ui/Components/QuoteSpan;->putQuoteToEditable(Landroid/text/Editable;IIZ)I

    :cond_e
    return-void
.end method

.method public static onTouch(Landroid/view/MotionEvent;ILjava/util/ArrayList;Ljava/lang/Runnable;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/QuoteSpan$Block;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/QuoteSpan$Block;->hasButton()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v7, p1

    sub-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iput-boolean v3, v5, Lorg/telegram/ui/Components/QuoteSpan;->expandPressed:Z

    iget-object v5, v5, Lorg/telegram/ui/Components/QuoteSpan;->expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_6

    iget-object v5, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v6, v5, Lorg/telegram/ui/Components/QuoteSpan;->expandPressed:Z

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    iget-boolean v1, v5, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v5, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget-object v3, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iput-boolean v0, v3, Lorg/telegram/ui/Components/QuoteSpan;->expandPressed:Z

    iget-object v5, v3, Lorg/telegram/ui/Components/QuoteSpan;->expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v5, :cond_7

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    iget-object v3, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iput-boolean v0, v3, Lorg/telegram/ui/Components/QuoteSpan;->expandPressed:Z

    iget-object v5, v3, Lorg/telegram/ui/Components/QuoteSpan;->expandBounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v5, :cond_7

    goto :goto_2

    :goto_3
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_7
    iget-object v2, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/QuoteSpan;->expandPressed:Z

    if-nez v2, :cond_8

    if-eqz v1, :cond_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :cond_9
    return v1
.end method

.method public static putQuote(Landroid/text/Spannable;IIZ)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/QuoteSpan;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    new-instance v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-direct {v0}, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-direct {v2, v1, p3, v0}, Lorg/telegram/ui/Components/QuoteSpan;-><init>(ZZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iput p1, v2, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    iput p2, v2, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    const/16 p3, 0x21

    invoke-interface {p0, v0, p1, p2, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p0, v2, p1, p2, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return p2
.end method

.method public static putQuoteToEditable(Landroid/text/Editable;IIZ)I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    const-string v0, "\n"

    const/16 v2, 0xa

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_3

    :cond_2
    invoke-interface {p0, p2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-direct {v0}, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p3, v0}, Lorg/telegram/ui/Components/QuoteSpan;-><init>(ZZLorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iput p1, v2, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    iput p2, v2, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p0, v2, p3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p2, p3, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p3

    invoke-interface {p0, v0, p1, p3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    const-string p3, "\ufeff"

    invoke-interface {p0, p1, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v3, p2, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v3
.end method

.method public static stripNewlineHacks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/4 v1, 0x0

    const-class v2, Lorg/telegram/ui/Components/QuoteSpan$QuoteButtonNewLineSpan;

    invoke-virtual {v0, v1, p0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/QuoteSpan$QuoteButtonNewLineSpan;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static updateQuoteBlocks(Landroid/view/View;Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_14

    instance-of v3, v2, Landroid/text/Spannable;

    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/QuoteSpan;

    move-object/from16 v5, p2

    const/4 v7, 0x0

    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_13

    aget-object v8, v4, v7

    iget-boolean v9, v8, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    new-instance v10, Lorg/telegram/ui/Components/QuoteSpan$Block;

    invoke-direct {v10, v0, v1, v3, v8}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v11, v8, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_f

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    const/16 v11, 0xa

    if-eqz v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_4

    aget-object v8, v4, v7

    invoke-interface {v3, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v8, v4, v7

    iget-object v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v3, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v8, v4, v7

    iget-object v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    if-eqz v8, :cond_12

    invoke-interface {v3, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/16 v14, 0x21

    if-eq v8, v13, :cond_6

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_6

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-gt v8, v13, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-eq v8, v13, :cond_5

    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-eq v13, v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    aget-object v13, v4, v7

    invoke-interface {v3, v13}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v13, v4, v7

    iget-object v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v3, v13}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v13, v4, v7

    iget-object v15, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v15, v15, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-interface {v3, v13, v15, v8, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    aget-object v13, v4, v7

    iget-object v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    iget-object v10, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v10, v10, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-interface {v3, v13, v10, v8, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v10, Lorg/telegram/ui/Components/QuoteSpan$Block;

    aget-object v8, v4, v7

    invoke-direct {v10, v0, v1, v3, v8}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    :cond_6
    instance-of v8, v3, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_c

    move-object v8, v3

    check-cast v8, Landroid/text/SpannableStringBuilder;

    iget-object v13, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    sub-int/2addr v13, v12

    if-ltz v13, :cond_7

    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_7

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v10}, Lorg/telegram/ui/Components/QuoteSpan$Block;->hasButton()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    add-int/lit8 v15, v13, -0x2

    if-ltz v15, :cond_8

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v1, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    const/high16 v15, 0x41400000    # 12.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v15

    iget v15, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->width:I

    invoke-virtual {v10}, Lorg/telegram/ui/Components/QuoteSpan$Block;->buttonWidth()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v13, v13, v15

    if-lez v13, :cond_8

    const/4 v13, 0x1

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    if-eq v11, v13, :cond_c

    iget-object v13, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    if-eqz v11, :cond_9

    add-int/lit8 v11, v13, -0x1

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v8, v15, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_9
    add-int/lit8 v11, v13, 0x2

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v13

    iget-object v15, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v15, v15, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    if-ne v13, v15, :cond_a

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v13

    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v15

    if-ne v13, v15, :cond_a

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    :goto_4
    iget-object v15, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v6, v15, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-virtual {v15}, Lorg/telegram/ui/Components/QuoteSpan;->getNewlineHack()Landroid/text/SpannableString;

    move-result-object v15

    invoke-virtual {v8, v6, v15}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v13, :cond_b

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    iget-object v13, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v13, v13, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    if-eq v6, v13, :cond_b

    invoke-static {v8, v13, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_b
    :goto_5
    iget-object v6, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v6, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    aget-object v6, v4, v7

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v6, v4, v7

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v6, v4, v7

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v11, v8, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v3, v6, v11, v8, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    aget-object v6, v4, v7

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->styleSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v11, v8, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    iget v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {v3, v6, v11, v8, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-eqz p3, :cond_c

    const/4 v6, 0x0

    aput-boolean v12, p3, v6

    :cond_c
    iget-object v6, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-object v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    if-eqz v6, :cond_d

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_d
    iget-object v6, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v8, v6, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    if-eqz v8, :cond_f

    iget v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    sget v8, Lorg/telegram/ui/Components/QuoteSpan;->COLLAPSE_LINES:I

    add-int/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget v11, v8, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    if-ge v6, v11, :cond_f

    iget-object v13, v8, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    if-nez v13, :cond_e

    new-instance v13, Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    iget-object v15, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;-><init>(Lorg/telegram/ui/Components/QuoteSpan;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    :cond_e
    iget-object v8, v10, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-object v8, v8, Lorg/telegram/ui/Components/QuoteSpan;->collapsedSpan:Lorg/telegram/ui/Components/QuoteSpan$QuoteCollapsedPart;

    invoke-interface {v3, v8, v6, v11, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    if-nez v5, :cond_10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    aget-object v6, v4, v7

    iget-boolean v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    if-eq v6, v9, :cond_11

    if-eqz p3, :cond_11

    const/4 v6, 0x0

    aput-boolean v12, p3, v6

    goto :goto_6

    :cond_11
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_13
    return-object v5

    :cond_14
    :goto_8
    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    :cond_15
    return-object p2
.end method

.method public static updateQuoteBlocksSpanned(Landroid/text/Layout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    check-cast v0, Landroid/text/Spanned;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/QuoteSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/QuoteSpan;

    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_5

    aget-object v2, v1, v3

    iget-boolean v4, v2, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    new-instance v4, Lorg/telegram/ui/Components/QuoteSpan$Block;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, v0, v2}, Lorg/telegram/ui/Components/QuoteSpan$Block;-><init>(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object p1

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-object p1
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method public getNewlineHack()Landroid/text/SpannableString;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->newline:Landroid/text/SpannableString;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->newline:Landroid/text/SpannableString;

    new-instance v1, Lorg/telegram/ui/Components/QuoteSpan$QuoteButtonNewLineSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/QuoteSpan$QuoteButtonNewLineSpan;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/QuoteSpan;->newline:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->newline:Landroid/text/SpannableString;

    return-object v0
.end method

.method public setColor(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->quoteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Components/QuoteSpan;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

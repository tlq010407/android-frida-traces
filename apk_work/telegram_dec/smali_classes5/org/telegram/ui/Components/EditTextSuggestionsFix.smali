.class public Lorg/telegram/ui/Components/EditTextSuggestionsFix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private beforeSpans:Ljava/util/HashMap;

.field private beforeSuggestionsCount:I

.field private ignore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applySpans(Ljava/lang/CharSequence;Ljava/util/HashMap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p0, Landroid/text/Spannable;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x21

    invoke-interface {p0, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static saveSpans(Ljava/lang/CharSequence;)Ljava/util/HashMap;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    instance-of v1, p0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    instance-of v6, v5, Landroid/text/style/SuggestionSpan;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/util/Pair;

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    array-length v1, v2

    if-lez v1, :cond_6

    :goto_2
    array-length v1, v2

    if-ge v3, v1, :cond_6

    aget-object v1, v2, v3

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    instance-of v4, v1, Landroid/text/style/SuggestionSpan;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->ignore:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->saveSpans(Ljava/lang/CharSequence;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->beforeSpans:Ljava/util/HashMap;

    instance-of p2, p1, Landroid/text/Spannable;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class p4, Landroid/text/style/SuggestionSpan;

    invoke-interface {p2, p3, p1, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/SuggestionSpan;

    array-length p3, p1

    :cond_1
    iput p3, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->beforeSuggestionsCount:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->ignore:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->beforeSpans:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->beforeSuggestionsCount:I

    if-lez v0, :cond_3

    :cond_2
    if-nez p2, :cond_3

    if-ne p3, p4, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->ignore:Z

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->applySpans(Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextSuggestionsFix;->ignore:Z

    :cond_3
    return-void
.end method

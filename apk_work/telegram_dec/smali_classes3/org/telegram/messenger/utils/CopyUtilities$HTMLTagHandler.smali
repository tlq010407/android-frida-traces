.class Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/CopyUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HTMLTagHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>()V

    return-void
.end method

.method private getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p2

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    aget-object p1, p2, v2

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;
    .locals 5

    .line 0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p2

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    aget-object v2, p2, v2

    iget v3, v2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    if-ne v3, p3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 7

    const-string v0, "animated-emoji"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x21

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const-string p1, "data-document-id"

    invoke-static {p4, p1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    new-instance p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p4, p1, p2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p3, p4, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v5

    :cond_0
    const-class p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p1, :cond_e

    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return v5

    :cond_2
    const-string v0, "spoiler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v6, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    new-instance p1, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p1, v1, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v5

    :cond_3
    invoke-direct {p0, p3, v6, v1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return v5

    :cond_5
    const-string v0, "pre"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_6

    const-string p1, "lang"

    invoke-static {p4, p1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p2, v5, p1, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILjava/lang/String;Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p2, p1, p4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v5

    :cond_6
    invoke-direct {p0, p3, v6, v5}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_7

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return v5

    :cond_8
    const-string p4, "blockquote"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    const/4 p2, 0x2

    if-eqz p1, :cond_9

    new-instance p1, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p1, p2, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v5

    :cond_9
    invoke-direct {p0, p3, v6, p2}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_a

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    return v5

    :cond_b
    const-string p4, "details"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p2, 0x3

    if-eqz p1, :cond_c

    new-instance p1, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p1, p2, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v5

    :cond_c
    invoke-direct {p0, p3, v6, p2}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    return v5

    :cond_e
    return v1
.end method

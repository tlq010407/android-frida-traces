.class public Lorg/telegram/PhoneFormat/RuleSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static pattern:Ljava/util/regex/Pattern;


# instance fields
.field public hasRuleWithIntlPrefix:Z

.field public hasRuleWithTrunkPrefix:Z

.field public matchLen:I

.field public rules:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v4, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v0, v4, :cond_1

    iget v4, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v0, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v4, v5, :cond_1

    if-eqz p4, :cond_5

    iget v4, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v5, v4, 0x3

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_4

    :cond_3
    if-eqz p2, :cond_1

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    if-nez p3, :cond_6

    if-eqz p2, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    iget v4, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    :cond_7
    if-eqz p2, :cond_1

    iget v4, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :cond_8
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    if-nez p4, :cond_f

    if-eqz p2, :cond_c

    iget-object p4, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v0, v3, :cond_a

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v0, v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v3, v4, :cond_a

    if-eqz p3, :cond_b

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    :cond_b
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz p3, :cond_f

    iget-object p4, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/PhoneFormat/PhoneRule;

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v0, v3, :cond_d

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v0, v3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v3, v4, :cond_d

    if-eqz p2, :cond_e

    iget v3, v1, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    :cond_e
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v2
.end method

.class public Lorg/telegram/PhoneFormat/PhoneRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public byte8:I

.field public flag12:I

.field public flag13:I

.field public format:Ljava/lang/String;

.field public hasIntlPrefix:Z

.field public hasTrunkPrefix:Z

.field public maxLen:I

.field public maxVal:I

.field public minVal:I

.field public otherFlag:I

.field public prefixLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, " "

    if-ge v2, v7, :cond_c

    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x23

    if-eq v7, v9, :cond_9

    const/16 v8, 0x28

    const/16 v9, 0x6e

    const/16 v10, 0x63

    const/4 v11, 0x1

    if-eq v7, v8, :cond_4

    if-eq v7, v10, :cond_2

    if-eq v7, v9, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_5

    const/4 v6, 0x1

    :cond_5
    :goto_1
    const/16 v8, 0x20

    if-ne v7, v8, :cond_7

    if-lez v2, :cond_7

    iget-object v8, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_6

    if-eqz p3, :cond_b

    :cond_6
    iget-object v8, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_7

    if-eqz p2, :cond_b

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x29

    if-lt v4, v8, :cond_8

    if-eqz v6, :cond_b

    if-ne v7, v9, :cond_b

    :cond_8
    iget-object v8, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v7, v9, :cond_b

    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_a

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_d

    if-nez v3, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    if-eqz p3, :cond_e

    if-nez v5, :cond_e

    invoke-virtual {v0, v1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

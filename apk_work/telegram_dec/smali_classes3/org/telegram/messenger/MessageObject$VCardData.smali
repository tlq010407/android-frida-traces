.class public Lorg/telegram/messenger/MessageObject$VCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCardData"
.end annotation


# instance fields
.field private company:Ljava/lang/String;

.field private emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$VCardData;->emails:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$VCardData;->phones:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 16

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    const-string v7, "PHOTO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, 0x1

    if-ltz v7, :cond_3

    const-string v7, "BEGIN:VCARD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v4, Lorg/telegram/messenger/MessageObject$VCardData;

    invoke-direct {v4}, Lorg/telegram/messenger/MessageObject$VCardData;-><init>()V

    goto :goto_1

    :cond_2
    const-string v7, "END:VCARD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    :cond_4
    const-string v7, "=QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "="

    if-eqz v7, :cond_5

    :try_start_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_6

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v10, v6}, [Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    :goto_2
    array-length v7, v6

    const/4 v10, 0x2

    if-lt v7, v10, :cond_0

    if-nez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    aget-object v7, v6, v2

    const-string v11, "ORG"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    aget-object v7, v6, v2

    const-string v11, ";"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v12, v11, :cond_b

    aget-object v15, v7, v12

    invoke-virtual {v15, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v1, v15

    if-eq v1, v10, :cond_8

    goto :goto_4

    :cond_8
    aget-object v1, v15, v2

    const-string v10, "CHARSET"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    aget-object v14, v15, v8

    goto :goto_4

    :cond_9
    aget-object v1, v15, v2

    const-string v10, "ENCODING"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object v13, v15, v8

    :cond_a
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    aget-object v1, v6, v8

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    if-eqz v13, :cond_c

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v1

    if-eqz v1, :cond_c

    array-length v6, v1

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    :cond_c
    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    const/16 v6, 0x3b

    const/16 v7, 0x20

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    aget-object v1, v6, v2

    const-string v7, "TEL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    aget-object v1, v6, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->phones:Ljava/util/ArrayList;

    aget-object v6, v6, v8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    aget-object v1, v6, v2

    const-string v7, "EMAIL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v6, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject$VCardData;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_f
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    if-eqz v3, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject$VCardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xa

    if-ge v1, v3, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject$VCardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_12
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    :goto_8
    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->emails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    iget-object v3, v4, Lorg/telegram/messenger/MessageObject$VCardData;->emails:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v1, v4, Lorg/telegram/messenger/MessageObject$VCardData;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_17
    return-object v0

    :catchall_0
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

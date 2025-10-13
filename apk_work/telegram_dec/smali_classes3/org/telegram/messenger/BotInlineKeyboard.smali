.class public Lorg/telegram/messenger/BotInlineKeyboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/BotInlineKeyboard$Button;,
        Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;,
        Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;,
        Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;,
        Lorg/telegram/messenger/BotInlineKeyboard$Source;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBot(Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;Z)Lorg/telegram/messenger/BotInlineKeyboard$Source;
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v1, v4

    new-array v1, v1, [[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;

    aput-object v6, v1, v4

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    aget-object v7, v1, v4

    new-instance v8, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-direct {v8, v9}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;-><init>(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    aput-object v8, v7, v6

    add-int/2addr v6, v0

    goto :goto_2

    :cond_1
    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v6, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineDecline:I

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_bot_decline_24:I

    invoke-direct {v5, v0, v6, v7}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-instance v6, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v7, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineAccept:I

    sget v8, Lorg/telegram/messenger/R$drawable;->filled_bot_approve_24:I

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-array v2, v2, [Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aput-object v5, v2, v3

    aput-object v6, v2, v0

    aput-object v2, v1, v4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr p0, v0

    new-instance v2, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v4, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineEdit:I

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_bot_suggest_24:I

    const/4 v6, 0x3

    invoke-direct {v2, v6, v4, v5}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-array v0, v0, [Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aput-object v2, v0, v3

    aput-object v0, v1, p0

    move v3, p1

    :cond_4
    new-instance p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;

    const/4 p1, 0x0

    invoke-direct {p0, v1, v3, p1}, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;-><init>([[Lorg/telegram/messenger/BotInlineKeyboard$Button;ILorg/telegram/messenger/BotInlineKeyboard$1;)V

    return-object p0
.end method

.method public static fromSuggestion()Lorg/telegram/messenger/BotInlineKeyboard$Source;
    .locals 9

    new-instance v0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;

    new-instance v1, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v2, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineDecline:I

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_bot_decline_24:I

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-instance v2, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v3, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineAccept:I

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_bot_approve_24:I

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v5}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-array v3, v6, [Lorg/telegram/messenger/BotInlineKeyboard$Button;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    new-instance v1, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    sget v2, Lorg/telegram/messenger/R$string;->PostSuggestionsInlineEdit:I

    sget v7, Lorg/telegram/messenger/R$drawable;->filled_bot_suggest_24:I

    const/4 v8, 0x3

    invoke-direct {v1, v8, v2, v7}, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;-><init>(III)V

    new-array v2, v4, [Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aput-object v1, v2, v5

    new-array v1, v6, [[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aput-object v3, v1, v5

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;-><init>([[Lorg/telegram/messenger/BotInlineKeyboard$Button;ILorg/telegram/messenger/BotInlineKeyboard$1;)V

    return-object v0
.end method

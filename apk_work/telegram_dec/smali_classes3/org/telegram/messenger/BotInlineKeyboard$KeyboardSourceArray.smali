.class Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/BotInlineKeyboard$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotInlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardSourceArray"
.end annotation


# instance fields
.field private final buttons:[[Lorg/telegram/messenger/BotInlineKeyboard$Button;

.field private final separators:I


# direct methods
.method private constructor <init>([[Lorg/telegram/messenger/BotInlineKeyboard$Button;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->buttons:[[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    iput p2, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->separators:I

    return-void
.end method

.method synthetic constructor <init>([[Lorg/telegram/messenger/BotInlineKeyboard$Button;ILorg/telegram/messenger/BotInlineKeyboard$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;-><init>([[Lorg/telegram/messenger/BotInlineKeyboard$Button;I)V

    return-void
.end method


# virtual methods
.method public getButton(II)Lorg/telegram/messenger/BotInlineKeyboard$Button;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->buttons:[[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getColumnsCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->buttons:[[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    aget-object p1, v0, p1

    array-length p1, p1

    return p1
.end method

.method public getRowsCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->buttons:[[Lorg/telegram/messenger/BotInlineKeyboard$Button;

    array-length v0, v0

    return v0
.end method

.method public hasSeparator(I)Z
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$KeyboardSourceArray;->separators:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic isEmpty()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/BotInlineKeyboard$Source$-CC;->$default$isEmpty(Lorg/telegram/messenger/BotInlineKeyboard$Source;)Z

    move-result v0

    return v0
.end method

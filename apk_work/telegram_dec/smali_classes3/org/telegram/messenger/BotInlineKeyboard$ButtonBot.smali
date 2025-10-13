.class public Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;
.super Lorg/telegram/messenger/BotInlineKeyboard$Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotInlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBot"
.end annotation


# instance fields
.field public final button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/BotInlineKeyboard$Button;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonBot;->button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;
.super Lorg/telegram/messenger/BotInlineKeyboard$Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotInlineKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonCustom"
.end annotation


# static fields
.field public static final SUGGESTION_ACCEPT:I = 0x2

.field public static final SUGGESTION_DECLINE:I = 0x1

.field public static final SUGGESTION_EDIT:I = 0x3


# instance fields
.field public final icon:I

.field public final id:I

.field public final text:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/BotInlineKeyboard$Button;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->id:I

    iput p2, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->text:I

    iput p3, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->icon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->icon:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->text:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

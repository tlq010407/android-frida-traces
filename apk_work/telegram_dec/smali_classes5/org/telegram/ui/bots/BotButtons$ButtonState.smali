.class public Lorg/telegram/ui/bots/BotButtons$ButtonState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonState"
.end annotation


# instance fields
.field public active:Z

.field public color:I

.field public position:Ljava/lang/String;

.field public progressVisible:Z

.field public shineEffect:Z

.field public text:Ljava/lang/String;

.field public textColor:I

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(ZZZZLjava/lang/String;II)Lorg/telegram/ui/bots/BotButtons$ButtonState;
    .locals 8

    .line 0
    const/4 v7, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/bots/BotButtons$ButtonState;->of(ZZZZLjava/lang/String;IILjava/lang/String;)Lorg/telegram/ui/bots/BotButtons$ButtonState;

    move-result-object p0

    return-object p0
.end method

.method public static of(ZZZZLjava/lang/String;IILjava/lang/String;)Lorg/telegram/ui/bots/BotButtons$ButtonState;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;

    invoke-direct {v0}, Lorg/telegram/ui/bots/BotButtons$ButtonState;-><init>()V

    iput-boolean p0, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->visible:Z

    iput-boolean p1, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->active:Z

    iput-boolean p2, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->progressVisible:Z

    iput-boolean p3, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->shineEffect:Z

    iput-object p4, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->text:Ljava/lang/String;

    iput p5, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->color:I

    iput p6, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->textColor:I

    iput-object p7, v0, Lorg/telegram/ui/bots/BotButtons$ButtonState;->position:Ljava/lang/String;

    return-object v0
.end method

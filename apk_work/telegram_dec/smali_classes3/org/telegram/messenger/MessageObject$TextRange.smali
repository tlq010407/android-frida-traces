.class public Lorg/telegram/messenger/MessageObject$TextRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextRange"
.end annotation


# instance fields
.field public code:Z

.field public collapse:Z

.field public end:I

.field public language:Ljava/lang/String;

.field public quote:Z

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iput p2, p0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    return-void
.end method

.method public constructor <init>(IIZZZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iput p2, p0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iput-boolean p3, p0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/MessageObject$TextRange;->collapse:Z

    iput-object p6, p0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    return-void
.end method

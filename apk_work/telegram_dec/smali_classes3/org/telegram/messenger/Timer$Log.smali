.class public Lorg/telegram/messenger/Timer$Log;
.super Lorg/telegram/messenger/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Log"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/Timer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/Timer$Log;->this$0:Lorg/telegram/messenger/Timer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/Timer$Task;-><init>(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/Timer$Task;->task:Ljava/lang/String;

    return-object v0
.end method

.class Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheChatsExceptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field final exception:Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

.field final synthetic this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;ILorg/telegram/messenger/CacheByChatsController$KeepMediaException;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;->this$0:Lorg/telegram/ui/CacheChatsExceptionsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;->exception:Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;ILorg/telegram/messenger/CacheByChatsController$KeepMediaException;Lorg/telegram/ui/CacheChatsExceptionsFragment$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;-><init>(Lorg/telegram/ui/CacheChatsExceptionsFragment;ILorg/telegram/messenger/CacheByChatsController$KeepMediaException;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;->exception:Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/CacheChatsExceptionsFragment$Item;->exception:Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    if-eqz p1, :cond_4

    iget-wide v2, v2, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    iget-wide v4, p1, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.class public Lorg/telegram/messenger/CaptchaController$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CaptchaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public currentAccount:I

.field public key_id:Ljava/lang/String;

.field public requestTokens:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/CaptchaController$Request;->requestTokens:Ljava/util/HashSet;

    iput p1, p0, Lorg/telegram/messenger/CaptchaController$Request;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/messenger/CaptchaController$Request;->action:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/CaptchaController$Request;->key_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lorg/telegram/messenger/CaptchaController;->currentRequests:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/telegram/messenger/CaptchaController$Request;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/CaptchaController$Request;->requestTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/telegram/messenger/CaptchaController$Request;->requestTokens:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/CaptchaController$Request;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    iget v1, p0, Lorg/telegram/messenger/CaptchaController$Request;->currentAccount:I

    invoke-static {v1, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_receivedCaptchaResult(I[ILjava/lang/String;)V

    return-void
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/telegram/messenger/CaptchaController$Request;->currentAccount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/CaptchaController$Request;->action:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/CaptchaController$Request;->key_id:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

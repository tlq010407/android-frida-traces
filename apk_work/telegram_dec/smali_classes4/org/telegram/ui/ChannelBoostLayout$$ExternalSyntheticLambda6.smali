.class public final synthetic Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelBoostLayout;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChannelBoostLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout;->$r8$lambda$S9Pz4JotZX-_U56uiBAd2lFXDYA(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

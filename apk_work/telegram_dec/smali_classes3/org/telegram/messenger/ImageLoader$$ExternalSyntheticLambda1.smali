.class public final synthetic Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader;

.field public final synthetic f$1:Lorg/telegram/messenger/ImageReceiver;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/ImageReceiver;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->$r8$lambda$PgQ51Q40ljfywGW_jpPh3y2a0OQ(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V

    return-void
.end method

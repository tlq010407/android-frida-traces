.class public final synthetic Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->$r8$lambda$-kzbON1K01qS3tdb0QMBK7a6XHA(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    return-void
.end method

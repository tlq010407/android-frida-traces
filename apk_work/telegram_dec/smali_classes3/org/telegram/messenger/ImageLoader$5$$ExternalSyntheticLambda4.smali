.class public final synthetic Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader$5;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/FileLoadOperation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader$5;Ljava/lang/String;Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ImageLoader$5;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/ImageLoader$5;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$5;->$r8$lambda$KUpvvHgzJUGuwCK0tm-GAMdncUY(Lorg/telegram/messenger/ImageLoader$5;Ljava/lang/String;Lorg/telegram/messenger/FileLoadOperation;)V

    return-void
.end method

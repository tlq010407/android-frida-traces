.class public final synthetic Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader;

.field public final synthetic f$1:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iget v2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->$r8$lambda$jbF_e2vz7huP8fXzonnyJdZDdLA(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

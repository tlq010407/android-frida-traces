.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;[ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$1:[I

    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$1:[I

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$nGf2vg6_qrzCPXWCMNer3l8-Da0(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;[ILjava/lang/Runnable;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FilePathDatabase;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/FilePathDatabase;

    iput-object p2, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/FilePathDatabase;

    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/FilePathDatabase;->$r8$lambda$o620mQhbb-KNtJWoFd8lNpFxXqw(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

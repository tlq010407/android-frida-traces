.class public abstract Lkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final platformExceptionHandlers:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sput-object v0, Lkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt;->platformExceptionHandlers:Ljava/util/Collection;

    return-void
.end method

.method public static final getPlatformExceptionHandlers()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt;->platformExceptionHandlers:Ljava/util/Collection;

    return-object v0
.end method

.method public static final propagateExceptionFinalResort(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

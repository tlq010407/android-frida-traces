.class public abstract Lio/reactivex/rxjava3/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationTask;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$SingleTask;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadTask;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$IOTask;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadHolder;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$IoHolder;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationHolder;,
        Lio/reactivex/rxjava3/schedulers/Schedulers$SingleHolder;
    }
.end annotation


# static fields
.field static final COMPUTATION:Lio/reactivex/rxjava3/core/Scheduler;

.field static final IO:Lio/reactivex/rxjava3/core/Scheduler;

.field static final NEW_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

.field static final SINGLE:Lio/reactivex/rxjava3/core/Scheduler;

.field static final TRAMPOLINE:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/schedulers/Schedulers$SingleTask;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/Schedulers$SingleTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->initSingleScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->SINGLE:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationTask;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/Schedulers$ComputationTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->initComputationScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lio/reactivex/rxjava3/schedulers/Schedulers$IOTask;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/Schedulers$IOTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->initIoScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;->instance()Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadTask;

    invoke-direct {v0}, Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->initNewThreadScheduler(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method

.method public static computation()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onComputationScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onIoScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

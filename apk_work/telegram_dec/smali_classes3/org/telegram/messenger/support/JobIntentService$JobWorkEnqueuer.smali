.class final Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer;
.super Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p2, p3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/job/JobInfo$Builder;I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/job/JobScheduler;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v2, Landroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/support/JobIntentService$JobWorkEnqueuer$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobScheduler;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    return-void
.end method

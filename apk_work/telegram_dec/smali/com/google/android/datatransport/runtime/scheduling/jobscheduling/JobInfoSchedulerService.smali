.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$BZ-xzjdP8f9ci1Poc-BjjP4jQ-k(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline2;->m(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-static {v0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$$ExternalSyntheticApiModelOutline23;->m(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-static {v1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$$ExternalSyntheticApiModelOutline23;->m(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-static {v2, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$$ExternalSyntheticApiModelOutline15;->m(Landroid/os/PersistableBundle;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobParameters;)Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-static {v3, v4}, Landroidx/core/content/pm/ShortcutInfoCompat$$ExternalSyntheticApiModelOutline15;->m(Landroid/os/PersistableBundle;Ljava/lang/String;)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticApiModelOutline1;->m(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->valueOf(I)Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    :cond_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getUploader()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v0

    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->upload(Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

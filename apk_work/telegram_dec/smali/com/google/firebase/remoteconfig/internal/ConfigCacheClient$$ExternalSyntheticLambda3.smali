.class public final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iput-boolean p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iget-boolean v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->$r8$lambda$LvQjX7XEpXst4uSOi9kWWub2vbA(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

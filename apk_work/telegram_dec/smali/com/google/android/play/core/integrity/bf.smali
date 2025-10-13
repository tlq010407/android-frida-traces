.class final Lcom/google/android/play/core/integrity/bf;
.super Lcom/google/android/play/core/integrity/bm;
.source "SourceFile"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic c:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;IJLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bf;->c:Lcom/google/android/play/core/integrity/bn;

    iput-wide p4, p0, Lcom/google/android/play/core/integrity/bf;->a:J

    iput-object p6, p0, Lcom/google/android/play/core/integrity/bf;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/bm;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bf;->c:Lcom/google/android/play/core/integrity/bn;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bn;->k(Lcom/google/android/play/core/integrity/bn;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bf;->c:Lcom/google/android/play/core/integrity/bn;

    iget-object v2, v1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v2}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/integrity/internal/i;

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/bf;->a:J

    invoke-static {v1, v3, v4, v0}, Lcom/google/android/play/core/integrity/bn;->b(Lcom/google/android/play/core/integrity/bn;JI)Landroid/os/Bundle;

    move-result-object v1

    new-instance v3, Lcom/google/android/play/core/integrity/bl;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/bf;->c:Lcom/google/android/play/core/integrity/bn;

    iget-object v5, p0, Lcom/google/android/play/core/integrity/bf;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/integrity/bl;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/play/integrity/internal/i;->e(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/k;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/play/core/integrity/bf;->c:Lcom/google/android/play/core/integrity/bn;

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/bf;->a:J

    invoke-static {v2}, Lcom/google/android/play/core/integrity/bn;->i(Lcom/google/android/play/core/integrity/bn;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v0, "warmUpIntegrityToken(%s)"

    invoke-virtual {v2, v1, v0, v4}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bf;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v3, -0x64

    invoke-direct {v2, v3, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/bm;->a(Ljava/lang/Exception;)V

    return-void
.end method

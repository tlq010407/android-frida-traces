.class final Lcom/google/android/play/core/integrity/bg;
.super Lcom/google/android/play/core/integrity/bm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic e:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;ILjava/lang/String;JJLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/bg;->a:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    iput-wide p7, p0, Lcom/google/android/play/core/integrity/bg;->c:J

    iput-object p9, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/bm;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bn;->k(Lcom/google/android/play/core/integrity/bn;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    iget-object v0, v1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/integrity/internal/i;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/bg;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    iget-wide v5, p0, Lcom/google/android/play/core/integrity/bg;->c:J

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/play/core/integrity/bn;->a(Lcom/google/android/play/core/integrity/bn;Ljava/lang/String;JJI)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/integrity/bk;

    iget-object v3, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-wide v5, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/play/core/integrity/bk;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;J)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/integrity/internal/i;->d(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/k;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/bg;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bn;->i(Lcom/google/android/play/core/integrity/bn;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "requestExpressIntegrityToken(%s, %s)"

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v3, -0x64

    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/bm;->a(Ljava/lang/Exception;)V

    return-void
.end method

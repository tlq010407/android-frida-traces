.class Lcom/google/android/play/core/integrity/bi;
.super Lcom/google/android/play/integrity/internal/j;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic b:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/j;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.class final Lcom/google/android/play/core/integrity/as;
.super Lcom/google/android/play/integrity/internal/q;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final b:Lcom/google/android/play/integrity/internal/ae;

.field private final c:Lcom/google/android/play/integrity/internal/s;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/play/core/integrity/k;

.field private final f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/k;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/ae;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/q;-><init>()V

    new-instance v0, Lcom/google/android/play/integrity/internal/s;

    const-string v1, "RequestDialogCallbackImpl"

    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/integrity/as;->c:Lcom/google/android/play/integrity/internal/s;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/as;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/as;->e:Lcom/google/android/play/core/integrity/k;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/as;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/as;->f:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/as;->b:Lcom/google/android/play/integrity/internal/ae;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->b:Lcom/google/android/play/integrity/internal/ae;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/as;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->c:Lcom/google/android/play/integrity/internal/s;

    const-string v4, "onRequestDialog(%s)"

    invoke-virtual {v0, v4, v2}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->e:Lcom/google/android/play/core/integrity/k;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/integrity/k;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    const-string v0, "dialog.intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->c:Lcom/google/android/play/integrity/internal/s;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "onRequestDialog(%s): got null dialog intent"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/integrity/internal/s;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->c:Lcom/google/android/play/integrity/internal/s;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Integrity Dialog requires minimum SDK version: %d"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/integrity/as;->f:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->b:Lcom/google/android/play/integrity/internal/ae;

    new-instance v0, Lcom/google/android/play/core/integrity/ar;

    invoke-virtual {p1}, Lcom/google/android/play/integrity/internal/ae;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/integrity/ar;-><init>(Lcom/google/android/play/core/integrity/as;Landroid/os/Handler;)V

    const-string p1, "result_receiver"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->c:Lcom/google/android/play/integrity/internal/s;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Starting dialog intent..."

    invoke-virtual {p1, v2, v0}, Lcom/google/android/play/integrity/internal/s;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/integrity/as;->f:Landroid/app/Activity;

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

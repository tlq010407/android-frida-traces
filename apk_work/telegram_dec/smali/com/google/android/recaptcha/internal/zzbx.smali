.class final Lcom/google/android/recaptcha/internal/zzbx;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzcj;

.field final synthetic zzc:Ljava/util/List;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzca;

.field private synthetic zze:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzcj;Ljava/util/List;Lcom/google/android/recaptcha/internal/zzca;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzc:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzd:Lcom/google/android/recaptcha/internal/zzca;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbx;

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzd:Lcom/google/android/recaptcha/internal/zzca;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/recaptcha/internal/zzbx;-><init>(Lcom/google/android/recaptcha/internal/zzcj;Ljava/util/List;Lcom/google/android/recaptcha/internal/zzca;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzbx;->zze:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzbx;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Lcom/google/android/recaptcha/internal/zzbx;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzbx;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/recaptcha/internal/zzbx;->zza:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzbx;->zze:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzfh;->zzb()Lcom/google/android/recaptcha/internal/zzfh;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzcj;->zza()I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzc:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzcj;->zza()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzcj;->zza()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/recaptcha/internal/zzpr;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzd:Lcom/google/android/recaptcha/internal/zzca;

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    invoke-static {v3, v2, v4}, Lcom/google/android/recaptcha/internal/zzca;->zzf(Lcom/google/android/recaptcha/internal/zzca;Lcom/google/android/recaptcha/internal/zzpr;Lcom/google/android/recaptcha/internal/zzcj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzd:Lcom/google/android/recaptcha/internal/zzca;

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzbx;->zzb:Lcom/google/android/recaptcha/internal/zzcj;

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/recaptcha/internal/zzbx;->zza:I

    invoke-static {v1, p1, v2, p0}, Lcom/google/android/recaptcha/internal/zzca;->zzd(Lcom/google/android/recaptcha/internal/zzca;Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzcj;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzfh;->zzf()Lcom/google/android/recaptcha/internal/zzfh;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1}, Lcom/google/android/recaptcha/internal/zzfh;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.class final Lcom/google/android/recaptcha/internal/zzaj;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Landroid/app/Application;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzab;

.field final synthetic zze:Ljava/lang/String;

.field final synthetic zzf:Lcom/google/android/recaptcha/internal/zzbq;

.field final synthetic zzg:Lcom/google/android/recaptcha/internal/zzbd;

.field final synthetic zzh:Lcom/google/android/recaptcha/internal/zzbg;

.field final synthetic zzi:J

.field final synthetic zzj:Lcom/google/android/recaptcha/internal/zzt;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/recaptcha/internal/zzab;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzbq;Lcom/google/android/recaptcha/internal/zzbd;Lcom/google/android/recaptcha/internal/zzt;Landroid/webkit/WebView;Lcom/google/android/recaptcha/internal/zzbg;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzd:Lcom/google/android/recaptcha/internal/zzab;

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzaj;->zze:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzf:Lcom/google/android/recaptcha/internal/zzbq;

    iput-object p5, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzg:Lcom/google/android/recaptcha/internal/zzbd;

    iput-object p6, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    iput-object p8, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzh:Lcom/google/android/recaptcha/internal/zzbg;

    iput-wide p9, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzi:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    iget-object v8, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzh:Lcom/google/android/recaptcha/internal/zzbg;

    iget-wide v9, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzi:J

    new-instance p1, Lcom/google/android/recaptcha/internal/zzaj;

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzd:Lcom/google/android/recaptcha/internal/zzab;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzaj;->zze:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzf:Lcom/google/android/recaptcha/internal/zzbq;

    iget-object v5, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzg:Lcom/google/android/recaptcha/internal/zzbd;

    iget-object v6, p0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    const/4 v7, 0x0

    move-object v0, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/recaptcha/internal/zzaj;-><init>(Landroid/app/Application;Lcom/google/android/recaptcha/internal/zzab;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzbq;Lcom/google/android/recaptcha/internal/zzbd;Lcom/google/android/recaptcha/internal/zzt;Landroid/webkit/WebView;Lcom/google/android/recaptcha/internal/zzbg;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzaj;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p1, Lcom/google/android/recaptcha/internal/zzaj;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzaj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:I

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzaj;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/recaptcha/internal/zzoe;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object/from16 v22, v2

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzaj;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/recaptcha/internal/zzam;->zza:Lcom/google/android/recaptcha/internal/zzam;

    iget-object v7, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    iget-object v11, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzd:Lcom/google/android/recaptcha/internal/zzab;

    iget-object v8, v0, Lcom/google/android/recaptcha/internal/zzaj;->zze:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzf:Lcom/google/android/recaptcha/internal/zzbq;

    iget-object v9, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzg:Lcom/google/android/recaptcha/internal/zzbd;

    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    iput v5, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:I

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzt;->zza()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v13, Lcom/google/android/recaptcha/internal/zzal;

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/recaptcha/internal/zzal;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzbd;Lcom/google/android/recaptcha/internal/zzbq;Lcom/google/android/recaptcha/internal/zzab;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v13, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_5

    :goto_1
    iget-object v6, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    check-cast v2, Lcom/google/android/recaptcha/internal/zzoe;

    new-instance v15, Lcom/google/android/recaptcha/internal/zzez;

    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v9, v0, Lcom/google/android/recaptcha/internal/zzaj;->zze:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    iget-object v11, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzd:Lcom/google/android/recaptcha/internal/zzab;

    iget-object v12, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzg:Lcom/google/android/recaptcha/internal/zzbd;

    iget-object v13, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    iget-object v14, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzh:Lcom/google/android/recaptcha/internal/zzbg;

    iget-object v6, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzf:Lcom/google/android/recaptcha/internal/zzbq;

    move-object v7, v15

    move-object v4, v15

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lcom/google/android/recaptcha/internal/zzez;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzab;Lcom/google/android/recaptcha/internal/zzbd;Lcom/google/android/recaptcha/internal/zzt;Lcom/google/android/recaptcha/internal/zzbg;Lcom/google/android/recaptcha/internal/zzbq;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzam;->zze()Lcom/google/android/recaptcha/internal/zzg;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/recaptcha/internal/zzg;->zzd(Lcom/google/android/recaptcha/internal/zza;)V

    iget-wide v6, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzi:J

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzam;->zze()Lcom/google/android/recaptcha/internal/zzg;

    move-result-object v4

    iput-object v2, v0, Lcom/google/android/recaptcha/internal/zzaj;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:I

    invoke-virtual {v4, v6, v7, v2, v0}, Lcom/google/android/recaptcha/internal/zzg;->zzb(JLcom/google/android/recaptcha/internal/zzoe;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0

    :goto_2
    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzc:Landroid/app/Application;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzaw;

    sget-object v3, Lcom/google/android/recaptcha/internal/zzam;->zza:Lcom/google/android/recaptcha/internal/zzam;

    iget-object v3, v0, Lcom/google/android/recaptcha/internal/zzaj;->zze:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzj:Lcom/google/android/recaptcha/internal/zzt;

    iget-object v5, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzd:Lcom/google/android/recaptcha/internal/zzab;

    iget-object v6, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzg:Lcom/google/android/recaptcha/internal/zzbd;

    iget-object v7, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzh:Lcom/google/android/recaptcha/internal/zzbg;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzam;->zze()Lcom/google/android/recaptcha/internal/zzg;

    move-result-object v18

    new-instance v8, Lcom/google/android/recaptcha/internal/zzq;

    invoke-direct {v8, v1}, Lcom/google/android/recaptcha/internal/zzq;-><init>(Landroid/content/Context;)V

    new-instance v26, Lcom/google/android/recaptcha/internal/zzbs;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/recaptcha/internal/zzbs;-><init>()V

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-direct/range {v16 .. v26}, Lcom/google/android/recaptcha/internal/zzaw;-><init>(Landroid/app/Application;Lcom/google/android/recaptcha/internal/zzg;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzt;Lcom/google/android/recaptcha/internal/zzab;Lcom/google/android/recaptcha/internal/zzoe;Lcom/google/android/recaptcha/internal/zzbd;Lcom/google/android/recaptcha/internal/zzbg;Lcom/google/android/recaptcha/internal/zzq;Lcom/google/android/recaptcha/internal/zzbs;)V

    return-object v2

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzt;->zzc()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzt;->zzc()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v2

    iput-object v3, v0, Lcom/google/android/recaptcha/internal/zzaj;->zza:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lcom/google/android/recaptcha/internal/zzaj;->zzb:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_3
    sget-object v2, Lcom/google/android/recaptcha/internal/zzam;->zza:Lcom/google/android/recaptcha/internal/zzam;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzg;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5, v3}, Lcom/google/android/recaptcha/internal/zzg;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lcom/google/android/recaptcha/internal/zzam;->zzf(Lcom/google/android/recaptcha/internal/zzg;)V

    throw v1

    :cond_5
    :goto_4
    return-object v1
.end method

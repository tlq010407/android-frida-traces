.class public final Lcom/google/android/recaptcha/internal/zzeu;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/recaptcha/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/recaptcha/internal/zzez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzez;->zze(Lcom/google/android/recaptcha/internal/zzez;)Lcom/google/android/recaptcha/internal/zzbg;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzez;->zzd(Lcom/google/android/recaptcha/internal/zzez;)Lcom/google/android/recaptcha/internal/zzbd;

    move-result-object p1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzne;->zzc:Lcom/google/android/recaptcha/internal/zzne;

    invoke-virtual {p1, v0}, Lcom/google/android/recaptcha/internal/zzbd;->zza(Lcom/google/android/recaptcha/internal/zzne;)Lcom/google/android/recaptcha/internal/zzbb;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/recaptcha/internal/zzbg;->zza(Lcom/google/android/recaptcha/internal/zzbb;)V

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzez;->zzh(Lcom/google/android/recaptcha/internal/zzez;)Lcom/google/android/recaptcha/internal/zzfh;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzfh;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzv;->zza:Lcom/google/android/recaptcha/internal/zzv;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzx;->zzl:Lcom/google/android/recaptcha/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzx;->zza()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/google/android/recaptcha/internal/zzv;->zza(IJ)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/recaptcha/internal/zzp;

    sget-object p3, Lcom/google/android/recaptcha/internal/zzn;->zze:Lcom/google/android/recaptcha/internal/zzn;

    iget-object p4, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-static {p4}, Lcom/google/android/recaptcha/internal/zzez;->zzi(Lcom/google/android/recaptcha/internal/zzez;)Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/recaptcha/internal/zzl;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/recaptcha/internal/zzl;->zzY:Lcom/google/android/recaptcha/internal/zzl;

    :cond_0
    const/4 p4, 0x0

    invoke-direct {p1, p3, p2, p4}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzez;->zzk()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzez;->zzk()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzfb;->zza:Lcom/google/android/recaptcha/internal/zzfb;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzfb;->zzb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzfb;->zza(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/recaptcha/internal/zzp;

    sget-object p2, Lcom/google/android/recaptcha/internal/zzn;->zzc:Lcom/google/android/recaptcha/internal/zzn;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzl;->zzac:Lcom/google/android/recaptcha/internal/zzl;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v2}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzez;->zzk()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzeu;->zza:Lcom/google/android/recaptcha/internal/zzez;

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzez;->zzk()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "text/plain"

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.UUID;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzam {
    private static zzaw zzb;
    public static final zzam zza = new zzam();
    private static final String zzc = UUID.randomUUID().toString();
    private static final Mutex zzd = MutexKt.Mutex$default(false, 1, null);
    private static final zzt zze = new zzt();
    private static zzg zzf = new zzg(null, 1, 0 == true ? 1 : 0);

    private zzam() {
    }

    public static final Object zzc(Application application, String str, long j, zzbq zzbqVar, Continuation continuation) throws RecaptchaException, TimeoutCancellationException, ApiException {
        return BuildersKt.withContext(zze.zzb().getCoroutineContext(), new zzah(application, str, j, null, null), continuation);
    }

    public static final Task zzd(Application application, String str, long j) throws RecaptchaException, TimeoutCancellationException, ApiException {
        return zzj.zza(BuildersKt__Builders_commonKt.async$default(zze.zzb(), null, null, new zzak(application, str, j, null), 3, null));
    }

    public static final zzg zze() {
        return zzf;
    }

    public static final void zzf(zzg zzgVar) {
        zzf = zzgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.recaptcha.internal.zzai, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(Application application, String str, long j, zzab zzabVar, WebView webView, zzbq zzbqVar, zzt zztVar, Continuation continuation) throws Throwable {
        ?? zzaiVar;
        Mutex mutex;
        zzt zztVar2;
        zzab zzabVar2;
        Application application2;
        long j2;
        String str2;
        Mutex mutex2;
        zzbd zzbdVar;
        zzbg zzbgVar;
        zzne zzneVar;
        zzaw zzawVar;
        zzbd zzbdVar2;
        zzbg zzbgVar2;
        Mutex mutex3;
        if (continuation instanceof zzai) {
            zzai zzaiVar2 = (zzai) continuation;
            int i = zzaiVar2.zzg;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaiVar2.zzg = i - Integer.MIN_VALUE;
                zzaiVar = zzaiVar2;
            } else {
                zzaiVar = new zzai(this, continuation);
            }
        }
        Object obj = zzaiVar.zze;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaiVar.zzg;
        try {
            try {
                try {
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        ?? r0 = zzd;
                        zzaiVar.zza = application;
                        zzaiVar.zzb = str;
                        zzaiVar.zzc = zzabVar;
                        zzaiVar.zzi = zztVar;
                        zzaiVar.zzh = r0;
                        zzaiVar.zzd = j;
                        zzaiVar.zzg = 1;
                        if (r0.lock(null, zzaiVar) != coroutine_suspended) {
                            mutex = r0;
                            zztVar2 = zztVar;
                            zzabVar2 = zzabVar;
                            application2 = application;
                            j2 = j;
                            str2 = str;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        zzbgVar2 = (zzbg) zzaiVar.zzc;
                        zzbdVar2 = (zzbd) zzaiVar.zzb;
                        mutex3 = (Mutex) zzaiVar.zza;
                        try {
                            ResultKt.throwOnFailure(obj);
                            zzawVar = (zzaw) obj;
                            zzb = zzawVar;
                            zzbgVar2.zza(zzbdVar2.zza(zzne.INIT_TOTAL));
                            mutex = mutex3;
                            mutex.unlock(null);
                            return zzawVar;
                        } catch (RecaptchaException e) {
                            throw e;
                        } catch (Exception unused) {
                            throw new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null);
                        }
                    }
                    j2 = zzaiVar.zzd;
                    Mutex mutex4 = zzaiVar.zzh;
                    zzt zztVar3 = zzaiVar.zzi;
                    zzabVar2 = (zzab) zzaiVar.zzc;
                    str2 = (String) zzaiVar.zzb;
                    Application application3 = (Application) zzaiVar.zza;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex4;
                    zztVar2 = zztVar3;
                    application2 = application3;
                    if (j2 < 5000) {
                        zzbgVar.zzb(zzbdVar.zza(zzneVar), new zzp(zzn.zzm, zzl.zzT, null), null);
                        throw new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
                    }
                    if (ContextCompat.checkSelfPermission(application2, "android.permission.INTERNET") != 0) {
                        zzbgVar.zzb(zzbdVar.zza(zzneVar), new zzp(zzn.zze, zzl.zzv, null), null);
                        throw new RecaptchaException(RecaptchaErrorCode.NETWORK_ERROR, null, 2, null);
                    }
                    zzbq zzbqVar2 = new zzbq(new zzy(application2), zzbgVar);
                    zzawVar = zzb;
                    if (zzawVar != null) {
                        if (Intrinsics.areEqual(zzawVar.zzg(), str2)) {
                            zzbgVar.zza(zzbdVar.zza(zzneVar));
                            mutex.unlock(null);
                            return zzawVar;
                        }
                        throw new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, "Only one site key can be used per runtime. The site key you provided " + str2 + " is different than " + zzawVar.zzg());
                    }
                    zzaiVar.zza = mutex;
                    zzaiVar.zzb = zzbdVar;
                    zzaiVar.zzc = zzbgVar;
                    zzaiVar.zzi = null;
                    zzaiVar.zzh = null;
                    zzaiVar.zzg = 2;
                    Mutex mutex5 = mutex;
                    Object objWithTimeout = TimeoutKt.withTimeout(j2, new zzaj(application2, zzabVar2, str2, zzbqVar2, zzbdVar, zztVar2, null, zzbgVar, j2, null), zzaiVar);
                    if (objWithTimeout != coroutine_suspended) {
                        zzbdVar2 = zzbdVar;
                        zzbgVar2 = zzbgVar;
                        obj = objWithTimeout;
                        mutex3 = mutex5;
                        zzawVar = (zzaw) obj;
                        zzb = zzawVar;
                        zzbgVar2.zza(zzbdVar2.zza(zzne.INIT_TOTAL));
                        mutex = mutex3;
                        mutex.unlock(null);
                        return zzawVar;
                    }
                    return coroutine_suspended;
                } catch (RecaptchaException e2) {
                    e = e2;
                    throw e;
                } catch (Exception unused2) {
                    throw new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null);
                } catch (Throwable th) {
                    th = th;
                    zzaiVar = mutex2;
                    zzaiVar.unlock(null);
                    throw th;
                }
                String string = UUID.randomUUID().toString();
                zzbdVar = new zzbd(zzc, string, null);
                zzbdVar.zzc(string);
                zzbgVar = new zzbg(str2, application2, zzabVar2, zztVar2, new zzbm(application2, new zzbo(zzabVar2.zzc()), zztVar2.zza()));
                zzneVar = zzne.INIT_TOTAL;
                zzbb zzbbVarZza = zzbdVar.zza(zzneVar);
                zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
            } catch (RecaptchaException e3) {
                e = e3;
            } catch (Exception unused3) {
            } catch (Throwable th2) {
                th = th2;
                mutex2 = mutex;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

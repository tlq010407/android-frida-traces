package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.android.recaptcha.RecaptchaClient;
import com.google.android.recaptcha.RecaptchaException;
import com.google.android.recaptcha.RecaptchaTasksClient;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.TimeoutKt;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzaw implements RecaptchaClient, RecaptchaTasksClient {
    public static final zzan zza = new zzan(null);
    private static final Regex zzb = new Regex("^[a-zA-Z0-9/_]{0,100}$");
    private final Application zzc;
    private final zzg zzd;
    private final String zze;
    private final zzab zzf;
    private final zzoe zzg;
    private final zzbd zzh;
    private final zzbg zzi;
    private final zzq zzj;
    private final zzbs zzk;
    private final zzt zzl;

    public zzaw(Application application, zzg zzgVar, String str, zzt zztVar, zzab zzabVar, zzoe zzoeVar, zzbd zzbdVar, zzbg zzbgVar, zzq zzqVar, zzbs zzbsVar) {
        this.zzc = application;
        this.zzd = zzgVar;
        this.zze = str;
        this.zzl = zztVar;
        this.zzf = zzabVar;
        this.zzg = zzoeVar;
        this.zzh = zzbdVar;
        this.zzi = zzbgVar;
        this.zzj = zzqVar;
        this.zzk = zzbsVar;
    }

    public static final /* synthetic */ void zzi(zzaw zzawVar, long j, RecaptchaAction recaptchaAction, zzbd zzbdVar) throws zzp {
        zzbb zzbbVarZza = zzbdVar.zza(zzne.EXECUTE_NATIVE);
        zzbg zzbgVar = zzawVar.zzi;
        zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
        zzp zzpVar = !zzb.matches(recaptchaAction.getAction()) ? new zzp(zzn.zzi, zzl.zzq, null) : null;
        if (j < 5000) {
            zzpVar = new zzp(zzn.zzc, zzl.zzT, null);
        }
        zzbg zzbgVar2 = zzawVar.zzi;
        if (zzpVar == null) {
            zzbgVar2.zza(zzbbVarZza);
        } else {
            zzbgVar2.zzb(zzbbVarZza, zzpVar, null);
            throw zzpVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzj(long j, String str, zzbd zzbdVar, Continuation continuation) throws Throwable {
        zzao zzaoVar;
        Exception e;
        zzaw zzawVar;
        zzbb zzbbVar;
        if (continuation instanceof zzao) {
            zzaoVar = (zzao) continuation;
            int i = zzaoVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaoVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzaoVar = new zzao(this, continuation);
            }
        }
        Object objZza = zzaoVar.zza;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaoVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzbb zzbbVarZza = zzbdVar.zza(zzne.COLLECT_SIGNALS);
            zzbg zzbgVar = this.zzi;
            zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
            try {
                zzg zzgVar = this.zzd;
                zzaoVar.zzd = this;
                zzaoVar.zze = zzbbVarZza;
                zzaoVar.zzc = 1;
                objZza = zzgVar.zza(str, j, zzaoVar);
                if (objZza == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzawVar = this;
                zzbbVar = zzbbVarZza;
            } catch (Exception e2) {
                e = e2;
                zzawVar = this;
                zzbbVar = zzbbVarZza;
                zzp zzpVar = !(e instanceof zzp) ? (zzp) e : new zzp(zzn.zzc, zzl.zzan, null);
                zzawVar.zzi.zzb(zzbbVar, zzpVar, null);
                throw zzpVar;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zzbbVar = zzaoVar.zze;
            zzawVar = zzaoVar.zzd;
            try {
                ResultKt.throwOnFailure(objZza);
            } catch (Exception e3) {
                e = e3;
                if (!(e instanceof zzp)) {
                }
                zzawVar.zzi.zzb(zzbbVar, zzpVar, null);
                throw zzpVar;
            }
        }
        zzog zzogVar = (zzog) objZza;
        zzawVar.zzi.zza(zzbbVar);
        return zzogVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzk(RecaptchaAction recaptchaAction, long j, Continuation continuation) throws Throwable {
        zzas zzasVar;
        zzaw zzawVar;
        zzbd zzbdVar;
        zzp zzpVar;
        if (continuation instanceof zzas) {
            zzasVar = (zzas) continuation;
            int i = zzasVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzasVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzasVar = new zzas(this, continuation);
            }
        }
        zzas zzasVar2 = zzasVar;
        Object objWithTimeout = zzasVar2.zza;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzasVar2.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeout);
            String string = UUID.randomUUID().toString();
            zzbd zzbdVarZzb = this.zzh.zzb();
            zzbdVarZzb.zzc(string);
            zzbg zzbgVar = this.zzi;
            zzbb zzbbVarZza = zzbdVarZzb.zza(zzne.EXECUTE_TOTAL);
            zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
            try {
                zzat zzatVar = new zzat(this, j, recaptchaAction, zzbdVarZzb, string, null);
                zzasVar2.zzd = this;
                zzasVar2.zze = zzbdVarZzb;
                zzasVar2.zzc = 1;
                objWithTimeout = TimeoutKt.withTimeout(j, zzatVar, zzasVar2);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzawVar = this;
                zzbdVar = zzbdVarZzb;
            } catch (Exception e) {
                e = e;
                zzawVar = this;
                zzbdVar = zzbdVarZzb;
                if (e instanceof zzp) {
                }
                zzawVar.zzi.zzb(zzbdVar.zza(zzne.EXECUTE_TOTAL), zzpVar, null);
                RecaptchaException recaptchaExceptionZzc = zzpVar.zzc();
                Result.Companion companion = Result.Companion;
                return Result.m188constructorimpl(ResultKt.createFailure(recaptchaExceptionZzc));
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zzbdVar = zzasVar2.zze;
            zzawVar = zzasVar2.zzd;
            try {
                ResultKt.throwOnFailure(objWithTimeout);
            } catch (Exception e2) {
                e = e2;
                if (e instanceof zzp) {
                    zzpVar = new zzp(zzn.zzc, zzl.zzaj, e.getClass().getSimpleName());
                } else {
                    zzpVar = (zzp) e;
                }
                zzawVar.zzi.zzb(zzbdVar.zza(zzne.EXECUTE_TOTAL), zzpVar, null);
                RecaptchaException recaptchaExceptionZzc2 = zzpVar.zzc();
                Result.Companion companion2 = Result.Companion;
                return Result.m188constructorimpl(ResultKt.createFailure(recaptchaExceptionZzc2));
            }
        }
        return ((Result) objWithTimeout).m195unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzl(zzol zzolVar, zzbd zzbdVar) throws zzp {
        zzbb zzbbVarZza = zzbdVar.zza(zzne.POST_EXECUTE);
        zzbg zzbgVar = this.zzi;
        zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
        try {
            List<zzon> listZzj = zzolVar.zzj();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listZzj, 10)), 16));
            for (zzon zzonVar : listZzj) {
                Pair pair = TuplesKt.to(zzonVar.zzg(), zzonVar.zzi());
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            this.zzj.zzb(linkedHashMap);
            this.zzi.zza(zzbbVarZza);
        } catch (Exception e) {
            zzp zzpVar = e instanceof zzp ? (zzp) e : new zzp(zzn.zzc, zzl.zzan, null);
            this.zzi.zzb(zzbbVarZza, zzpVar, null);
            throw zzpVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.RecaptchaClient
    /* renamed from: execute-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object mo133execute0E7RQCE(RecaptchaAction recaptchaAction, long j, Continuation continuation) throws Throwable {
        zzap zzapVar;
        if (continuation instanceof zzap) {
            zzapVar = (zzap) continuation;
            int i = zzapVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzapVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzapVar = new zzap(this, continuation);
            }
        }
        Object objWithContext = zzapVar.zza;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzapVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineContext coroutineContext = this.zzl.zzb().getCoroutineContext();
            zzaq zzaqVar = new zzaq(this, recaptchaAction, j, null);
            zzapVar.zzc = 1;
            objWithContext = BuildersKt.withContext(coroutineContext, zzaqVar, zzapVar);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        return ((Result) objWithContext).m195unboximpl();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.RecaptchaClient
    /* renamed from: execute-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object mo134executegIAlus(RecaptchaAction recaptchaAction, Continuation continuation) throws Throwable {
        zzar zzarVar;
        if (continuation instanceof zzar) {
            zzarVar = (zzar) continuation;
            int i = zzarVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzarVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzarVar = new zzar(this, continuation);
            }
        }
        Object obj = zzarVar.zza;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzarVar.zzc;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((Result) obj).m195unboximpl();
        }
        ResultKt.throwOnFailure(obj);
        zzarVar.zzc = 1;
        Object objMo133execute0E7RQCE = mo133execute0E7RQCE(recaptchaAction, 10000L, zzarVar);
        return objMo133execute0E7RQCE == coroutine_suspended ? coroutine_suspended : objMo133execute0E7RQCE;
    }

    @Override // com.google.android.recaptcha.RecaptchaTasksClient
    public final Task<String> executeTask(RecaptchaAction recaptchaAction) {
        return zzj.zza(BuildersKt__Builders_commonKt.async$default(this.zzl.zzb(), null, null, new zzau(this, recaptchaAction, 10000L, null), 3, null));
    }

    @Override // com.google.android.recaptcha.RecaptchaTasksClient
    public final Task<String> executeTask(RecaptchaAction recaptchaAction, long j) {
        return zzj.zza(BuildersKt__Builders_commonKt.async$default(this.zzl.zzb(), null, null, new zzau(this, recaptchaAction, j, null), 3, null));
    }

    public final String zzg() {
        return this.zze;
    }
}

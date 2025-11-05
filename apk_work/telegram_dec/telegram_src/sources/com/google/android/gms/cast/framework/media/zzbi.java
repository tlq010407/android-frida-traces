package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.zzap;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzbi implements com.google.android.gms.cast.internal.zzas {
    final /* synthetic */ zzbk zza;

    zzbi(zzbk zzbkVar) {
        this.zza = zzbkVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004e A[LOOP:0: B:22:0x0048->B:24:0x004e, LOOP_END] */
    @Override // com.google.android.gms.cast.internal.zzas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(String str, long j, int i, Object obj, long j2, long j3) {
        Iterator it;
        try {
            zzbk zzbkVar = this.zza;
            try {
                Status status = new Status(i);
                Object obj2 = obj;
                if (true != (obj2 instanceof zzap)) {
                    obj2 = null;
                }
                zzbkVar.setResult(new zzbl(status, obj2 != null ? ((zzap) obj2).zza : null, obj2 != null ? ((zzap) obj2).zzb : null));
            } catch (IllegalStateException e) {
                e = e;
                RemoteMediaClient.zza.e(e, "Result already set when calling onRequestCompleted", new Object[0]);
                it = this.zza.zzg.zzj.iterator();
                while (it.hasNext()) {
                }
            }
        } catch (IllegalStateException e2) {
            e = e2;
        }
        it = this.zza.zzg.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, i, j2, j3);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j, long j2, long j3) {
        try {
            zzbk zzbkVar = this.zza;
            zzbkVar.setResult(new zzbj(zzbkVar, new Status(2103)));
        } catch (IllegalStateException e) {
            RemoteMediaClient.zza.e(e, "Result already set when calling onRequestReplaced", new Object[0]);
        }
        Iterator it = this.zza.zzg.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, 2103, j2, j3);
        }
    }
}

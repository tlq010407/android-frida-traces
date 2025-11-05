package com.google.android.gms.internal.clearcut;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzdu implements zzef {
    private final zzdo zzmn;
    private final boolean zzmo;
    private final zzex zzmx;
    private final zzbu zzmy;

    private zzdu(zzex zzexVar, zzbu zzbuVar, zzdo zzdoVar) {
        this.zzmx = zzexVar;
        this.zzmo = zzbuVar.zze(zzdoVar);
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
    }

    static zzdu zza(zzex zzexVar, zzbu zzbuVar, zzdo zzdoVar) {
        return new zzdu(zzexVar, zzbuVar, zzdoVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean equals(Object obj, Object obj2) {
        if (!this.zzmx.zzq(obj).equals(this.zzmx.zzq(obj2))) {
            return false;
        }
        if (this.zzmo) {
            return this.zzmy.zza(obj).equals(this.zzmy.zza(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int hashCode(Object obj) {
        int iHashCode = this.zzmx.zzq(obj).hashCode();
        return this.zzmo ? (iHashCode * 53) + this.zzmy.zza(obj).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object newInstance() {
        return this.zzmn.zzbd().zzbi();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zza(Object obj, zzfr zzfrVar) {
        Iterator it = this.zzmy.zza(obj).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(((Map.Entry) it.next()).getKey());
            throw null;
        }
        zzex zzexVar = this.zzmx;
        zzexVar.zzc(zzexVar.zzq(obj), zzfrVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0061 A[EDGE_INSN: B:50:0x0061->B:27:0x0061 BREAK  A[LOOP:1: B:14:0x0032->B:53:0x0032], SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVarZzeb = zzcgVar.zzjp;
        if (zzeyVarZzeb == zzey.zzea()) {
            zzeyVarZzeb = zzey.zzeb();
            zzcgVar.zzjp = zzeyVarZzeb;
        }
        zzey zzeyVar = zzeyVarZzeb;
        while (i < i2) {
            int iZza = zzax.zza(bArr, i, zzayVar);
            int i3 = zzayVar.zzfd;
            if (i3 != 11) {
                i = (i3 & 7) == 2 ? zzax.zza(i3, bArr, iZza, i2, zzeyVar, zzayVar) : zzax.zza(i3, bArr, iZza, i2, zzayVar);
            } else {
                int i4 = 0;
                zzbb zzbbVar = null;
                while (iZza < i2) {
                    iZza = zzax.zza(bArr, iZza, zzayVar);
                    int i5 = zzayVar.zzfd;
                    int i6 = i5 >>> 3;
                    int i7 = i5 & 7;
                    if (i6 != 2) {
                        if (i6 != 3 || i7 != 2) {
                            if (i5 != 12) {
                                break;
                            } else {
                                iZza = zzax.zza(i5, bArr, iZza, i2, zzayVar);
                            }
                        } else {
                            iZza = zzax.zze(bArr, iZza, zzayVar);
                            zzbbVar = (zzbb) zzayVar.zzff;
                        }
                    } else if (i7 == 0) {
                        iZza = zzax.zza(bArr, iZza, zzayVar);
                        i4 = zzayVar.zzfd;
                    } else if (i5 != 12) {
                    }
                }
                if (zzbbVar != null) {
                    zzeyVar.zzb((i4 << 3) | 2, zzbbVar);
                }
                i = iZza;
            }
        }
        if (i != i2) {
            throw zzco.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj) {
        this.zzmx.zzc(obj);
        this.zzmy.zzc(obj);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj, Object obj2) {
        zzeh.zza(this.zzmx, obj, obj2);
        if (this.zzmo) {
            zzeh.zza(this.zzmy, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int zzm(Object obj) {
        zzex zzexVar = this.zzmx;
        int iZzr = zzexVar.zzr(zzexVar.zzq(obj));
        return this.zzmo ? iZzr + this.zzmy.zza(obj).zzat() : iZzr;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean zzo(Object obj) {
        return this.zzmy.zza(obj).isInitialized();
    }
}

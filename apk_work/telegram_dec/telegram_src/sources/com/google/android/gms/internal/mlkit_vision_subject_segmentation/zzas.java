package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzas extends zzao {
    public zzas() {
        super(4);
    }

    public final zzas zza(Object obj) {
        obj.getClass();
        int i = this.zzb;
        int i2 = i + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length >= i2) {
            if (this.zzc) {
                this.zza = (Object[]) objArr.clone();
            }
            Object[] objArr2 = this.zza;
            int i3 = this.zzb;
            this.zzb = i3 + 1;
            objArr2[i3] = obj;
            return this;
        }
        int i4 = length + (length >> 1) + 1;
        if (i4 < i2) {
            int iHighestOneBit = Integer.highestOneBit(i);
            i4 = iHighestOneBit + iHighestOneBit;
        }
        if (i4 < 0) {
            i4 = Integer.MAX_VALUE;
        }
        this.zza = Arrays.copyOf(objArr, i4);
        this.zzc = false;
        Object[] objArr22 = this.zza;
        int i32 = this.zzb;
        this.zzb = i32 + 1;
        objArr22[i32] = obj;
        return this;
    }

    public final zzav zzb() {
        this.zzc = true;
        return zzav.zzg(this.zza, this.zzb);
    }
}

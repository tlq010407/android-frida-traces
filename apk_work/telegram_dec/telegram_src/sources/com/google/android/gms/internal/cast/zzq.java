package com.google.android.gms.internal.cast;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzq {
    private final String zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final long zze;
    private long zzf;

    public zzq(zzp zzpVar) {
        this.zza = zzpVar.zza;
        this.zzb = zzpVar.zzb;
        this.zzc = zzpVar.zzc;
        this.zzd = zzpVar.zzd;
        this.zze = zzpVar.zze;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:71:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zznq zza() {
        int i;
        String str = this.zza;
        zznp zznpVarZza = zznq.zza();
        i = 11;
        switch (str) {
            case "load":
                i = 2;
                break;
            case "play":
                i = 3;
                break;
            case "pause":
                i = 4;
                break;
            case "stop":
                i = 5;
                break;
            case "seek":
                i = 6;
                break;
            case "volume":
                i = 7;
                break;
            case "mute":
                i = 8;
                break;
            case "volume-mute":
                i = 9;
                break;
            case "status":
                i = 10;
                break;
            case "activeTracks":
                break;
            case "trackStyle":
                i = 12;
                break;
            case "queueInsert":
                i = 13;
                break;
            case "queueUpdate":
                i = 14;
                break;
            case "queueRemove":
                i = 15;
                break;
            case "queueReorder":
                i = 16;
                break;
            case "queueFetchItemIds":
                i = 17;
                break;
            case "queueFetchItemRange":
                i = 18;
                break;
            case "queueFetchItems":
                i = 19;
                break;
            case "setPlaybackRate":
                i = 20;
                break;
            case "skipAd":
                i = 21;
                break;
            case "launch":
                i = 22;
                break;
            case "setPlaybackDevices":
                i = 23;
                break;
            default:
                i = 1;
                break;
        }
        zznpVarZza.zze(i);
        zznpVarZza.zzb((int) this.zzb);
        zznpVarZza.zzd(this.zzc);
        zznpVarZza.zzc((int) (this.zzd - this.zzf));
        zznpVarZza.zza((int) (this.zze - this.zzf));
        return (zznq) zznpVarZza.zzq();
    }

    public final void zzb(long j) {
        this.zzf = j;
    }
}

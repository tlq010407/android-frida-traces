package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzd;
import com.google.android.gms.internal.play_billing.zzgd;
import java.util.concurrent.Callable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzaf implements ServiceConnection {
    final /* synthetic */ BillingClientImpl zza;
    private final Object zzb = new Object();
    private boolean zzc = false;
    private BillingClientStateListener zzd;

    /* synthetic */ zzaf(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, zzae zzaeVar) {
        this.zza = billingClientImpl;
        this.zzd = billingClientStateListener;
    }

    private final void zzd(BillingResult billingResult) {
        synchronized (this.zzb) {
            try {
                BillingClientStateListener billingClientStateListener = this.zzd;
                if (billingClientStateListener != null) {
                    billingClientStateListener.onBillingSetupFinished(billingResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzb.zzi("BillingClient", "Billing service connected.");
        this.zza.zzg = zzd.zzn(iBinder);
        BillingClientImpl billingClientImpl = this.zza;
        if (billingClientImpl.zzS(new Callable() { // from class: com.android.billingclient.api.zzac
            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.zza.zza();
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzad
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb();
            }
        }, billingClientImpl.zzO()) == null) {
            BillingResult billingResultZzQ = this.zza.zzQ();
            this.zza.zzf.zza(zzaq.zza(25, 6, billingResultZzQ));
            zzd(billingResultZzQ);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzb.zzj("BillingClient", "Billing service disconnected.");
        this.zza.zzf.zzc(zzgd.zzw());
        this.zza.zzg = null;
        this.zza.zza = 0;
        synchronized (this.zzb) {
            try {
                BillingClientStateListener billingClientStateListener = this.zzd;
                if (billingClientStateListener != null) {
                    billingClientStateListener.onBillingServiceDisconnected();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final /* synthetic */ Object zza() {
        Bundle bundle;
        int i;
        int iZzq;
        synchronized (this.zzb) {
            try {
                if (this.zzc) {
                    return null;
                }
                if (TextUtils.isEmpty(null)) {
                    bundle = null;
                } else {
                    bundle = new Bundle();
                    bundle.putString("accountName", null);
                }
                int i2 = 3;
                try {
                    String packageName = this.zza.zze.getPackageName();
                    int i3 = 20;
                    iZzq = 3;
                    while (true) {
                        if (i3 < 3) {
                            i3 = 0;
                            break;
                        }
                        if (bundle == null) {
                            try {
                                iZzq = this.zza.zzg.zzq(i3, packageName, "subs");
                            } catch (Exception e) {
                                e = e;
                                i2 = iZzq;
                                zzb.zzk("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                this.zza.zza = 0;
                                this.zza.zzg = null;
                                i = 42;
                                iZzq = i2;
                                zzar zzarVar = this.zza.zzf;
                                if (iZzq != 0) {
                                }
                                return null;
                            }
                        } else {
                            iZzq = this.zza.zzg.zzc(i3, packageName, "subs", bundle);
                        }
                        if (iZzq == 0) {
                            zzb.zzi("BillingClient", "highestLevelSupportedForSubs: " + i3);
                            break;
                        }
                        i3--;
                    }
                    boolean z = true;
                    this.zza.zzj = i3 >= 5;
                    this.zza.zzi = i3 >= 3;
                    if (i3 < 3) {
                        zzb.zzi("BillingClient", "In-app billing API does not support subscription on this device.");
                        i = 9;
                    } else {
                        i = 1;
                    }
                    int i4 = 20;
                    while (true) {
                        if (i4 < 3) {
                            break;
                        }
                        iZzq = bundle == null ? this.zza.zzg.zzq(i4, packageName, "inapp") : this.zza.zzg.zzc(i4, packageName, "inapp", bundle);
                        if (iZzq == 0) {
                            this.zza.zzk = i4;
                            zzb.zzi("BillingClient", "mHighestLevelSupportedForInApp: " + this.zza.zzk);
                            break;
                        }
                        i4--;
                    }
                    BillingClientImpl billingClientImpl = this.zza;
                    billingClientImpl.zzw = billingClientImpl.zzk >= 20;
                    BillingClientImpl billingClientImpl2 = this.zza;
                    billingClientImpl2.zzv = billingClientImpl2.zzk >= 19;
                    BillingClientImpl billingClientImpl3 = this.zza;
                    billingClientImpl3.zzu = billingClientImpl3.zzk >= 18;
                    BillingClientImpl billingClientImpl4 = this.zza;
                    billingClientImpl4.zzt = billingClientImpl4.zzk >= 17;
                    BillingClientImpl billingClientImpl5 = this.zza;
                    billingClientImpl5.zzs = billingClientImpl5.zzk >= 16;
                    BillingClientImpl billingClientImpl6 = this.zza;
                    billingClientImpl6.zzr = billingClientImpl6.zzk >= 15;
                    BillingClientImpl billingClientImpl7 = this.zza;
                    billingClientImpl7.zzq = billingClientImpl7.zzk >= 14;
                    BillingClientImpl billingClientImpl8 = this.zza;
                    billingClientImpl8.zzp = billingClientImpl8.zzk >= 12;
                    BillingClientImpl billingClientImpl9 = this.zza;
                    billingClientImpl9.zzo = billingClientImpl9.zzk >= 10;
                    BillingClientImpl billingClientImpl10 = this.zza;
                    billingClientImpl10.zzn = billingClientImpl10.zzk >= 9;
                    BillingClientImpl billingClientImpl11 = this.zza;
                    billingClientImpl11.zzm = billingClientImpl11.zzk >= 8;
                    BillingClientImpl billingClientImpl12 = this.zza;
                    if (billingClientImpl12.zzk < 6) {
                        z = false;
                    }
                    billingClientImpl12.zzl = z;
                    if (this.zza.zzk < 3) {
                        zzb.zzj("BillingClient", "In-app billing API version 3 is not supported on this device.");
                        i = 36;
                    }
                    if (iZzq == 0) {
                        this.zza.zza = 2;
                    } else {
                        this.zza.zza = 0;
                        this.zza.zzg = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                zzar zzarVar2 = this.zza.zzf;
                if (iZzq != 0) {
                    zzarVar2.zzb(zzaq.zzb(6));
                    zzd(zzat.zzl);
                } else {
                    BillingResult billingResult = zzat.zza;
                    zzarVar2.zza(zzaq.zza(i, 6, billingResult));
                    zzd(billingResult);
                }
                return null;
            } finally {
            }
        }
    }

    final /* synthetic */ void zzb() {
        this.zza.zza = 0;
        this.zza.zzg = null;
        zzar zzarVar = this.zza.zzf;
        BillingResult billingResult = zzat.zzn;
        zzarVar.zza(zzaq.zza(24, 6, billingResult));
        zzd(billingResult);
    }
}

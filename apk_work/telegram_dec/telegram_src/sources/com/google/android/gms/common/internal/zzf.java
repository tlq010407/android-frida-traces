package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzf extends zza {
    public final IBinder zze;
    final /* synthetic */ BaseGmsClient zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.zzf = baseGmsClient;
        this.zze = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    protected final void zzb(ConnectionResult connectionResult) {
        if (this.zzf.zzx != null) {
            this.zzf.zzx.onConnectionFailed(connectionResult);
        }
        this.zzf.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zza
    protected final boolean zzd() throws RemoteException {
        String str;
        String interfaceDescriptor;
        try {
            IBinder iBinder = this.zze;
            Preconditions.checkNotNull(iBinder);
            interfaceDescriptor = iBinder.getInterfaceDescriptor();
        } catch (RemoteException unused) {
            str = "service probably died";
        }
        if (!this.zzf.getServiceDescriptor().equals(interfaceDescriptor)) {
            str = "service descriptor mismatch: " + this.zzf.getServiceDescriptor() + " vs. " + interfaceDescriptor;
            Log.w("GmsClient", str);
            return false;
        }
        IInterface iInterfaceCreateServiceInterface = this.zzf.createServiceInterface(this.zze);
        if (iInterfaceCreateServiceInterface == null || !(BaseGmsClient.zzn(this.zzf, 2, 4, iInterfaceCreateServiceInterface) || BaseGmsClient.zzn(this.zzf, 3, 4, iInterfaceCreateServiceInterface))) {
            return false;
        }
        this.zzf.zzB = null;
        Bundle connectionHint = this.zzf.getConnectionHint();
        BaseGmsClient baseGmsClient = this.zzf;
        if (baseGmsClient.zzw == null) {
            return true;
        }
        baseGmsClient.zzw.onConnected(connectionHint);
        return true;
    }
}

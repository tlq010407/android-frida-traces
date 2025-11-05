package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.maps.internal.zzcb;
import com.google.android.gms.maps.internal.zzf;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class MapsInitializer {
    private static final String zza = "MapsInitializer";
    private static boolean zzb = false;
    private static Renderer zzc = Renderer.LEGACY;

    public enum Renderer {
        LEGACY,
        LATEST
    }

    public static synchronized int initialize(Context context) {
        return initialize(context, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: all -> 0x0024, RemoteException -> 0x0056, TryCatch #3 {RemoteException -> 0x0056, blocks: (B:23:0x004b, B:25:0x0051, B:28:0x0058), top: B:50:0x004b, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[Catch: all -> 0x0024, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x001e, B:13:0x0028, B:14:0x002c, B:16:0x003b, B:18:0x0040, B:23:0x004b, B:25:0x0051, B:28:0x0058, B:31:0x0067, B:33:0x007a, B:30:0x0060, B:37:0x0082, B:38:0x0087, B:40:0x0089), top: B:47:0x0003, inners: #0, #2, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized int initialize(Context context, Renderer renderer, OnMapsSdkInitializedCallback onMapsSdkInitializedCallback) {
        Preconditions.checkNotNull(context, "Context is null");
        Log.d(zza, "preferredRenderer: ".concat(String.valueOf(renderer)));
        if (zzb) {
            if (onMapsSdkInitializedCallback != null) {
                onMapsSdkInitializedCallback.onMapsSdkInitialized(zzc);
            }
            return 0;
        }
        try {
            zzf zzfVarZza = zzcb.zza(context, renderer);
            try {
                CameraUpdateFactory.zza(zzfVarZza.zze());
                BitmapDescriptorFactory.zza(zzfVarZza.zzj());
                int i = 1;
                zzb = true;
                if (renderer != null) {
                    int iOrdinal = renderer.ordinal();
                    if (iOrdinal != 0) {
                        if (iOrdinal == 1) {
                            i = 2;
                        }
                    }
                    if (zzfVarZza.zzd() == 2) {
                    }
                    zzfVarZza.zzl(ObjectWrapper.wrap(context), i);
                    Log.d(zza, "loadedRenderer: ".concat(String.valueOf(zzc)));
                    if (onMapsSdkInitializedCallback != null) {
                    }
                    return 0;
                }
                i = 0;
                try {
                    if (zzfVarZza.zzd() == 2) {
                        zzc = Renderer.LATEST;
                    }
                    zzfVarZza.zzl(ObjectWrapper.wrap(context), i);
                } catch (RemoteException e) {
                    Log.e(zza, "Failed to retrieve renderer type or log initialization.", e);
                }
                Log.d(zza, "loadedRenderer: ".concat(String.valueOf(zzc)));
                if (onMapsSdkInitializedCallback != null) {
                    onMapsSdkInitializedCallback.onMapsSdkInitialized(zzc);
                }
                return 0;
            } catch (RemoteException e2) {
                throw new RuntimeRemoteException(e2);
            }
        } catch (GooglePlayServicesNotAvailableException e3) {
            return e3.errorCode;
        }
    }
}

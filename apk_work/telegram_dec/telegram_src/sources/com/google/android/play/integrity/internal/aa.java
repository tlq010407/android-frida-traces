package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class aa extends t {
    final /* synthetic */ IBinder a;
    final /* synthetic */ ad b;

    aa(ad adVar, IBinder iBinder) {
        this.b = adVar;
        this.a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() throws RemoteException {
        this.b.a.o = (IInterface) this.b.a.j.a(this.a);
        ae.r(this.b.a);
        this.b.a.h = false;
        Iterator it = this.b.a.e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.b.a.e.clear();
    }
}

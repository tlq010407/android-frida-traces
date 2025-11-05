package com.huawei.location.lite.common.http;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.location.lite.common.http.response.ResponseInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface dC extends IInterface {

    public static abstract class yn extends Binder implements dC {
        public static final /* synthetic */ int $r8$clinit = 0;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.huawei.location.lite.common.http.dC$yn$yn, reason: collision with other inner class name */
        static class C0023yn implements dC {
            private IBinder yn;

            C0023yn(IBinder iBinder) {
                this.yn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.yn;
            }

            @Override // com.huawei.location.lite.common.http.dC
            public void yn(ResponseInfo responseInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.location.lite.common.http.IRemoteHttpCallback");
                    if (responseInfo != null) {
                        parcelObtain.writeInt(1);
                        responseInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.yn.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = yn.$r8$clinit;
                    }
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }

    void yn(ResponseInfo responseInfo);
}

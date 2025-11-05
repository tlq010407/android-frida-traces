package com.huawei.location.lite.common.http;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.huawei.location.lite.common.http.HttpService;
import com.huawei.location.lite.common.http.dC;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.response.ResponseInfo;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface LW extends IInterface {

    public static abstract class yn extends Binder implements LW {
        public static final /* synthetic */ int $r8$clinit = 0;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.huawei.location.lite.common.http.LW$yn$yn, reason: collision with other inner class name */
        static class C0022yn implements LW {
            private IBinder yn;

            C0022yn(IBinder iBinder) {
                this.yn = iBinder;
            }

            @Override // com.huawei.location.lite.common.http.LW
            public ResponseInfo Vw(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.location.lite.common.http.IHttpService");
                    if (httpConfigInfo != null) {
                        parcelObtain.writeInt(1);
                        httpConfigInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (baseRequest != null) {
                        parcelObtain.writeInt(1);
                        baseRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.yn.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = yn.$r8$clinit;
                    }
                    parcelObtain2.readException();
                    ResponseInfo responseInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? ResponseInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return responseInfoCreateFromParcel;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.yn;
            }

            @Override // com.huawei.location.lite.common.http.LW
            public ResponseInfo yn(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.location.lite.common.http.IHttpService");
                    if (httpConfigInfo != null) {
                        parcelObtain.writeInt(1);
                        httpConfigInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (baseRequest != null) {
                        parcelObtain.writeInt(1);
                        baseRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.yn.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i = yn.$r8$clinit;
                    }
                    parcelObtain2.readException();
                    ResponseInfo responseInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? ResponseInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return responseInfoCreateFromParcel;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public yn() {
            attachInterface(this, "com.huawei.location.lite.common.http.IHttpService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            dC c0023yn = null;
            if (i == 1) {
                parcel.enforceInterface("com.huawei.location.lite.common.http.IHttpService");
                ResponseInfo responseInfoVw = ((HttpService.yn) this).Vw(parcel.readInt() != 0 ? HttpConfigInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? BaseRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (responseInfoVw != null) {
                    parcel2.writeInt(1);
                    responseInfoVw.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.huawei.location.lite.common.http.IHttpService");
                HttpConfigInfo httpConfigInfoCreateFromParcel = parcel.readInt() != 0 ? HttpConfigInfo.CREATOR.createFromParcel(parcel) : null;
                BaseRequest baseRequestCreateFromParcel = parcel.readInt() != 0 ? BaseRequest.CREATOR.createFromParcel(parcel) : null;
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.huawei.location.lite.common.http.IRemoteHttpCallback");
                    c0023yn = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof dC)) ? new dC.yn.C0023yn(strongBinder) : (dC) iInterfaceQueryLocalInterface;
                }
                ((HttpService.yn) this).yn(httpConfigInfoCreateFromParcel, baseRequestCreateFromParcel, c0023yn);
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.huawei.location.lite.common.http.IHttpService");
                return true;
            }
            parcel.enforceInterface("com.huawei.location.lite.common.http.IHttpService");
            ResponseInfo responseInfoYn = ((HttpService.yn) this).yn(parcel.readInt() != 0 ? HttpConfigInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? BaseRequest.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(1);
            responseInfoYn.writeToParcel(parcel2, 1);
            return true;
        }
    }

    ResponseInfo Vw(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest);

    ResponseInfo yn(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest);
}

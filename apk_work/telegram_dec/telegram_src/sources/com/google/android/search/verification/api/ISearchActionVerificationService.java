package com.google.android.search.verification.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.aidl.BaseProxy;
import com.google.android.aidl.BaseStub;
import com.google.android.aidl.Codecs;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface ISearchActionVerificationService extends IInterface {

    public static abstract class Stub extends BaseStub implements ISearchActionVerificationService {

        public static class Proxy extends BaseProxy implements ISearchActionVerificationService {
            Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.search.verification.api.ISearchActionVerificationService");
            }

            @Override // com.google.android.search.verification.api.ISearchActionVerificationService
            public int getVersion() {
                Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
                int i = parcelTransactAndReadException.readInt();
                parcelTransactAndReadException.recycle();
                return i;
            }

            @Override // com.google.android.search.verification.api.ISearchActionVerificationService
            public boolean isSearchAction(Intent intent, Bundle bundle) {
                Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
                Codecs.writeParcelable(parcelObtainAndWriteInterfaceToken, intent);
                Codecs.writeParcelable(parcelObtainAndWriteInterfaceToken, bundle);
                Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
                boolean zCreateBoolean = Codecs.createBoolean(parcelTransactAndReadException);
                parcelTransactAndReadException.recycle();
                return zCreateBoolean;
            }
        }

        public static ISearchActionVerificationService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.search.verification.api.ISearchActionVerificationService");
            return iInterfaceQueryLocalInterface instanceof ISearchActionVerificationService ? (ISearchActionVerificationService) iInterfaceQueryLocalInterface : new Proxy(iBinder);
        }
    }

    int getVersion();

    boolean isSearchAction(Intent intent, Bundle bundle);
}

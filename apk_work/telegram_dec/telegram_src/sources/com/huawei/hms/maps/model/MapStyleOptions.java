package com.huawei.hms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.parcel.ParcelReader;
import com.huawei.hms.common.parcel.ParcelWrite;
import com.huawei.hms.maps.utils.LogM;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MapStyleOptions implements Parcelable {
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new Parcelable.Creator<MapStyleOptions>() { // from class: com.huawei.hms.maps.model.MapStyleOptions.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MapStyleOptions createFromParcel(Parcel parcel) {
            return new MapStyleOptions(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MapStyleOptions[] newArray(int i) {
            return new MapStyleOptions[i];
        }
    };
    private String a;

    protected MapStyleOptions(Parcel parcel) {
        this.a = new ParcelReader(parcel).createString(2, null);
    }

    public MapStyleOptions(String str) {
        this.a = str;
    }

    public static MapStyleOptions loadAssetResouceStyle(String str) {
        return new MapStyleOptions(str);
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i) throws Resources.NotFoundException, IOException {
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
        while (true) {
            try {
                try {
                    int i2 = inputStreamOpenRawResource.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                } finally {
                }
            } catch (IOException unused) {
                throw new Resources.NotFoundException("MapStyleOptions read resource failure: " + i);
            }
        }
        MapStyleOptions mapStyleOptions = new MapStyleOptions(new String(byteArrayOutputStream.toByteArray(), "UTF-8"));
        try {
            inputStreamOpenRawResource.close();
        } catch (IOException unused2) {
            LogM.e("MapStyleOptions", "IOException");
        }
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused3) {
            LogM.e("MapStyleOptions", "IOException");
        }
        return mapStyleOptions;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getJson() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ParcelWrite parcelWrite = new ParcelWrite(parcel);
        int iBeginObjectHeader = parcelWrite.beginObjectHeader();
        parcelWrite.writeString(2, this.a, false);
        parcelWrite.finishObjectHeader(iBeginObjectHeader);
    }
}

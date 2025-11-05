package com.huawei.hms.maps.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mab extends maa {
    private String a;

    public mab(String str) {
        LogM.d("AssetBitmapDescriptor", "AssetBitmapDescriptor assetName: " + str);
        this.a = str;
    }

    @Override // com.huawei.hms.maps.utils.maa
    public Bitmap a(Context context) {
        String str;
        try {
            return BitmapFactory.decodeStream(context.getAssets().open(this.a));
        } catch (IOException e) {
            str = "generateBitmap IOException: " + e.toString();
            LogM.e("AssetBitmapDescriptor", str);
            return null;
        } catch (OutOfMemoryError unused) {
            str = "generateBitmap OutOfMemoryError: ";
            LogM.e("AssetBitmapDescriptor", str);
            return null;
        }
    }
}

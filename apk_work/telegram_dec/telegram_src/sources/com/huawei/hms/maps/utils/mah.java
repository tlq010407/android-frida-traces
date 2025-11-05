package com.huawei.hms.maps.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mah extends maa {
    private String a;
    private Bitmap b;

    public mah(String str) {
        this.a = str;
    }

    private Bitmap a(String str) {
        LogM.d("PathBitmapDescriptor", "getBitmapFromPath: ");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = 5;
        try {
            return BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError unused) {
            LogM.e("PathBitmapDescriptor", "generateBitmap OutOfMemoryError: ");
            return null;
        }
    }

    @Override // com.huawei.hms.maps.utils.maa
    public Bitmap a(Context context) {
        Bitmap bitmapA = a(this.a);
        this.b = bitmapA;
        return bitmapA;
    }
}

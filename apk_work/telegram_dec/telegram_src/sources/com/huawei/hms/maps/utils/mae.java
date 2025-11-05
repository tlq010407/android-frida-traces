package com.huawei.hms.maps.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mae extends maa {
    private String a;
    private Bitmap b;

    public mae(String str) {
        this.a = str;
    }

    @Override // com.huawei.hms.maps.utils.maa
    public Bitmap a(Context context) throws IOException {
        StringBuilder sb;
        FileInputStream fileInputStreamOpenFileInput = null;
        try {
            try {
                fileInputStreamOpenFileInput = context.openFileInput(this.a);
                this.b = BitmapFactory.decodeStream(fileInputStreamOpenFileInput);
                if (fileInputStreamOpenFileInput != null) {
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException e) {
                        e = e;
                        sb = new StringBuilder();
                        sb.append("generateBitmap close fileInputStream IOException : ");
                        sb.append(e.toString());
                        LogM.d("FileBitmapDescriptor", sb.toString());
                        return this.b;
                    }
                }
            } catch (IOException e2) {
                LogM.e("FileBitmapDescriptor", "generateBitmap IOException : " + e2.toString());
                if (fileInputStreamOpenFileInput != null) {
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException e3) {
                        e = e3;
                        sb = new StringBuilder();
                        sb.append("generateBitmap close fileInputStream IOException : ");
                        sb.append(e.toString());
                        LogM.d("FileBitmapDescriptor", sb.toString());
                        return this.b;
                    }
                }
            } catch (OutOfMemoryError unused) {
                LogM.e("FileBitmapDescriptor", "generateBitmap OutOfMemoryError: ");
                if (fileInputStreamOpenFileInput != null) {
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException e4) {
                        e = e4;
                        sb = new StringBuilder();
                        sb.append("generateBitmap close fileInputStream IOException : ");
                        sb.append(e.toString());
                        LogM.d("FileBitmapDescriptor", sb.toString());
                        return this.b;
                    }
                }
            }
            return this.b;
        } catch (Throwable th) {
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException e5) {
                    LogM.d("FileBitmapDescriptor", "generateBitmap close fileInputStream IOException : " + e5.toString());
                }
            }
            throw th;
        }
    }
}

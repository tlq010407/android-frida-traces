package com.huawei.hms.maps.model;

import com.huawei.hms.maps.utils.LogM;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class UrlTileProvider implements TileProvider {
    private final int a;
    private final int b;

    public UrlTileProvider(int i, int i2) {
        this.b = i;
        this.a = i2;
    }

    @Override // com.huawei.hms.maps.model.TileProvider
    public final Tile getTile(int i, int i2, int i3) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        InputStream inputStreamOpenStream;
        URL tileUrl = getTileUrl(i, i2, i3);
        if (tileUrl == null) {
            return TileProvider.NO_TILE;
        }
        try {
            inputStreamOpenStream = tileUrl.openStream();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (IOException unused) {
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                byteArrayOutputStream = null;
                th = th2;
            }
        } catch (IOException unused2) {
            inputStreamOpenStream = null;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
            inputStreamOpenStream = null;
        }
        try {
            byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
            while (true) {
                int i4 = inputStreamOpenStream.read(bArr);
                if (i4 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i4);
            }
            Tile tile = new Tile(this.b, this.a, byteArrayOutputStream.toByteArray());
            try {
                inputStreamOpenStream.close();
            } catch (IOException e) {
                LogM.e("UrlTileProvider", "Input stream close IOException" + e.getMessage());
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException e2) {
                LogM.e("UrlTileProvider", "Output stream close IOException" + e2.getMessage());
            }
            return tile;
        } catch (IOException unused3) {
            if (inputStreamOpenStream != null) {
                try {
                    inputStreamOpenStream.close();
                } catch (IOException e3) {
                    LogM.e("UrlTileProvider", "Input stream close IOException" + e3.getMessage());
                }
            }
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e4) {
                    LogM.e("UrlTileProvider", "Output stream close IOException" + e4.getMessage());
                }
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            if (inputStreamOpenStream != null) {
                try {
                    inputStreamOpenStream.close();
                } catch (IOException e5) {
                    LogM.e("UrlTileProvider", "Input stream close IOException" + e5.getMessage());
                }
            }
            if (byteArrayOutputStream == null) {
                throw th;
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (IOException e6) {
                LogM.e("UrlTileProvider", "Output stream close IOException" + e6.getMessage());
                throw th;
            }
        }
    }

    public abstract URL getTileUrl(int i, int i2, int i3);
}

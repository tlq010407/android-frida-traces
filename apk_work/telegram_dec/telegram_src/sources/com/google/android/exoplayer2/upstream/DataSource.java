package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface DataSource extends DataReader {

    /* renamed from: com.google.android.exoplayer2.upstream.DataSource$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }

    public interface Factory {
        DataSource createDataSource();
    }

    void addTransferListener(TransferListener transferListener);

    void close();

    Map getResponseHeaders();

    Uri getUri();

    long open(DataSpec dataSpec);
}

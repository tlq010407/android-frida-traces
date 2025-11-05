package com.coremedia.iso.boxes;

import java.nio.channels.WritableByteChannel;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface Box {
    void getBox(WritableByteChannel writableByteChannel);

    Container getParent();

    long getSize();

    String getType();

    void setParent(Container container);
}

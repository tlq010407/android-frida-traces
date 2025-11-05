package com.huawei.hms.maps.model;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface TileProvider {
    public static final int DEFAULT_HEIGHT = -1;
    public static final int DEFAULT_WIDTH = -1;
    public static final Tile NO_TILE = new Tile(-1, -1, null);

    Tile getTile(int i, int i2, int i3);
}

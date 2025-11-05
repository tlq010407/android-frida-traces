package com.huawei.location.nlp.network.request.cell;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HwCellInfo extends CurrentCell {
    private int channelNumber;

    public HwCellInfo() {
        this.channelNumber = -1;
    }

    public HwCellInfo(long j, int i, int i2, int i3, long j2, int i4, short s, int i5) {
        super(j, i, i2, i3, j2, i4, s);
        this.channelNumber = i5;
    }

    public int getChannelNumber() {
        return this.channelNumber;
    }

    public void setChannelNumber(int i) {
        this.channelNumber = i;
    }
}

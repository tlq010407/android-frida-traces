package org.webrtc;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
class DynamicBitrateAdjuster extends BaseBitrateAdjuster {
    private static final double BITRATE_ADJUSTMENT_MAX_SCALE = 4.0d;
    private static final double BITRATE_ADJUSTMENT_SEC = 3.0d;
    private static final int BITRATE_ADJUSTMENT_STEPS = 20;
    private static final double BITS_PER_BYTE = 8.0d;
    private int bitrateAdjustmentScaleExp;
    private double deviationBytes;
    private double timeSinceLastAdjustmentMs;

    DynamicBitrateAdjuster() {
    }

    private double getBitrateAdjustmentScale() {
        double d = this.bitrateAdjustmentScaleExp;
        Double.isNaN(d);
        return Math.pow(BITRATE_ADJUSTMENT_MAX_SCALE, d / 20.0d);
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public int getAdjustedBitrateBps() {
        double d = this.targetBitrateBps;
        double bitrateAdjustmentScale = getBitrateAdjustmentScale();
        Double.isNaN(d);
        return (int) (d * bitrateAdjustmentScale);
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void reportEncodedFrame(int i) {
        double d = this.targetFramerateFps;
        if (d == 0.0d) {
            return;
        }
        double d2 = this.targetBitrateBps;
        Double.isNaN(d2);
        double d3 = d2 / BITS_PER_BYTE;
        double d4 = this.deviationBytes;
        double d5 = i;
        Double.isNaN(d5);
        double d6 = d4 + (d5 - (d3 / d));
        this.deviationBytes = d6;
        this.timeSinceLastAdjustmentMs += 1000.0d / d;
        double d7 = BITRATE_ADJUSTMENT_SEC * d3;
        double dMin = Math.min(d6, d7);
        this.deviationBytes = dMin;
        double dMax = Math.max(dMin, -d7);
        this.deviationBytes = dMax;
        if (this.timeSinceLastAdjustmentMs <= 3000.0d) {
            return;
        }
        if (dMax > d3) {
            int i2 = this.bitrateAdjustmentScaleExp - ((int) ((dMax / d3) + 0.5d));
            this.bitrateAdjustmentScaleExp = i2;
            this.bitrateAdjustmentScaleExp = Math.max(i2, -20);
            this.deviationBytes = d3;
        } else {
            double d8 = -d3;
            if (dMax < d8) {
                int i3 = this.bitrateAdjustmentScaleExp + ((int) (((-dMax) / d3) + 0.5d));
                this.bitrateAdjustmentScaleExp = i3;
                this.bitrateAdjustmentScaleExp = Math.min(i3, 20);
                this.deviationBytes = d8;
            }
        }
        this.timeSinceLastAdjustmentMs = 0.0d;
    }

    @Override // org.webrtc.BaseBitrateAdjuster, org.webrtc.BitrateAdjuster
    public void setTargets(int i, double d) {
        int i2 = this.targetBitrateBps;
        if (i2 > 0 && i < i2) {
            double d2 = this.deviationBytes;
            double d3 = i;
            Double.isNaN(d3);
            double d4 = d2 * d3;
            double d5 = i2;
            Double.isNaN(d5);
            this.deviationBytes = d4 / d5;
        }
        super.setTargets(i, d);
    }
}

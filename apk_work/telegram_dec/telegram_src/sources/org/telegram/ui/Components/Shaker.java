package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class Shaker {
    private final Runnable invalidate;
    private final float r;
    private final long start;
    private final float sx;
    private final float sy;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Shaker(View view) {
        this(new Shaker$$ExternalSyntheticLambda0(view));
        Objects.requireNonNull(view);
    }

    public Shaker(Runnable runnable) {
        this.start = System.currentTimeMillis();
        this.invalidate = runnable;
        this.r = AndroidUtilities.lerp(5.0f, 9.0f, Utilities.clamp01(Utilities.fastRandom.nextFloat()));
        this.sx = AndroidUtilities.lerp(2.5f, 5.0f, Utilities.clamp01(Utilities.fastRandom.nextFloat()));
        this.sy = AndroidUtilities.lerp(2.5f, 5.2f, Utilities.clamp01(Utilities.fastRandom.nextFloat()));
    }

    public void concat(Canvas canvas, float f) {
        Runnable runnable;
        float fCurrentTimeMillis = (System.currentTimeMillis() - this.start) / 1000.0f;
        double d = this.r * fCurrentTimeMillis;
        Double.isNaN(d);
        canvas.rotate(((float) Math.sin(d * 3.141592653589793d)) * 1.0f * f);
        double d2 = this.sx * fCurrentTimeMillis;
        Double.isNaN(d2);
        float fCos = ((float) Math.cos(d2 * 3.141592653589793d)) * AndroidUtilities.dp(0.5f) * f;
        double d3 = fCurrentTimeMillis * this.sy;
        Double.isNaN(d3);
        canvas.translate(fCos, ((float) Math.sin(d3 * 3.141592653589793d)) * AndroidUtilities.dp(0.5f) * f);
        if (f <= BitmapDescriptorFactory.HUE_RED || (runnable = this.invalidate) == null) {
            return;
        }
        runnable.run();
    }
}

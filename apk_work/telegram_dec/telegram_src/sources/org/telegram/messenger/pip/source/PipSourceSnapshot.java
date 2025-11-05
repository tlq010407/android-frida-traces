package org.telegram.messenger.pip.source;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RenderNode;
import android.os.Build;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.Utilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class PipSourceSnapshot {
    private final RenderNode node;
    private final Picture picture;

    public PipSourceSnapshot(int i, int i2, Utilities.Callback callback) {
        Picture picture = new Picture();
        this.picture = picture;
        callback.run(picture.beginRecording(i, i2));
        picture.endRecording();
        if (Build.VERSION.SDK_INT < 29) {
            this.node = null;
            return;
        }
        RenderNode renderNode = new RenderNode("pip-node-" + View.generateViewId());
        this.node = renderNode;
        renderNode.setPosition(0, 0, i, i2);
        renderNode.beginRecording().drawPicture(picture);
        renderNode.endRecording();
    }

    public void draw(Canvas canvas, float f) {
        if (Build.VERSION.SDK_INT >= 29) {
            RenderNode renderNode = this.node;
            if (renderNode != null) {
                renderNode.setAlpha(f);
                canvas.drawRenderNode(this.node);
                return;
            }
            return;
        }
        if (this.picture == null || f <= 0.001f) {
            return;
        }
        boolean z = f < 0.999f;
        if (z) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, r0.getWidth(), this.picture.getHeight(), (int) (f * 255.0f), 31);
        }
        canvas.drawPicture(this.picture);
        if (z) {
            canvas.restore();
        }
    }

    public void release() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.node.discardDisplayList();
        }
    }
}

package org.telegram.ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.widget.LinearLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class EmojiRationalLayout extends LinearLayout {
    private final VoIPBackgroundProvider backgroundProvider;
    private final RectF bgRect;

    public EmojiRationalLayout(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.bgRect = new RectF();
        this.backgroundProvider = voIPBackgroundProvider;
        voIPBackgroundProvider.attach(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.bgRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        this.backgroundProvider.setDarkTranslation(getX(), getY());
        canvas.drawRoundRect(this.bgRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), this.backgroundProvider.getDarkPaint());
        super.dispatchDraw(canvas);
    }
}

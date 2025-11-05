package org.telegram.ui.Components.Premium.boosts.cells.selector;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.LinearLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.RecyclerListView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SelectorBtnCell extends LinearLayout {
    private final AnimatedFloat alpha;
    private final Paint dividerPaint;
    private final RecyclerListView listView;
    private final Theme.ResourcesProvider resourcesProvider;

    public SelectorBtnCell(Context context, Theme.ResourcesProvider resourcesProvider, RecyclerListView recyclerListView) {
        super(context);
        this.dividerPaint = new Paint(1);
        this.alpha = new AnimatedFloat(this);
        this.resourcesProvider = resourcesProvider;
        this.listView = recyclerListView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.dividerPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            this.dividerPaint.setAlpha((int) (this.alpha.set(recyclerListView.canScrollVertically(1) ? 1.0f : BitmapDescriptorFactory.HUE_RED) * 255.0f));
        } else {
            this.dividerPaint.setAlpha((int) (this.alpha.set(1.0f) * 255.0f));
        }
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), AndroidUtilities.getShadowHeight(), this.dividerPaint);
    }
}

package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class SmoothScroller extends LinearSmoothScroller {
    private float durationScale;
    private Interpolator interpolator;
    private int offset;

    public SmoothScroller(Context context) {
        super(context);
        this.interpolator = CubicBezierInterpolator.DEFAULT;
        this.durationScale = 1.0f;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int calculateDyToMakeVisible(View view, int i) {
        return super.calculateDyToMakeVisible(view, i) - this.offset;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected int calculateTimeForDeceleration(int i) {
        return Math.round(Math.min(super.calculateTimeForDeceleration(i), 500) * this.durationScale);
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected int calculateTimeForScrolling(int i) {
        return Math.round(Math.min(super.calculateTimeForScrolling(i), ImageReceiver.DEFAULT_CROSSFADE_DURATION) * this.durationScale);
    }

    protected void onEnd() {
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
        int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible)));
        if (iCalculateTimeForDeceleration > 0) {
            action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iCalculateTimeForDeceleration, this.interpolator);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SmoothScroller$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onEnd();
            }
        }, Math.max(0, iCalculateTimeForDeceleration));
    }

    public void setDurationScale(float f) {
        this.durationScale = f;
    }

    public void setOffset(int i) {
        this.offset = i;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected void updateActionForInterimTarget(RecyclerView.SmoothScroller.Action action) {
        PointF pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(getTargetPosition());
        if (pointFComputeScrollVectorForPosition == null || (pointFComputeScrollVectorForPosition.x == BitmapDescriptorFactory.HUE_RED && pointFComputeScrollVectorForPosition.y == BitmapDescriptorFactory.HUE_RED)) {
            action.jumpTo(getTargetPosition());
            stop();
            return;
        }
        normalize(pointFComputeScrollVectorForPosition);
        this.mTargetVector = pointFComputeScrollVectorForPosition;
        this.mInterimTargetDx = (int) (pointFComputeScrollVectorForPosition.x * 10000.0f);
        this.mInterimTargetDy = (int) (pointFComputeScrollVectorForPosition.y * 10000.0f);
        action.update((int) (this.mInterimTargetDx * 1.2f), (int) (this.mInterimTargetDy * 1.2f), (int) (calculateTimeForScrolling(10000) * 1.2f), this.interpolator);
    }
}

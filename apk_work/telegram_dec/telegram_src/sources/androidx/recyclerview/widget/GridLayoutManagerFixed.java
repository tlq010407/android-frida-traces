package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class GridLayoutManagerFixed extends GridLayoutManager {
    private ArrayList additionalViews;
    private boolean canScrollVertically;

    public GridLayoutManagerFixed(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        this.additionalViews = new ArrayList(4);
        this.canScrollVertically = true;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    protected int[] calculateItemBorders(int[] iArr, int i, int i2) {
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        iArr[0] = 0;
        for (int i3 = 1; i3 <= i; i3++) {
            iArr[i3] = (int) Math.ceil((i3 / i) * i2);
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.canScrollVertically;
    }

    protected abstract boolean hasSiblingChild(int i);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0195 A[PHI: r2
      0x0195: PHI (r2v13 int) = (r2v1 int), (r2v24 int) binds: [B:87:0x0193, B:82:0x018a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int width;
        int width2;
        int i5;
        int i6;
        View next;
        RecyclerView.Recycler recycler2 = recycler;
        int modeInOther = this.mOrientationHelper.getModeInOther();
        ?? r12 = 0;
        ?? r13 = 1;
        boolean z = layoutState.mItemDirection == 1;
        layoutChunkResult.mConsumed = 0;
        int i7 = layoutState.mCurrentPosition;
        int i8 = -1;
        if (this.mShouldReverseLayout && layoutState.mLayoutDirection != -1 && hasSiblingChild(i7) && findViewByPosition(layoutState.mCurrentPosition + 1) == null) {
            layoutState.mCurrentPosition = hasSiblingChild(layoutState.mCurrentPosition + 1) ? layoutState.mCurrentPosition + 3 : layoutState.mCurrentPosition + 2;
            int i9 = layoutState.mCurrentPosition;
            for (int i10 = i9; i10 > i7; i10--) {
                View next2 = layoutState.next(recycler2);
                if (next2 != null) {
                    this.additionalViews.add(next2);
                    if (i10 != i9) {
                        calculateItemDecorationsForChild(next2, this.mDecorInsets);
                        measureChild(next2, modeInOther, false);
                        int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(next2);
                        layoutState.mOffset -= decoratedMeasurement;
                        layoutState.mAvailable += decoratedMeasurement;
                    }
                }
            }
            layoutState.mCurrentPosition = i9;
        }
        boolean z2 = true;
        while (z2) {
            int spanSize = this.mSpanCount;
            boolean z3 = (this.additionalViews.isEmpty() ? 1 : 0) ^ r13 ? 1 : 0;
            int i11 = 0;
            while (i11 < this.mSpanCount && layoutState.hasMore(state) && spanSize > 0) {
                int i12 = layoutState.mCurrentPosition;
                spanSize -= getSpanSize(recycler2, state, i12);
                if (spanSize < 0) {
                    break;
                }
                if (this.additionalViews.isEmpty()) {
                    next = layoutState.next(recycler2);
                } else {
                    next = (View) this.additionalViews.get(r12);
                    this.additionalViews.remove((int) r12);
                    layoutState.mCurrentPosition -= r13;
                }
                if (next == null) {
                    break;
                }
                this.mSet[i11] = next;
                i11++;
                if (layoutState.mLayoutDirection == i8 && spanSize <= 0 && hasSiblingChild(i12)) {
                    z3 = true;
                }
            }
            if (i11 == 0) {
                layoutChunkResult.mFinished = r13;
                return;
            }
            assignSpans(recycler2, state, i11, z);
            float f = BitmapDescriptorFactory.HUE_RED;
            int i13 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                View view = this.mSet[i14];
                if (layoutState.mScrapList == null) {
                    if (z) {
                        addView(view);
                    } else {
                        addView(view, r12);
                    }
                } else if (z) {
                    addDisappearingView(view);
                } else {
                    addDisappearingView(view, r12);
                }
                calculateItemDecorationsForChild(view, this.mDecorInsets);
                measureChild(view, modeInOther, r12);
                int decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(view);
                if (decoratedMeasurement2 > i13) {
                    i13 = decoratedMeasurement2;
                }
                float decoratedMeasurementInOther = (this.mOrientationHelper.getDecoratedMeasurementInOther(view) * 1.0f) / ((GridLayoutManager.LayoutParams) view.getLayoutParams()).mSpanSize;
                if (decoratedMeasurementInOther > f) {
                    f = decoratedMeasurementInOther;
                }
            }
            for (int i15 = 0; i15 < i11; i15++) {
                View view2 = this.mSet[i15];
                if (this.mOrientationHelper.getDecoratedMeasurement(view2) != i13) {
                    GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) view2.getLayoutParams();
                    Rect rect = layoutParams.mDecorInsets;
                    measureChildWithDecorationsAndMargin(view2, RecyclerView.LayoutManager.getChildMeasureSpec(this.mCachedBorders[layoutParams.mSpanSize], 1073741824, rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), View.MeasureSpec.makeMeasureSpec(i13 - (((rect.top + rect.bottom) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin), 1073741824), true);
                }
            }
            boolean zShouldLayoutChildFromOpositeSide = shouldLayoutChildFromOpositeSide(this.mSet[0]);
            if (zShouldLayoutChildFromOpositeSide) {
                i = -1;
                if (layoutState.mLayoutDirection == -1) {
                    if (layoutState.mLayoutDirection == i) {
                        int i16 = layoutState.mOffset - layoutChunkResult.mConsumed;
                        i5 = i16;
                        i6 = i16 - i13;
                        width2 = 0;
                    } else {
                        int i17 = layoutChunkResult.mConsumed + layoutState.mOffset;
                        width2 = getWidth();
                        i5 = i17 + i13;
                        i6 = i17;
                    }
                    int i18 = i11 - 1;
                    while (i18 >= 0) {
                        View view3 = this.mSet[i18];
                        GridLayoutManager.LayoutParams layoutParams2 = (GridLayoutManager.LayoutParams) view3.getLayoutParams();
                        int decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(view3);
                        if (layoutState.mLayoutDirection == 1) {
                            width2 -= decoratedMeasurementInOther2;
                        }
                        int i19 = width2;
                        int i20 = i19 + decoratedMeasurementInOther2;
                        int i21 = i13;
                        layoutDecoratedWithMargins(view3, i19, i6, i20, i5);
                        width2 = layoutState.mLayoutDirection == -1 ? i20 : i19;
                        if (layoutParams2.isItemRemoved() || layoutParams2.isItemChanged()) {
                            layoutChunkResult.mIgnoreConsumed = true;
                        }
                        layoutChunkResult.mFocusable |= view3.hasFocusable();
                        i18--;
                        i13 = i21;
                    }
                    i2 = i13;
                }
                layoutChunkResult.mConsumed += i2;
                Arrays.fill(this.mSet, (Object) null);
                recycler2 = recycler;
                z2 = z3;
                r12 = 0;
                r13 = 1;
                i8 = -1;
            } else {
                i = -1;
            }
            if (zShouldLayoutChildFromOpositeSide || layoutState.mLayoutDirection != 1) {
                i2 = i13;
                if (layoutState.mLayoutDirection == -1) {
                    int i22 = layoutState.mOffset - layoutChunkResult.mConsumed;
                    width = getWidth();
                    i3 = i22;
                    i4 = i22 - i2;
                } else {
                    int i23 = layoutChunkResult.mConsumed + layoutState.mOffset;
                    i3 = i23 + i2;
                    i4 = i23;
                    width = 0;
                }
                int i24 = 0;
                while (i24 < i11) {
                    View view4 = this.mSet[i24];
                    GridLayoutManager.LayoutParams layoutParams3 = (GridLayoutManager.LayoutParams) view4.getLayoutParams();
                    int decoratedMeasurementInOther3 = this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                    if (layoutState.mLayoutDirection == -1) {
                        width -= decoratedMeasurementInOther3;
                    }
                    int i25 = width;
                    int i26 = i25 + decoratedMeasurementInOther3;
                    int i27 = i11;
                    layoutDecoratedWithMargins(view4, i25, i4, i26, i3);
                    width = layoutState.mLayoutDirection == 1 ? i26 : i25;
                    if (layoutParams3.isItemRemoved() || layoutParams3.isItemChanged()) {
                        layoutChunkResult.mIgnoreConsumed = true;
                    }
                    layoutChunkResult.mFocusable |= view4.hasFocusable();
                    i24++;
                    i11 = i27;
                }
            }
            layoutChunkResult.mConsumed += i2;
            Arrays.fill(this.mSet, (Object) null);
            recycler2 = recycler;
            z2 = z3;
            r12 = 0;
            r13 = 1;
            i8 = -1;
        }
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    protected void measureChild(View view, int i, boolean z) {
        GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        measureChildWithDecorationsAndMargin(view, RecyclerView.LayoutManager.getChildMeasureSpec(this.mCachedBorders[layoutParams.mSpanSize], i, rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    protected void recycleViewsFromStart(RecyclerView.Recycler recycler, int i, int i2) {
        if (i < 0) {
            return;
        }
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin > i || childAt.getTop() + childAt.getHeight() > i) {
                    recycleChildren(recycler, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = childCount - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            if (childAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt2.getLayoutParams())).bottomMargin > i || childAt2.getTop() + childAt2.getHeight() > i) {
                recycleChildren(recycler, i4, i5);
                return;
            }
        }
    }

    public void setCanScrollVertically(boolean z) {
        this.canScrollVertically = z;
    }

    public abstract boolean shouldLayoutChildFromOpositeSide(View view);
}

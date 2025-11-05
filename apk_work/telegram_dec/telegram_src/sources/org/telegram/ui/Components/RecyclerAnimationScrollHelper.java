package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.MessagesController;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.RecyclerListView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class RecyclerAnimationScrollHelper {
    private AnimationCallback animationCallback;
    private ValueAnimator animator;
    public boolean forceUseStableId;
    public boolean isDialogs;
    private LinearLayoutManager layoutManager;
    private RecyclerListView recyclerView;
    private int scrollDirection;
    private ScrollListener scrollListener;
    public SparseArray positionToOldView = new SparseArray();
    private HashMap oldStableIds = new HashMap();

    /* renamed from: org.telegram.ui.Components.RecyclerAnimationScrollHelper$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnLayoutChangeListener {
        final /* synthetic */ RecyclerView.Adapter val$adapter;
        final /* synthetic */ AnimatableAdapter val$finalAnimatableAdapter;
        final /* synthetic */ ArrayList val$oldViews;
        final /* synthetic */ boolean val$scrollDown;

        AnonymousClass1(RecyclerView.Adapter adapter, ArrayList arrayList, boolean z, AnimatableAdapter animatableAdapter) {
            this.val$adapter = adapter;
            this.val$oldViews = arrayList;
            this.val$scrollDown = z;
            this.val$finalAnimatableAdapter = animatableAdapter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChange$0(ArrayList arrayList, boolean z, int i, ArrayList arrayList2, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) arrayList.get(i2);
                float y = view.getY();
                if (view.getY() + view.getMeasuredHeight() >= BitmapDescriptorFactory.HUE_RED && y <= RecyclerAnimationScrollHelper.this.recyclerView.getMeasuredHeight()) {
                    view.setTranslationY((z ? -i : i) * fFloatValue);
                }
            }
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((View) arrayList2.get(i3)).setTranslationY((z ? i : -i) * (1.0f - fFloatValue));
            }
            RecyclerAnimationScrollHelper.this.recyclerView.invalidate();
            if (RecyclerAnimationScrollHelper.this.scrollListener != null) {
                RecyclerAnimationScrollHelper.this.scrollListener.onScroll();
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int height;
            long jMin;
            ValueAnimator valueAnimator;
            CubicBezierInterpolator cubicBezierInterpolator;
            View view2;
            RecyclerAnimationScrollHelper.this.recyclerView.removeOnLayoutChangeListener(this);
            final ArrayList arrayList = new ArrayList();
            RecyclerAnimationScrollHelper.this.recyclerView.stopScroll();
            int childCount = RecyclerAnimationScrollHelper.this.recyclerView.getChildCount();
            int top = 0;
            int bottom = 0;
            int i9 = 0;
            boolean z = false;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = RecyclerAnimationScrollHelper.this.recyclerView.getChildAt(i10);
                arrayList.add(childAt);
                if (childAt.getTop() < top) {
                    top = childAt.getTop();
                }
                if (childAt.getBottom() > bottom) {
                    bottom = childAt.getBottom();
                }
                if (childAt instanceof ChatMessageCell) {
                    ((ChatMessageCell) childAt).setAnimationRunning(true, false);
                }
                RecyclerView.Adapter adapter = this.val$adapter;
                if (adapter != null && (adapter.hasStableIds() || RecyclerAnimationScrollHelper.this.forceUseStableId)) {
                    long itemId = this.val$adapter.getItemId(RecyclerAnimationScrollHelper.this.recyclerView.getChildAdapterPosition(childAt));
                    if (RecyclerAnimationScrollHelper.this.oldStableIds.containsKey(Long.valueOf(itemId)) && (view2 = (View) RecyclerAnimationScrollHelper.this.oldStableIds.get(Long.valueOf(itemId))) != null) {
                        if (view2 instanceof ChatMessageCell) {
                            ((ChatMessageCell) view2).setAnimationRunning(false, false);
                        }
                        this.val$oldViews.remove(view2);
                        if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                            RecyclerAnimationScrollHelper.this.animationCallback.recycleView(view2);
                        }
                        int top2 = childAt.getTop() - view2.getTop();
                        if (top2 != 0) {
                            i9 = top2;
                        }
                        z = true;
                    }
                }
            }
            RecyclerAnimationScrollHelper.this.oldStableIds.clear();
            Iterator it = this.val$oldViews.iterator();
            int i11 = Integer.MAX_VALUE;
            int height2 = 0;
            while (it.hasNext()) {
                View view3 = (View) it.next();
                int bottom2 = view3.getBottom();
                int top3 = view3.getTop();
                if (bottom2 > height2) {
                    height2 = bottom2;
                }
                if (top3 < i11) {
                    i11 = top3;
                }
                if (view3.getParent() == null) {
                    RecyclerAnimationScrollHelper.this.recyclerView.addView(view3);
                    RecyclerAnimationScrollHelper.this.layoutManager.ignoreView(view3);
                    if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                        RecyclerAnimationScrollHelper.this.animationCallback.ignoreView(view3, true);
                    }
                }
                if (view3 instanceof ChatMessageCell) {
                    ((ChatMessageCell) view3).setAnimationRunning(true, true);
                }
            }
            int i12 = i11 != Integer.MAX_VALUE ? i11 : 0;
            if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                RecyclerAnimationScrollHelper.this.animationCallback.onPreAnimation();
            }
            if (this.val$oldViews.isEmpty()) {
                height = Math.abs(i9);
            } else {
                if (!this.val$scrollDown) {
                    height2 = RecyclerAnimationScrollHelper.this.recyclerView.getHeight() - i12;
                }
                height = (this.val$scrollDown ? -top : bottom - RecyclerAnimationScrollHelper.this.recyclerView.getHeight()) + height2;
            }
            if (RecyclerAnimationScrollHelper.this.animator != null) {
                RecyclerAnimationScrollHelper.this.animator.removeAllListeners();
                RecyclerAnimationScrollHelper.this.animator.cancel();
            }
            RecyclerAnimationScrollHelper.this.animator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ValueAnimator valueAnimator2 = RecyclerAnimationScrollHelper.this.animator;
            final ArrayList arrayList2 = this.val$oldViews;
            final boolean z2 = this.val$scrollDown;
            final int i13 = height;
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper$1$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    this.f$0.lambda$onLayoutChange$0(arrayList2, z2, i13, arrayList, valueAnimator3);
                }
            });
            RecyclerAnimationScrollHelper.this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper.1.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (RecyclerAnimationScrollHelper.this.animator == null) {
                        return;
                    }
                    RecyclerAnimationScrollHelper.this.recyclerView.fastScrollAnimationRunning = false;
                    Iterator it2 = AnonymousClass1.this.val$oldViews.iterator();
                    while (it2.hasNext()) {
                        View view4 = (View) it2.next();
                        if (view4 instanceof ChatMessageCell) {
                            ((ChatMessageCell) view4).setAnimationRunning(false, true);
                        }
                        view4.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        RecyclerAnimationScrollHelper.this.layoutManager.stopIgnoringView(view4);
                        RecyclerAnimationScrollHelper.this.recyclerView.removeView(view4);
                        if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                            RecyclerAnimationScrollHelper.this.animationCallback.ignoreView(view4, false);
                            RecyclerAnimationScrollHelper.this.animationCallback.recycleView(view4);
                        }
                    }
                    RecyclerAnimationScrollHelper.this.recyclerView.setScrollEnabled(true);
                    RecyclerAnimationScrollHelper.this.recyclerView.setVerticalScrollBarEnabled(true);
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        if (RecyclerAnimationScrollHelper.this.recyclerView.mChildHelper.getChildCount() != RecyclerAnimationScrollHelper.this.recyclerView.getChildCount()) {
                            throw new RuntimeException("views count in child helper must be quals views count in recycler view");
                        }
                        if (RecyclerAnimationScrollHelper.this.recyclerView.mChildHelper.getHiddenChildCount() != 0) {
                            throw new RuntimeException("hidden child count must be 0");
                        }
                    }
                    int childCount2 = RecyclerAnimationScrollHelper.this.recyclerView.getChildCount();
                    for (int i14 = 0; i14 < childCount2; i14++) {
                        View childAt2 = RecyclerAnimationScrollHelper.this.recyclerView.getChildAt(i14);
                        if (childAt2 instanceof ChatMessageCell) {
                            ((ChatMessageCell) childAt2).setAnimationRunning(false, false);
                        }
                        childAt2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        View view5 = (View) it3.next();
                        if (view5 instanceof ChatMessageCell) {
                            ((ChatMessageCell) view5).setAnimationRunning(false, false);
                        }
                        view5.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                    AnimatableAdapter animatableAdapter = AnonymousClass1.this.val$finalAnimatableAdapter;
                    if (animatableAdapter != null) {
                        animatableAdapter.onAnimationEnd();
                    }
                    if (RecyclerAnimationScrollHelper.this.animationCallback != null) {
                        RecyclerAnimationScrollHelper.this.animationCallback.onEndAnimation();
                    }
                    RecyclerAnimationScrollHelper.this.positionToOldView.clear();
                    RecyclerAnimationScrollHelper.this.animator = null;
                }
            });
            RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = RecyclerAnimationScrollHelper.this;
            long j = 300;
            if (recyclerAnimationScrollHelper.isDialogs) {
                if (z) {
                    recyclerAnimationScrollHelper.animator.setDuration(150L);
                    valueAnimator = RecyclerAnimationScrollHelper.this.animator;
                    cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
                    valueAnimator.setInterpolator(cubicBezierInterpolator);
                    RecyclerAnimationScrollHelper.this.animator.start();
                }
                long measuredHeight = (long) (((height / recyclerAnimationScrollHelper.recyclerView.getMeasuredHeight()) + 1.0f) * 200.0f);
                if (measuredHeight >= 300) {
                    j = measuredHeight;
                }
            } else {
                if (z) {
                    jMin = 600;
                    RecyclerAnimationScrollHelper.this.animator.setDuration(jMin);
                    valueAnimator = RecyclerAnimationScrollHelper.this.animator;
                    cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                    valueAnimator.setInterpolator(cubicBezierInterpolator);
                    RecyclerAnimationScrollHelper.this.animator.start();
                }
                long measuredHeight2 = (long) (((height / recyclerAnimationScrollHelper.recyclerView.getMeasuredHeight()) + 1.0f) * 200.0f);
                if (measuredHeight2 >= 300) {
                    j = measuredHeight2;
                }
            }
            jMin = Math.min(j, 1300L);
            RecyclerAnimationScrollHelper.this.animator.setDuration(jMin);
            valueAnimator = RecyclerAnimationScrollHelper.this.animator;
            cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            valueAnimator.setInterpolator(cubicBezierInterpolator);
            RecyclerAnimationScrollHelper.this.animator.start();
        }
    }

    public static abstract class AnimatableAdapter extends RecyclerListView.SelectionAdapter {
        public boolean animationRunning;
        private ArrayList rangeInserted = new ArrayList();
        private ArrayList rangeRemoved = new ArrayList();
        private boolean shouldNotifyDataSetChanged;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            if (this.animationRunning) {
                this.shouldNotifyDataSetChanged = true;
            } else {
                super.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemChanged(int i) {
            if (this.animationRunning) {
                return;
            }
            super.notifyItemChanged(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemInserted(int i) {
            if (!this.animationRunning) {
                super.notifyItemInserted(i);
            } else {
                this.rangeInserted.add(Integer.valueOf(i));
                this.rangeInserted.add(1);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2) {
            if (this.animationRunning) {
                return;
            }
            super.notifyItemRangeChanged(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeInserted(int i, int i2) {
            if (!this.animationRunning) {
                super.notifyItemRangeInserted(i, i2);
            } else {
                this.rangeInserted.add(Integer.valueOf(i));
                this.rangeInserted.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            if (!this.animationRunning) {
                super.notifyItemRangeRemoved(i, i2);
            } else {
                this.rangeRemoved.add(Integer.valueOf(i));
                this.rangeRemoved.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRemoved(int i) {
            if (!this.animationRunning) {
                super.notifyItemRemoved(i);
            } else {
                this.rangeRemoved.add(Integer.valueOf(i));
                this.rangeRemoved.add(1);
            }
        }

        public void onAnimationEnd() {
            this.animationRunning = false;
            if (!this.shouldNotifyDataSetChanged && this.rangeInserted.isEmpty() && this.rangeRemoved.isEmpty()) {
                return;
            }
            notifyDataSetChanged();
        }

        public void onAnimationStart() {
            this.animationRunning = true;
            this.shouldNotifyDataSetChanged = false;
            this.rangeInserted.clear();
            this.rangeRemoved.clear();
        }
    }

    public static class AnimationCallback {
        public void ignoreView(View view, boolean z) {
        }

        public abstract void onEndAnimation();

        public void onPreAnimation() {
        }

        public void onStartAnimation() {
        }

        public void recycleView(View view) {
        }
    }

    public interface ScrollListener {
        void onScroll();
    }

    public RecyclerAnimationScrollHelper(RecyclerListView recyclerListView, LinearLayoutManager linearLayoutManager) {
        this.recyclerView = recyclerListView;
        this.layoutManager = linearLayoutManager;
    }

    private void clear() {
        this.recyclerView.setVerticalScrollBarEnabled(true);
        RecyclerListView recyclerListView = this.recyclerView;
        recyclerListView.fastScrollAnimationRunning = false;
        RecyclerView.Adapter adapter = recyclerListView.getAdapter();
        if (adapter instanceof AnimatableAdapter) {
            ((AnimatableAdapter) adapter).onAnimationEnd();
        }
        this.animator = null;
        int childCount = this.recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.recyclerView.getChildAt(i);
            childAt.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (childAt instanceof ChatMessageCell) {
                ((ChatMessageCell) childAt).setAnimationRunning(false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollToPosition$0(int i, int i2, boolean z, boolean z2) {
        scrollToPosition(i, i2, z, z2, false);
    }

    public void cancel() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        clear();
    }

    public void scrollToPosition(int i, int i2, boolean z, boolean z2) {
        scrollToPosition(i, i2, z, z2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00cf A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scrollToPosition(final int i, final int i2, final boolean z, final boolean z2, boolean z3) {
        long itemId;
        RecyclerListView recyclerListView = this.recyclerView;
        if (recyclerListView.fastScrollAnimationRunning) {
            return;
        }
        if (recyclerListView.getItemAnimator() != null) {
            if (z3) {
                if (this.recyclerView.getItemAnimator().isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: org.telegram.ui.Components.RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                    public final void onAnimationsFinished() {
                        this.f$0.lambda$scrollToPosition$0(i, i2, z, z2);
                    }
                })) {
                    return;
                }
            } else if (this.recyclerView.getItemAnimator().isRunning()) {
                return;
            }
        }
        if (!z2 || this.scrollDirection == -1) {
            this.layoutManager.scrollToPositionWithOffset(i, i2, z);
            return;
        }
        int childCount = this.recyclerView.getChildCount();
        if (childCount == 0 || !MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            this.layoutManager.scrollToPositionWithOffset(i, i2, z);
            return;
        }
        boolean z4 = this.scrollDirection == 0;
        this.recyclerView.setScrollEnabled(false);
        ArrayList arrayList = new ArrayList();
        this.positionToOldView.clear();
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        this.oldStableIds.clear();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.recyclerView.getChildAt(i3);
            arrayList.add(childAt);
            this.positionToOldView.put(this.layoutManager.getPosition(childAt), childAt);
            if (adapter != null && (adapter.hasStableIds() || this.forceUseStableId)) {
                if (this.forceUseStableId) {
                    int adapterPosition = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.getAdapterPosition();
                    if (adapterPosition >= 0) {
                        itemId = adapter.getItemId(adapterPosition);
                    }
                } else {
                    itemId = ((RecyclerView.LayoutParams) childAt.getLayoutParams()).mViewHolder.getItemId();
                }
                this.oldStableIds.put(Long.valueOf(itemId), childAt);
                if (!(childAt instanceof ChatMessageCell)) {
                }
            } else if (!(childAt instanceof ChatMessageCell)) {
                ((ChatMessageCell) childAt).setAnimationRunning(true, true);
            }
        }
        this.recyclerView.prepareForFastScroll();
        AnimatableAdapter animatableAdapter = adapter instanceof AnimatableAdapter ? (AnimatableAdapter) adapter : null;
        this.layoutManager.scrollToPositionWithOffset(i, i2, z);
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        this.recyclerView.stopScroll();
        this.recyclerView.setVerticalScrollBarEnabled(false);
        AnimationCallback animationCallback = this.animationCallback;
        if (animationCallback != null) {
            animationCallback.onStartAnimation();
        }
        this.recyclerView.fastScrollAnimationRunning = true;
        if (animatableAdapter != null) {
            animatableAdapter.onAnimationStart();
        }
        this.recyclerView.addOnLayoutChangeListener(new AnonymousClass1(adapter, arrayList, z4, animatableAdapter));
    }

    public void setAnimationCallback(AnimationCallback animationCallback) {
        this.animationCallback = animationCallback;
    }

    public void setScrollDirection(int i) {
        this.scrollDirection = i;
    }

    public void setScrollListener(ScrollListener scrollListener) {
        this.scrollListener = scrollListener;
    }
}

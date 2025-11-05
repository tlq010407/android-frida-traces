package org.telegram.ui.Components;

import android.content.Context;
import android.content.res.Resources;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class CircularViewPager extends ViewPager {
    private Adapter adapter;

    public static abstract class Adapter extends PagerAdapter {
        public abstract int getExtraCount();

        public int getRealPosition(int i) {
            int count = getCount();
            int extraCount = getExtraCount();
            if (i < extraCount) {
                return ((count - (extraCount * 2)) - ((extraCount - i) - 1)) - 1;
            }
            int i2 = count - extraCount;
            return i >= i2 ? i - i2 : i - extraCount;
        }
    }

    public CircularViewPager(Context context) {
        super(context);
        addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: org.telegram.ui.Components.CircularViewPager.1
            private int scrollState;

            private void checkCurrentItem() throws Resources.NotFoundException {
                if (CircularViewPager.this.adapter != null) {
                    int currentItem = CircularViewPager.this.getCurrentItem();
                    int extraCount = CircularViewPager.this.adapter.getExtraCount() + CircularViewPager.this.adapter.getRealPosition(currentItem);
                    if (currentItem != extraCount) {
                        CircularViewPager.this.setCurrentItem(extraCount, false);
                    }
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) throws Resources.NotFoundException {
                if (i == 0) {
                    checkCurrentItem();
                }
                this.scrollState = i;
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) throws Resources.NotFoundException {
                if (i == CircularViewPager.this.getCurrentItem() && f == BitmapDescriptorFactory.HUE_RED && this.scrollState == 1) {
                    checkCurrentItem();
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
            }
        });
    }

    @Override // androidx.viewpager.widget.ViewPager
    @Deprecated
    public void setAdapter(PagerAdapter pagerAdapter) throws Resources.NotFoundException {
        if (!(pagerAdapter instanceof Adapter)) {
            throw new IllegalArgumentException();
        }
        setAdapter((Adapter) pagerAdapter);
    }

    public void setAdapter(Adapter adapter) throws Resources.NotFoundException {
        this.adapter = adapter;
        super.setAdapter((PagerAdapter) adapter);
        if (adapter != null) {
            setCurrentItem(adapter.getExtraCount(), false);
        }
    }
}

package org.telegram.ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Paint.PersistColorPalette;
import org.telegram.ui.Components.RecyclerListView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class PaintColorsListView extends RecyclerListView {
    private static Paint checkerboardPaint = new Paint(1);
    private static Paint checkerboardPaintWhite = new Paint(1);
    private static Paint colorCirclePaint;
    private static Path colorCirclePath;
    private Consumer colorListener;
    private PersistColorPalette colorPalette;
    private Paint outlinePaint;
    private Paint paint;
    private int selectedColorIndex;

    private final class ColorView extends View {
        private int mColor;
        private float selectProgress;

        public ColorView(Context context) {
            super(context);
            setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
            setLayoutParams(new RecyclerView.LayoutParams(-2, 0));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            PaintColorsListView.this.paint.setColor(this.mColor);
            float fMin = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f;
            if (this.selectProgress != BitmapDescriptorFactory.HUE_RED) {
                fMin -= (AndroidUtilities.dp(3.0f) + PaintColorsListView.this.outlinePaint.getStrokeWidth()) * this.selectProgress;
            }
            float width = ((getWidth() / 2.0f) + getPaddingLeft()) - getPaddingRight();
            float height = ((getHeight() / 2.0f) + getPaddingTop()) - getPaddingBottom();
            PaintColorsListView.drawColorCircle(canvas, width, height, fMin, this.mColor);
            if (this.selectProgress != BitmapDescriptorFactory.HUE_RED) {
                PaintColorsListView.this.outlinePaint.setColor(this.mColor);
                PaintColorsListView.this.outlinePaint.setAlpha(255);
                canvas.drawCircle(width, height, (Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f) - AndroidUtilities.dp(2.0f), PaintColorsListView.this.outlinePaint);
            }
        }

        public void setColor(int i) {
            this.mColor = i;
            invalidate();
        }

        public void setSelected(boolean z, boolean z2) {
            if (z2) {
                return;
            }
            this.selectProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            invalidate();
        }
    }

    static {
        checkerboardPaint.setColor(-2013265920);
        checkerboardPaintWhite.setColor(-1996488705);
        colorCirclePath = new Path();
        colorCirclePaint = new Paint(1);
    }

    public PaintColorsListView(final Context context) {
        super(context);
        this.paint = new Paint(1);
        Paint paint = new Paint(1);
        this.outlinePaint = paint;
        this.selectedColorIndex = -1;
        paint.setStyle(Paint.Style.STROKE);
        this.outlinePaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        setLayoutManager(new GridLayoutManager(context, 7));
        setAdapter(new RecyclerView.Adapter() { // from class: org.telegram.ui.Components.Paint.Views.PaintColorsListView.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return 14;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ColorView colorView = (ColorView) viewHolder.itemView;
                colorView.getLayoutParams().height = ((PaintColorsListView.this.getHeight() - PaintColorsListView.this.getPaddingTop()) - PaintColorsListView.this.getPaddingBottom()) / 2;
                if (PaintColorsListView.this.colorPalette != null) {
                    colorView.setColor(PaintColorsListView.this.colorPalette.getColor(i));
                    colorView.setSelected(PaintColorsListView.this.selectedColorIndex == i, false);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new RecyclerListView.Holder(PaintColorsListView.this.new ColorView(context));
            }
        });
        setOverScrollMode(2);
        setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintColorsListView$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$new$0(view, i);
            }
        });
    }

    public static void drawCheckerboard(Canvas canvas, RectF rectF, int i) {
        float f = rectF.left;
        while (f <= rectF.right) {
            float f2 = rectF.top;
            while (f2 <= rectF.bottom) {
                float f3 = i;
                float f4 = f + f3;
                float f5 = f2 + f3;
                canvas.drawRect(f, f2, f4, f5, checkerboardPaint);
                float f6 = i * 2;
                float f7 = f + f6;
                canvas.drawRect(f4, f2, f7, f5, checkerboardPaintWhite);
                f2 += f6;
                canvas.drawRect(f4, f5, f7, f2, checkerboardPaint);
                canvas.drawRect(f, f5, f4, f2, checkerboardPaintWhite);
            }
            f += i * 2;
        }
    }

    public static void drawColorCircle(Canvas canvas, float f, float f2, float f3, int i) {
        colorCirclePaint.setColor(i);
        if (colorCirclePaint.getAlpha() == 255) {
            canvas.drawCircle(f, f2, f3, colorCirclePaint);
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f - f3, f2 - f3, f + f3, f2 + f3);
        colorCirclePaint.setAlpha(255);
        canvas.drawArc(rectF, -45.0f, -180.0f, true, colorCirclePaint);
        colorCirclePath.rewind();
        colorCirclePath.moveTo(rectF.centerX(), rectF.centerY());
        Path path = colorCirclePath;
        double dCenterX = rectF.centerX();
        double dWidth = rectF.width() / 2.0f;
        double dCos = Math.cos(-1.5707963267948966d);
        Double.isNaN(dWidth);
        Double.isNaN(dCenterX);
        float f4 = (float) (dCenterX + (dWidth * dCos));
        double dCenterY = rectF.centerY();
        double dHeight = rectF.height() / 2.0f;
        double dSin = Math.sin(-1.5707963267948966d);
        Double.isNaN(dHeight);
        Double.isNaN(dCenterY);
        path.lineTo(f4, (float) (dCenterY + (dHeight * dSin)));
        colorCirclePath.moveTo(rectF.centerX(), rectF.centerY());
        Path path2 = colorCirclePath;
        double dCenterX2 = rectF.centerX();
        double dWidth2 = rectF.width() / 2.0f;
        double dCos2 = Math.cos(4.71238898038469d);
        Double.isNaN(dWidth2);
        Double.isNaN(dCenterX2);
        float f5 = (float) (dCenterX2 + (dWidth2 * dCos2));
        double dCenterY2 = rectF.centerY();
        double dHeight2 = rectF.height() / 2.0f;
        double dSin2 = Math.sin(4.71238898038469d);
        Double.isNaN(dHeight2);
        Double.isNaN(dCenterY2);
        path2.lineTo(f5, (float) (dCenterY2 + (dHeight2 * dSin2)));
        colorCirclePath.addArc(rectF, -45.0f, 180.0f);
        canvas.save();
        canvas.clipPath(colorCirclePath);
        drawCheckerboard(canvas, rectF, AndroidUtilities.dp(4.0f));
        canvas.restore();
        colorCirclePaint.setColor(i);
        canvas.drawArc(rectF, -45.0f, 180.0f, true, colorCirclePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        this.colorListener.accept(Integer.valueOf(this.colorPalette.getColor(i)));
        this.colorPalette.setCurrentBrushColorByColorIndex(i);
    }

    public int getSelectedColorIndex() {
        return this.selectedColorIndex;
    }

    public void setColorListener(Consumer consumer) {
        this.colorListener = consumer;
    }

    public void setColorPalette(PersistColorPalette persistColorPalette) {
        this.colorPalette = persistColorPalette;
        getAdapter().notifyDataSetChanged();
    }

    public void setProgress(float f, boolean z) {
        float interpolation = (z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(f);
        float childCount = 1.0f / (getChildCount() - 1);
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (i == 0) {
                childAt.setAlpha(interpolation == 1.0f ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            } else {
                float f2 = i * childCount;
                float fMin = Math.min(interpolation, f2) / f2;
                childAt.setScaleX(fMin);
                childAt.setScaleY(fMin);
            }
        }
        invalidate();
    }

    public void setSelectedColorIndex(int i) {
        this.selectedColorIndex = i;
        getAdapter().notifyDataSetChanged();
    }
}

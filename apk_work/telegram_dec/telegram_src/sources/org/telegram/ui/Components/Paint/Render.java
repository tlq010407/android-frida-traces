package org.telegram.ui.Components.Paint;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLES20;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class Render {
    private static RectF Draw(RenderState renderState) {
        char c;
        float f;
        char c2 = 0;
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        int count = renderState.getCount();
        if (count <= 0) {
            return rectF;
        }
        int i = count - 1;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(((count * 4) + (i * 2)) * 20);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        floatBufferAsFloatBuffer.position(0);
        renderState.setPosition(0);
        int i2 = 0;
        int i3 = 0;
        while (i2 < count) {
            float f2 = renderState.read();
            float f3 = renderState.read();
            float f4 = renderState.read();
            float f5 = renderState.read();
            float f6 = renderState.read();
            RectF rectF2 = new RectF(f2 - f4, f3 - f4, f2 + f4, f3 + f4);
            float f7 = rectF2.left;
            float f8 = rectF2.top;
            float f9 = rectF2.right;
            float f10 = rectF2.bottom;
            float[] fArr = new float[8];
            fArr[c2] = f7;
            fArr[1] = f8;
            fArr[2] = f9;
            fArr[3] = f8;
            fArr[4] = f7;
            fArr[5] = f10;
            fArr[6] = f9;
            fArr[7] = f10;
            float fCenterX = rectF2.centerX();
            float fCenterY = rectF2.centerY();
            Matrix matrix = new Matrix();
            matrix.setRotate((float) Math.toDegrees(f5), fCenterX, fCenterY);
            matrix.mapPoints(fArr);
            matrix.mapRect(rectF2);
            Utils.RectFIntegral(rectF2);
            rectF.union(rectF2);
            if (i3 != 0) {
                floatBufferAsFloatBuffer.put(fArr[0]);
                c = 1;
                floatBufferAsFloatBuffer.put(fArr[1]);
                f = BitmapDescriptorFactory.HUE_RED;
                floatBufferAsFloatBuffer.put(BitmapDescriptorFactory.HUE_RED);
                floatBufferAsFloatBuffer.put(BitmapDescriptorFactory.HUE_RED);
                floatBufferAsFloatBuffer.put(f6);
                i3++;
            } else {
                c = 1;
                f = BitmapDescriptorFactory.HUE_RED;
            }
            floatBufferAsFloatBuffer.put(fArr[0]);
            floatBufferAsFloatBuffer.put(fArr[c]);
            floatBufferAsFloatBuffer.put(f);
            floatBufferAsFloatBuffer.put(f);
            floatBufferAsFloatBuffer.put(f6);
            floatBufferAsFloatBuffer.put(fArr[2]);
            floatBufferAsFloatBuffer.put(fArr[3]);
            floatBufferAsFloatBuffer.put(1.0f);
            floatBufferAsFloatBuffer.put(f);
            floatBufferAsFloatBuffer.put(f6);
            floatBufferAsFloatBuffer.put(fArr[4]);
            floatBufferAsFloatBuffer.put(fArr[5]);
            floatBufferAsFloatBuffer.put(f);
            floatBufferAsFloatBuffer.put(1.0f);
            floatBufferAsFloatBuffer.put(f6);
            floatBufferAsFloatBuffer.put(fArr[6]);
            floatBufferAsFloatBuffer.put(fArr[7]);
            floatBufferAsFloatBuffer.put(1.0f);
            floatBufferAsFloatBuffer.put(1.0f);
            floatBufferAsFloatBuffer.put(f6);
            int i4 = i3 + 4;
            if (i2 != i) {
                floatBufferAsFloatBuffer.put(fArr[6]);
                floatBufferAsFloatBuffer.put(fArr[7]);
                floatBufferAsFloatBuffer.put(1.0f);
                floatBufferAsFloatBuffer.put(1.0f);
                floatBufferAsFloatBuffer.put(f6);
                i3 += 5;
            } else {
                i3 = i4;
            }
            i2++;
            c2 = 0;
        }
        floatBufferAsFloatBuffer.position(0);
        GLES20.glVertexAttribPointer(0, 2, 5126, false, 20, (Buffer) floatBufferAsFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(0);
        floatBufferAsFloatBuffer.position(2);
        GLES20.glVertexAttribPointer(1, 2, 5126, true, 20, (Buffer) floatBufferAsFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(1);
        floatBufferAsFloatBuffer.position(4);
        GLES20.glVertexAttribPointer(2, 1, 5126, true, 20, (Buffer) floatBufferAsFloatBuffer.slice());
        GLES20.glEnableVertexAttribArray(2);
        GLES20.glDrawArrays(5, 0, i3);
        return rectF;
    }

    private static void PaintSegment(Point point, Point point2, RenderState renderState) {
        boolean z;
        int i;
        double distanceTo = point.getDistanceTo(point2);
        Point pointSubstract = point2.substract(point);
        Point point3 = new Point(1.0d, 1.0d, 0.0d);
        float fAtan2 = Math.abs(renderState.angle) > BitmapDescriptorFactory.HUE_RED ? renderState.angle : (float) Math.atan2(pointSubstract.y, pointSubstract.x);
        double d = renderState.baseWeight;
        double d2 = point2.z;
        Double.isNaN(d);
        double d3 = d * d2;
        double d4 = renderState.scale;
        Double.isNaN(d4);
        double d5 = renderState.viewportScale;
        Double.isNaN(d5);
        float f = (float) (((d3 * d4) * 1.0d) / d5);
        double dMax = Math.max(1.0f, renderState.spacing * f);
        if (distanceTo > 0.0d) {
            Double.isNaN(distanceTo);
            point3 = pointSubstract.multiplyByScalar(1.0d / distanceTo);
        }
        Point point4 = point3;
        float fMin = Math.min(1.0f, renderState.alpha * 1.15f);
        boolean z2 = point.edge;
        boolean z3 = point2.edge;
        double d6 = renderState.remainder;
        Double.isNaN(distanceTo);
        Double.isNaN(dMax);
        int iCeil = (int) Math.ceil((distanceTo - d6) / dMax);
        int count = renderState.getCount();
        renderState.appendValuesCount(iCeil);
        renderState.setPosition(count);
        Point pointAdd = point.add(point4.multiplyByScalar(renderState.remainder));
        double d7 = renderState.remainder;
        boolean zAddPoint = true;
        while (true) {
            if (d7 > distanceTo) {
                z = z3;
                i = 1;
                break;
            }
            i = 1;
            z = z3;
            zAddPoint = renderState.addPoint(pointAdd.toPointF(), f, fAtan2, z2 ? fMin : renderState.alpha, -1);
            if (!zAddPoint) {
                break;
            }
            pointAdd = pointAdd.add(point4.multiplyByScalar(dMax));
            Double.isNaN(dMax);
            d7 += dMax;
            z2 = false;
            z3 = z;
        }
        if (zAddPoint && z) {
            renderState.appendValuesCount(i);
            renderState.addPoint(point2.toPointF(), f, fAtan2, fMin, -1);
        }
        Double.isNaN(distanceTo);
        renderState.remainder = d7 - distanceTo;
    }

    private static void PaintStamp(Point point, RenderState renderState) {
        float f = ((renderState.baseWeight * renderState.scale) * 1.0f) / renderState.viewportScale;
        PointF pointF = point.toPointF();
        float f2 = Math.abs(renderState.angle) > BitmapDescriptorFactory.HUE_RED ? renderState.angle : BitmapDescriptorFactory.HUE_RED;
        float f3 = renderState.alpha;
        renderState.prepare();
        renderState.appendValuesCount(1);
        renderState.addPoint(pointF, f, f2, f3, 0);
    }

    public static RectF RenderPath(Path path, RenderState renderState, boolean z) {
        renderState.baseWeight = path.getBaseWeight();
        renderState.spacing = path.getBrush().getSpacing();
        renderState.alpha = z ? 1.0f : path.getBrush().getAlpha();
        renderState.angle = path.getBrush().getAngle();
        renderState.scale = path.getBrush().getScale();
        int length = path.getLength();
        if (length == 0) {
            return null;
        }
        int i = 0;
        if (length == 1) {
            PaintStamp(path.getPoints()[0], renderState);
        } else {
            Point[] points = path.getPoints();
            renderState.prepare();
            while (i < points.length - 1) {
                Point point = points[i];
                i++;
                PaintSegment(point, points[i], renderState);
            }
        }
        path.remainder = renderState.remainder;
        return Draw(renderState);
    }
}

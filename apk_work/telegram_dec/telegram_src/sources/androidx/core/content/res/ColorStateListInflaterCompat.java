package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R$attr;
import androidx.core.R$styleable;
import androidx.core.math.MathUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class ColorStateListInflaterCompat {
    private static final ThreadLocal sTempTypedValue = new ThreadLocal();

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    private static TypedValue getTypedValue() {
        ThreadLocal threadLocal = sTempTypedValue;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006a A[PHI: r11
      0x006a: PHI (r11v9 int) = (r11v2 int), (r11v3 int) binds: [B:24:0x0068, B:27:0x0075] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        int i;
        Resources resources2 = resources;
        int i2 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[] iArrAppend = new int[20];
        int i3 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i2 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = obtainAttributes(resources2, theme, attributeSet, R$styleable.ColorStateListItem);
                int i4 = R$styleable.ColorStateListItem_android_color;
                int resourceId = typedArrayObtainAttributes.getResourceId(i4, -1);
                if (resourceId == -1 || isColorInt(resources2, resourceId)) {
                    color = typedArrayObtainAttributes.getColor(i4, -65281);
                    i = R$styleable.ColorStateListItem_android_alpha;
                    float f = 1.0f;
                    if (typedArrayObtainAttributes.hasValue(i)) {
                        i = R$styleable.ColorStateListItem_alpha;
                        if (typedArrayObtainAttributes.hasValue(i)) {
                        }
                        if (Build.VERSION.SDK_INT < 31) {
                        }
                    } else {
                        f = typedArrayObtainAttributes.getFloat(i, 1.0f);
                        if (Build.VERSION.SDK_INT < 31) {
                            int i5 = R$styleable.ColorStateListItem_android_lStar;
                            if (!typedArrayObtainAttributes.hasValue(i5)) {
                                i5 = R$styleable.ColorStateListItem_lStar;
                            }
                            float f2 = typedArrayObtainAttributes.getFloat(i5, -1.0f);
                            typedArrayObtainAttributes.recycle();
                            int attributeCount = attributeSet.getAttributeCount();
                            int[] iArr2 = new int[attributeCount];
                            int i6 = 0;
                            for (int i7 = 0; i7 < attributeCount; i7++) {
                                int attributeNameResource = attributeSet.getAttributeNameResource(i7);
                                if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R$attr.alpha && attributeNameResource != R$attr.lStar) {
                                    int i8 = i6 + 1;
                                    if (!attributeSet.getAttributeBooleanValue(i7, false)) {
                                        attributeNameResource = -attributeNameResource;
                                    }
                                    iArr2[i6] = attributeNameResource;
                                    i6 = i8;
                                }
                            }
                            int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i6);
                            iArrAppend = GrowingArrayUtils.append(iArrAppend, i3, modulateColorAlpha(color, f, f2));
                            iArr = (int[][]) GrowingArrayUtils.append(iArr, i3, iArrTrimStateSet);
                            i3++;
                        }
                    }
                } else {
                    try {
                        color = createFromXml(resources2, resources2.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        i4 = R$styleable.ColorStateListItem_android_color;
                    }
                    i = R$styleable.ColorStateListItem_android_alpha;
                    float f3 = 1.0f;
                    if (typedArrayObtainAttributes.hasValue(i)) {
                    }
                }
            }
            i2 = 1;
            resources2 = resources;
        }
        int[] iArr3 = new int[i3];
        int[][] iArr4 = new int[i3][];
        System.arraycopy(iArrAppend, 0, iArr3, 0, i3);
        System.arraycopy(iArr, 0, iArr4, 0, i3);
        return new ColorStateList(iArr4, iArr3);
    }

    private static boolean isColorInt(Resources resources, int i) throws Resources.NotFoundException {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        return i2 >= 28 && i2 <= 31;
    }

    private static int modulateColorAlpha(int i, float f, float f2) {
        boolean z = f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= 100.0f;
        if (f == 1.0f && !z) {
            return i;
        }
        int iClamp = MathUtils.clamp((int) ((Color.alpha(i) * f) + 0.5f), 0, 255);
        if (z) {
            CamColor camColorFromColor = CamColor.fromColor(i);
            i = CamColor.toColor(camColorFromColor.getHue(), camColorFromColor.getChroma(), f2);
        }
        return (i & 16777215) | (iClamp << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}

package org.telegram.messenger;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import androidx.core.graphics.ColorUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import javax.xml.parsers.SAXParserFactory;
import org.telegram.messenger.SvgHelper;
import org.telegram.ui.ActionBar.Theme;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SvgHelper {
    private static final double[] pow10 = new double[128];

    public static class Circle {
        float rad;
        float x1;
        float y1;

        public Circle(float f, float f2, float f3) {
            this.x1 = f;
            this.y1 = f2;
            this.rad = f3;
        }
    }

    private static class Line {
        float x1;
        float x2;
        float y1;
        float y2;

        public Line(float f, float f2, float f3, float f4) {
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
        }
    }

    private static class NumberParse {
        private int nextCmd;
        private ArrayList<Float> numbers;

        public NumberParse(ArrayList<Float> arrayList, int i) {
            this.numbers = arrayList;
            this.nextCmd = i;
        }

        public int getNextCmd() {
            return this.nextCmd;
        }

        public float getNumber(int i) {
            return this.numbers.get(i).floatValue();
        }
    }

    private static class Oval {
        RectF rect;

        public Oval(RectF rectF) {
            this.rect = rectF;
        }
    }

    public static class ParserHelper {
        private char current;
        private int n;
        public int pos;
        private CharSequence s;

        public ParserHelper(CharSequence charSequence, int i) {
            this.s = charSequence;
            this.pos = i;
            this.n = charSequence.length();
            this.current = charSequence.charAt(i);
        }

        private char read() {
            int i = this.pos;
            int i2 = this.n;
            if (i < i2) {
                this.pos = i + 1;
            }
            int i3 = this.pos;
            if (i3 == i2) {
                return (char) 0;
            }
            return this.s.charAt(i3);
        }

        private void reportUnexpectedCharacterError(char c) {
            throw new RuntimeException("Unexpected char '" + c + "'.");
        }

        public void advance() {
            this.current = read();
        }

        public float buildFloat(int i, int i2) {
            double d;
            if (i2 < -125 || i == 0) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            if (i2 >= 128) {
                return i > 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
            }
            if (i2 == 0) {
                return i;
            }
            if (i >= 67108864) {
                i++;
            }
            double d2 = i;
            double[] dArr = SvgHelper.pow10;
            if (i2 > 0) {
                double d3 = dArr[i2];
                Double.isNaN(d2);
                d = d2 * d3;
            } else {
                double d4 = dArr[-i2];
                Double.isNaN(d2);
                d = d2 / d4;
            }
            return (float) d;
        }

        public float nextFloat() {
            skipWhitespace();
            float f = parseFloat();
            skipNumberSeparator();
            return f;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0028 A[LOOP:0: B:13:0x0028->B:84:?, LOOP_START] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0099 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ae A[PHI: r3
          0x00ae: PHI (r3v1 boolean) = (r3v0 boolean), (r3v3 boolean) binds: [B:49:0x00a2, B:54:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00bb A[PHI: r3
          0x00bb: PHI (r3v2 boolean) = (r3v1 boolean), (r3v0 boolean) binds: [B:56:0x00b4, B:51:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00e8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public float parseFloat() {
            boolean z;
            int i;
            int i2;
            int i3;
            boolean z2;
            char c;
            char c2;
            char c3;
            char c4 = this.current;
            int i4 = 0;
            boolean z3 = true;
            if (c4 == '+') {
                z = true;
            } else {
                if (c4 != '-') {
                    z = true;
                    switch (this.current) {
                        case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            z2 = false;
                            if (this.current == '.') {
                                char c5 = read();
                                this.current = c5;
                                switch (c5) {
                                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                        if (i == 0) {
                                            while (true) {
                                                char c6 = read();
                                                this.current = c6;
                                                i2--;
                                                switch (c6) {
                                                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                                    case '2':
                                                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                                                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                                    default:
                                                        if (!z2) {
                                                        }
                                                        break;
                                                }
                                            }
                                        }
                                        break;
                                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                    case '2':
                                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                        while (true) {
                                            if (i < 9) {
                                                i++;
                                                i3 = (i3 * 10) + (this.current - '0');
                                                i2--;
                                            }
                                            char c7 = read();
                                            this.current = c7;
                                            switch (c7) {
                                            }
                                        }
                                        break;
                                    default:
                                        if (!z2) {
                                            reportUnexpectedCharacterError(c5);
                                            break;
                                        }
                                        break;
                                }
                            }
                            c = this.current;
                            if (c == 'E' || c == 'e') {
                                c2 = read();
                                this.current = c2;
                                if (c2 == '+') {
                                    c3 = read();
                                    this.current = c3;
                                    switch (c3) {
                                        case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                        case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                        case '2':
                                        case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                        case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                        case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                        case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                        case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                        case R.styleable.AppCompatTheme_colorError /* 56 */:
                                        case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                            switch (this.current) {
                                                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                                    while (true) {
                                                        char c8 = read();
                                                        this.current = c8;
                                                        switch (c8) {
                                                        }
                                                    }
                                                    break;
                                                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                                case '2':
                                                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                                case R.styleable.AppCompatTheme_colorError /* 56 */:
                                                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                                    int i5 = 0;
                                                    while (true) {
                                                        if (i4 < 3) {
                                                            i4++;
                                                            i5 = (i5 * 10) + (this.current - '0');
                                                        }
                                                        char c9 = read();
                                                        this.current = c9;
                                                        switch (c9) {
                                                            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                                            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                                            case '2':
                                                            case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                                            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                                            case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                                            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                                            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                                            case R.styleable.AppCompatTheme_colorError /* 56 */:
                                                            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                                            default:
                                                                i4 = i5;
                                                                break;
                                                        }
                                                    }
                                            }
                                            break;
                                        default:
                                            reportUnexpectedCharacterError(c3);
                                            break;
                                    }
                                } else if (c2 != '-') {
                                    switch (c2) {
                                        case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                        case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                        case '2':
                                        case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                        case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                        case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                        case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                        case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                        case R.styleable.AppCompatTheme_colorError /* 56 */:
                                        case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                            break;
                                        default:
                                            reportUnexpectedCharacterError(c2);
                                            break;
                                    }
                                } else {
                                    z3 = false;
                                    c3 = read();
                                    this.current = c3;
                                    switch (c3) {
                                    }
                                }
                            }
                            if (!z3) {
                                i4 = -i4;
                            }
                            int i6 = i4 + i2;
                            if (!z) {
                                i3 = -i3;
                            }
                            break;
                        case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                            while (true) {
                                char c10 = read();
                                this.current = c10;
                                if (c10 != '.' && c10 != 'E' && c10 != 'e') {
                                    switch (c10) {
                                    }
                                }
                            }
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            z2 = true;
                            if (this.current == '.') {
                            }
                            c = this.current;
                            if (c == 'E') {
                                c2 = read();
                                this.current = c2;
                                if (c2 == '+') {
                                }
                            }
                            if (!z3) {
                            }
                            int i62 = i4 + i2;
                            if (!z) {
                            }
                            break;
                        case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        case '2':
                        case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        case R.styleable.AppCompatTheme_colorError /* 56 */:
                        case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            while (true) {
                                if (i < 9) {
                                    i++;
                                    i3 = (i3 * 10) + (this.current - '0');
                                } else {
                                    i2++;
                                }
                                char c11 = read();
                                this.current = c11;
                                switch (c11) {
                                }
                                z2 = true;
                                if (this.current == '.') {
                                }
                                c = this.current;
                                if (c == 'E') {
                                }
                                if (!z3) {
                                }
                                int i622 = i4 + i2;
                                if (!z) {
                                }
                                break;
                            }
                            break;
                    }
                    return BitmapDescriptorFactory.HUE_RED;
                }
                z = false;
            }
            this.current = read();
            switch (this.current) {
            }
            return BitmapDescriptorFactory.HUE_RED;
        }

        public void skipNumberSeparator() {
            while (true) {
                int i = this.pos;
                if (i >= this.n) {
                    return;
                }
                char cCharAt = this.s.charAt(i);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != ' ' && cCharAt != ',') {
                    return;
                } else {
                    advance();
                }
            }
        }

        public void skipWhitespace() {
            while (true) {
                int i = this.pos;
                if (i >= this.n || !Character.isWhitespace(this.s.charAt(i))) {
                    return;
                } else {
                    advance();
                }
            }
        }
    }

    private static class Properties {
        Attributes atts;
        ArrayList<StyleSet> styles;

        private Properties(Attributes attributes, HashMap<String, StyleSet> map) {
            this.atts = attributes;
            String stringAttr = SvgHelper.getStringAttr("style", attributes);
            if (stringAttr != null) {
                ArrayList<StyleSet> arrayList = new ArrayList<>();
                this.styles = arrayList;
                arrayList.add(new StyleSet(stringAttr));
                return;
            }
            String stringAttr2 = SvgHelper.getStringAttr("class", attributes);
            if (stringAttr2 != null) {
                this.styles = new ArrayList<>();
                for (String str : stringAttr2.split(" ")) {
                    StyleSet styleSet = map.get(str.trim());
                    if (styleSet != null) {
                        this.styles.add(styleSet);
                    }
                }
            }
        }

        public String getAttr(String str) {
            ArrayList<StyleSet> arrayList = this.styles;
            String style = null;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = this.styles.size();
                for (int i = 0; i < size; i++) {
                    style = this.styles.get(i).getStyle(str);
                    if (style != null) {
                        break;
                    }
                }
            }
            return style == null ? SvgHelper.getStringAttr(str, this.atts) : style;
        }

        public Float getFloat(String str) {
            String attr = getAttr(str);
            if (attr == null) {
                return null;
            }
            try {
                return Float.valueOf(Float.parseFloat(attr));
            } catch (NumberFormatException unused) {
                return null;
            }
        }

        public Float getFloat(String str, float f) {
            Float f2 = getFloat(str);
            return f2 == null ? Float.valueOf(f) : f2;
        }

        public Integer getHex(String str) {
            String attr = getAttr(str);
            if (attr == null) {
                return null;
            }
            try {
                return Integer.valueOf(Integer.parseInt(attr.substring(1), 16));
            } catch (NumberFormatException unused) {
                return SvgHelper.getColorByName(attr);
            }
        }

        public String getString(String str) {
            return getAttr(str);
        }
    }

    private static class RoundRect {
        RectF rect;
        float rx;

        public RoundRect(RectF rectF, float f) {
            this.rect = rectF;
            this.rx = f;
        }
    }

    private static class SVGHandler extends DefaultHandler {
        private boolean alphaOnly;
        private Bitmap bitmap;
        private boolean boundsMode;
        private Canvas canvas;
        private int desiredHeight;
        private int desiredWidth;
        private SvgDrawable drawable;
        private float globalScale;
        private HashMap<String, StyleSet> globalStyles;
        private Paint paint;
        private Integer paintColor;
        boolean pushed;
        private RectF rect;
        private RectF rectTmp;
        private float scale;
        private StringBuilder styles;

        private SVGHandler(int i, int i2, Integer num, boolean z, float f) {
            this.scale = 1.0f;
            this.paint = new Paint(1);
            this.rect = new RectF();
            this.rectTmp = new RectF();
            this.globalScale = 1.0f;
            this.pushed = false;
            this.globalStyles = new HashMap<>();
            this.globalScale = f;
            this.desiredWidth = i;
            this.desiredHeight = i2;
            this.paintColor = num;
            if (z) {
                this.drawable = new SvgDrawable();
            }
        }

        private void doColor(Properties properties, Integer num, boolean z) {
            Integer num2 = this.paintColor;
            if (num2 != null) {
                this.paint.setColor(num2.intValue());
            } else {
                this.paint.setColor((num.intValue() & 16777215) | (-16777216));
            }
            Float f = properties.getFloat("opacity");
            if (f == null) {
                f = properties.getFloat(z ? "fill-opacity" : "stroke-opacity");
            }
            this.paint.setAlpha(f == null ? 255 : (int) (f.floatValue() * 255.0f));
        }

        private boolean doFill(Properties properties) {
            if ("none".equals(properties.getString("display"))) {
                return false;
            }
            String string = properties.getString("fill");
            if (string != null && string.startsWith("url(#")) {
                string.substring(5, string.length() - 1);
                return false;
            }
            Integer hex = properties.getHex("fill");
            if (hex != null) {
                doColor(properties, hex, true);
                this.paint.setStyle(Paint.Style.FILL);
                return true;
            }
            if (properties.getString("fill") != null || properties.getString("stroke") != null) {
                return false;
            }
            this.paint.setStyle(Paint.Style.FILL);
            Integer num = this.paintColor;
            if (num != null) {
                this.paint.setColor(num.intValue());
            } else {
                this.paint.setColor(-16777216);
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0072  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean doStroke(Properties properties) {
            Integer hex;
            Paint paint;
            Paint.Cap cap;
            String string;
            Paint paint2;
            Paint.Join join;
            if ("none".equals(properties.getString("display")) || (hex = properties.getHex("stroke")) == null) {
                return false;
            }
            doColor(properties, hex, false);
            Float f = properties.getFloat("stroke-width");
            if (f != null) {
                this.paint.setStrokeWidth(f.floatValue());
            }
            String string2 = properties.getString("stroke-linecap");
            if ("round".equals(string2)) {
                paint = this.paint;
                cap = Paint.Cap.ROUND;
            } else {
                if (!"square".equals(string2)) {
                    if ("butt".equals(string2)) {
                        paint = this.paint;
                        cap = Paint.Cap.BUTT;
                    }
                    string = properties.getString("stroke-linejoin");
                    if (!"miter".equals(string)) {
                        paint2 = this.paint;
                        join = Paint.Join.MITER;
                    } else {
                        if (!"round".equals(string)) {
                            if ("bevel".equals(string)) {
                                paint2 = this.paint;
                                join = Paint.Join.BEVEL;
                            }
                            this.paint.setStyle(Paint.Style.STROKE);
                            return true;
                        }
                        paint2 = this.paint;
                        join = Paint.Join.ROUND;
                    }
                    paint2.setStrokeJoin(join);
                    this.paint.setStyle(Paint.Style.STROKE);
                    return true;
                }
                paint = this.paint;
                cap = Paint.Cap.SQUARE;
            }
            paint.setStrokeCap(cap);
            string = properties.getString("stroke-linejoin");
            if (!"miter".equals(string)) {
            }
            paint2.setStrokeJoin(join);
            this.paint.setStyle(Paint.Style.STROKE);
            return true;
        }

        private void popTransform() {
            if (this.pushed) {
                SvgDrawable svgDrawable = this.drawable;
                if (svgDrawable != null) {
                    svgDrawable.addCommand(null);
                } else {
                    this.canvas.restore();
                }
            }
        }

        private void pushTransform(Attributes attributes) {
            String stringAttr = SvgHelper.getStringAttr("transform", attributes);
            boolean z = stringAttr != null;
            this.pushed = z;
            if (z) {
                Matrix transform = SvgHelper.parseTransform(stringAttr);
                SvgDrawable svgDrawable = this.drawable;
                if (svgDrawable != null) {
                    svgDrawable.addCommand(transform);
                } else {
                    this.canvas.save();
                    this.canvas.concat(transform);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            StringBuilder sb = this.styles;
            if (sb != null) {
                sb.append(cArr, i, i2);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            int iIndexOf;
            str2.hashCode();
            switch (str2) {
                case "g":
                case "defs":
                case "clipPath":
                    this.boundsMode = false;
                    break;
                case "style":
                    StringBuilder sb = this.styles;
                    if (sb != null) {
                        String[] strArrSplit = sb.toString().split("\\}");
                        int i = 0;
                        while (true) {
                            if (i >= strArrSplit.length) {
                                this.styles = null;
                                break;
                            } else {
                                String strReplace = strArrSplit[i].trim().replace("\t", "").replace("\n", "");
                                strArrSplit[i] = strReplace;
                                if (strReplace.length() != 0 && strArrSplit[i].charAt(0) == '.' && (iIndexOf = strArrSplit[i].indexOf(R.styleable.AppCompatTheme_windowFixedWidthMinor)) >= 0) {
                                    this.globalStyles.put(strArrSplit[i].substring(1, iIndexOf).trim(), new StyleSet(strArrSplit[i].substring(iIndexOf + 1)));
                                }
                                i++;
                            }
                        }
                    }
                    break;
            }
        }

        public Bitmap getBitmap() {
            return this.bitmap;
        }

        public SvgDrawable getDrawable() {
            return this.drawable;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0442 A[PHI: r1 r2
          0x0442: PHI (r1v48 android.graphics.Path) = (r1v17 android.graphics.Path), (r1v52 android.graphics.Path) binds: [B:159:0x0440, B:99:0x029a] A[DONT_GENERATE, DONT_INLINE]
          0x0442: PHI (r2v41 org.telegram.messenger.SvgHelper$SvgDrawable) = (r2v16 org.telegram.messenger.SvgHelper$SvgDrawable), (r2v45 org.telegram.messenger.SvgHelper$SvgDrawable) binds: [B:159:0x0440, B:99:0x029a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:161:0x0449 A[PHI: r1
          0x0449: PHI (r1v49 android.graphics.Path) = (r1v17 android.graphics.Path), (r1v52 android.graphics.Path) binds: [B:159:0x0440, B:99:0x029a] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            SvgDrawable svgDrawable;
            Path pathDoPath;
            String stringAttr;
            int i;
            SvgDrawable svgDrawable2;
            Object line;
            if (!this.boundsMode || str2.equals("style")) {
                str2.hashCode();
                char c = 65535;
                switch (str2.hashCode()) {
                    case -1656480802:
                        if (str2.equals("ellipse")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1360216880:
                        if (str2.equals("circle")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -397519558:
                        if (str2.equals("polygon")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 103:
                        if (str2.equals(ImageLoader.AUTOPLAY_FILTER)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 114276:
                        if (str2.equals("svg")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3079438:
                        if (str2.equals("defs")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 3321844:
                        if (str2.equals("line")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 3433509:
                        if (str2.equals("path")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 3496420:
                        if (str2.equals("rect")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 109780401:
                        if (str2.equals("style")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 561938880:
                        if (str2.equals("polyline")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 917656469:
                        if (str2.equals("clipPath")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Float floatAttr = SvgHelper.getFloatAttr("cx", attributes);
                        Float floatAttr2 = SvgHelper.getFloatAttr("cy", attributes);
                        Float floatAttr3 = SvgHelper.getFloatAttr("rx", attributes);
                        Float floatAttr4 = SvgHelper.getFloatAttr("ry", attributes);
                        if (floatAttr != null && floatAttr2 != null && floatAttr3 != null && floatAttr4 != null) {
                            pushTransform(attributes);
                            Properties properties = new Properties(attributes, this.globalStyles);
                            this.rect.set(floatAttr.floatValue() - floatAttr3.floatValue(), floatAttr2.floatValue() - floatAttr4.floatValue(), floatAttr.floatValue() + floatAttr3.floatValue(), floatAttr2.floatValue() + floatAttr4.floatValue());
                            if (doFill(properties)) {
                                SvgDrawable svgDrawable3 = this.drawable;
                                if (svgDrawable3 != null) {
                                    svgDrawable3.addCommand(new Oval(this.rect), this.paint);
                                } else {
                                    this.canvas.drawOval(this.rect, this.paint);
                                }
                            }
                            if (doStroke(properties)) {
                                SvgDrawable svgDrawable4 = this.drawable;
                                if (svgDrawable4 != null) {
                                    svgDrawable4.addCommand(new Oval(this.rect), this.paint);
                                } else {
                                    this.canvas.drawOval(this.rect, this.paint);
                                }
                            }
                            popTransform();
                            break;
                        }
                        break;
                    case 1:
                        Float floatAttr5 = SvgHelper.getFloatAttr("cx", attributes);
                        Float floatAttr6 = SvgHelper.getFloatAttr("cy", attributes);
                        Float floatAttr7 = SvgHelper.getFloatAttr("r", attributes);
                        if (floatAttr5 != null && floatAttr6 != null && floatAttr7 != null) {
                            pushTransform(attributes);
                            Properties properties2 = new Properties(attributes, this.globalStyles);
                            if (doFill(properties2)) {
                                SvgDrawable svgDrawable5 = this.drawable;
                                if (svgDrawable5 != null) {
                                    svgDrawable5.addCommand(new Circle(floatAttr5.floatValue(), floatAttr6.floatValue(), floatAttr7.floatValue()), this.paint);
                                } else {
                                    this.canvas.drawCircle(floatAttr5.floatValue(), floatAttr6.floatValue(), floatAttr7.floatValue(), this.paint);
                                }
                            }
                            if (doStroke(properties2)) {
                                SvgDrawable svgDrawable6 = this.drawable;
                                if (svgDrawable6 != null) {
                                    svgDrawable6.addCommand(new Circle(floatAttr5.floatValue(), floatAttr6.floatValue(), floatAttr7.floatValue()), this.paint);
                                } else {
                                    this.canvas.drawCircle(floatAttr5.floatValue(), floatAttr6.floatValue(), floatAttr7.floatValue(), this.paint);
                                }
                            }
                            popTransform();
                            break;
                        }
                        break;
                    case 2:
                    case '\n':
                        NumberParse numberParseAttr = SvgHelper.getNumberParseAttr("points", attributes);
                        if (numberParseAttr != null) {
                            Path path = new Path();
                            ArrayList arrayList = numberParseAttr.numbers;
                            if (arrayList.size() > 1) {
                                pushTransform(attributes);
                                Properties properties3 = new Properties(attributes, this.globalStyles);
                                path.moveTo(((Float) arrayList.get(0)).floatValue(), ((Float) arrayList.get(1)).floatValue());
                                for (int i2 = 2; i2 < arrayList.size(); i2 += 2) {
                                    path.lineTo(((Float) arrayList.get(i2)).floatValue(), ((Float) arrayList.get(i2 + 1)).floatValue());
                                }
                                if (str2.equals("polygon")) {
                                    path.close();
                                }
                                if (doFill(properties3)) {
                                    SvgDrawable svgDrawable7 = this.drawable;
                                    if (svgDrawable7 != null) {
                                        svgDrawable7.addCommand(path, this.paint);
                                    } else {
                                        this.canvas.drawPath(path, this.paint);
                                    }
                                }
                                if (doStroke(properties3)) {
                                    svgDrawable = this.drawable;
                                    pathDoPath = path;
                                    if (svgDrawable != null) {
                                        svgDrawable.addCommand(pathDoPath, this.paint);
                                    } else {
                                        this.canvas.drawPath(pathDoPath, this.paint);
                                    }
                                }
                                popTransform();
                                break;
                            }
                        }
                        break;
                    case 3:
                        if (!"bounds".equalsIgnoreCase(SvgHelper.getStringAttr("id", attributes))) {
                        }
                        this.boundsMode = true;
                        break;
                    case 4:
                        Float floatAttr8 = SvgHelper.getFloatAttr("width", attributes);
                        Float floatAttr9 = SvgHelper.getFloatAttr("height", attributes);
                        if ((floatAttr8 == null || floatAttr9 == null) && (stringAttr = SvgHelper.getStringAttr("viewBox", attributes)) != null) {
                            String[] strArrSplit = stringAttr.split(" ");
                            Float fValueOf = Float.valueOf(Float.parseFloat(strArrSplit[2]));
                            floatAttr9 = Float.valueOf(Float.parseFloat(strArrSplit[3]));
                            floatAttr8 = fValueOf;
                        }
                        if (floatAttr8 == null || floatAttr9 == null) {
                            floatAttr8 = Float.valueOf(this.desiredWidth);
                            floatAttr9 = Float.valueOf(this.desiredHeight);
                        }
                        int iCeil = (int) Math.ceil(floatAttr8.floatValue());
                        int iCeil2 = (int) Math.ceil(floatAttr9.floatValue());
                        if (iCeil == 0 || iCeil2 == 0) {
                            iCeil = this.desiredWidth;
                            iCeil2 = this.desiredHeight;
                        } else {
                            int i3 = this.desiredWidth;
                            if (i3 != 0 && (i = this.desiredHeight) != 0) {
                                float f = iCeil;
                                float f2 = iCeil2;
                                float fMin = Math.min(i3 / f, i / f2);
                                this.scale = fMin;
                                iCeil = (int) (f * fMin);
                                iCeil2 = (int) (f2 * fMin);
                            }
                        }
                        SvgDrawable svgDrawable8 = this.drawable;
                        if (svgDrawable8 == null) {
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iCeil, iCeil2, this.alphaOnly ? Bitmap.Config.ALPHA_8 : Bitmap.Config.ARGB_8888);
                            this.bitmap = bitmapCreateBitmap;
                            bitmapCreateBitmap.eraseColor(0);
                            Canvas canvas = new Canvas(this.bitmap);
                            this.canvas = canvas;
                            float f3 = this.scale;
                            if (f3 != BitmapDescriptorFactory.HUE_RED) {
                                float f4 = this.globalScale * f3;
                                canvas.scale(f4, f4);
                                break;
                            }
                        } else {
                            svgDrawable8.width = iCeil;
                            svgDrawable8.height = iCeil2;
                            break;
                        }
                        break;
                    case 5:
                    case 11:
                        this.boundsMode = true;
                        break;
                    case 6:
                        Float floatAttr10 = SvgHelper.getFloatAttr("x1", attributes);
                        Float floatAttr11 = SvgHelper.getFloatAttr("x2", attributes);
                        Float floatAttr12 = SvgHelper.getFloatAttr("y1", attributes);
                        Float floatAttr13 = SvgHelper.getFloatAttr("y2", attributes);
                        if (doStroke(new Properties(attributes, this.globalStyles))) {
                            pushTransform(attributes);
                            svgDrawable2 = this.drawable;
                            if (svgDrawable2 != null) {
                                line = new Line(floatAttr10.floatValue(), floatAttr12.floatValue(), floatAttr11.floatValue(), floatAttr13.floatValue());
                                svgDrawable2.addCommand(line, this.paint);
                                popTransform();
                                break;
                            } else {
                                this.canvas.drawLine(floatAttr10.floatValue(), floatAttr12.floatValue(), floatAttr11.floatValue(), floatAttr13.floatValue(), this.paint);
                                popTransform();
                            }
                        }
                        break;
                    case 7:
                        pathDoPath = SvgHelper.doPath(SvgHelper.getStringAttr("d", attributes));
                        pushTransform(attributes);
                        Properties properties4 = new Properties(attributes, this.globalStyles);
                        if (doFill(properties4)) {
                            SvgDrawable svgDrawable9 = this.drawable;
                            if (svgDrawable9 != null) {
                                svgDrawable9.addCommand(pathDoPath, this.paint);
                            } else {
                                this.canvas.drawPath(pathDoPath, this.paint);
                            }
                        }
                        if (doStroke(properties4)) {
                            svgDrawable = this.drawable;
                            if (svgDrawable != null) {
                            }
                        }
                        popTransform();
                        break;
                    case '\b':
                        Float floatAttr14 = SvgHelper.getFloatAttr("x", attributes);
                        if (floatAttr14 == null) {
                            floatAttr14 = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
                        }
                        Float floatAttr15 = SvgHelper.getFloatAttr("y", attributes);
                        if (floatAttr15 == null) {
                            floatAttr15 = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
                        }
                        Float floatAttr16 = SvgHelper.getFloatAttr("width", attributes);
                        Float floatAttr17 = SvgHelper.getFloatAttr("height", attributes);
                        Float floatAttr18 = SvgHelper.getFloatAttr("rx", attributes, null);
                        pushTransform(attributes);
                        Properties properties5 = new Properties(attributes, this.globalStyles);
                        if (doFill(properties5)) {
                            SvgDrawable svgDrawable10 = this.drawable;
                            if (svgDrawable10 != null) {
                                svgDrawable10.addCommand(floatAttr18 != null ? new RoundRect(new RectF(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue()), floatAttr18.floatValue()) : new RectF(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue()), this.paint);
                            } else if (floatAttr18 != null) {
                                this.rectTmp.set(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue());
                                this.canvas.drawRoundRect(this.rectTmp, floatAttr18.floatValue(), floatAttr18.floatValue(), this.paint);
                            } else {
                                this.canvas.drawRect(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue(), this.paint);
                            }
                        }
                        if (doStroke(properties5)) {
                            svgDrawable2 = this.drawable;
                            if (svgDrawable2 != null) {
                                if (floatAttr18 != null) {
                                    svgDrawable2.addCommand(new RoundRect(new RectF(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue()), floatAttr18.floatValue()), this.paint);
                                } else {
                                    line = new RectF(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue());
                                    svgDrawable2.addCommand(line, this.paint);
                                }
                            } else if (floatAttr18 != null) {
                                this.rectTmp.set(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue());
                                this.canvas.drawRoundRect(this.rectTmp, floatAttr18.floatValue(), floatAttr18.floatValue(), this.paint);
                            } else {
                                this.canvas.drawRect(floatAttr14.floatValue(), floatAttr15.floatValue(), floatAttr14.floatValue() + floatAttr16.floatValue(), floatAttr15.floatValue() + floatAttr17.floatValue(), this.paint);
                            }
                        }
                        popTransform();
                        break;
                    case '\t':
                        this.styles = new StringBuilder();
                        break;
                }
            }
        }
    }

    private static class StyleSet {
        HashMap<String, String> styleMap;

        private StyleSet(String str) {
            this.styleMap = new HashMap<>();
            for (String str2 : str.split(";")) {
                String[] strArrSplit = str2.split(":");
                if (strArrSplit.length == 2) {
                    this.styleMap.put(strArrSplit[0].trim(), strArrSplit[1].trim());
                }
            }
        }

        private StyleSet(StyleSet styleSet) {
            HashMap<String, String> map = new HashMap<>();
            this.styleMap = map;
            map.putAll(styleSet.styleMap);
        }

        public String getStyle(String str) {
            return this.styleMap.get(str);
        }
    }

    public static class SvgDrawable extends Drawable {
        private static float gradientWidth;
        private static long lastUpdateTime;
        private static WeakReference<Drawable> shiftDrawable;
        private static Runnable shiftRunnable;
        private static float totalTranslation;
        private Paint backgroundPaint;
        private float colorAlpha;
        private int currentColorKey;
        private Theme.ResourcesProvider currentResourcesProvider;
        protected int height;
        private Integer overrideColor;
        private Paint overridePaint;
        private ImageReceiver parentImageReceiver;
        protected int width;
        private static final int[] parentPosition = new int[2];
        private static boolean lite = LiteMode.isEnabled(32);
        protected ArrayList<Object> commands = new ArrayList<>();
        protected HashMap<Object, Paint> paints = new HashMap<>();
        private final Bitmap[] backgroundBitmap = new Bitmap[3];
        private final Canvas[] backgroundCanvas = new Canvas[3];
        private final LinearGradient[] placeholderGradient = new LinearGradient[3];
        private final Matrix[] placeholderMatrix = new Matrix[3];
        private final int[] currentColor = new int[2];
        private float crossfadeAlpha = 1.0f;
        SparseArray<Paint> overridePaintByPosition = new SparseArray<>();
        private boolean aspectFill = true;
        private boolean aspectCenter = false;

        /* JADX INFO: Access modifiers changed from: private */
        public void addCommand(Object obj) {
            this.commands.add(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addCommand(Object obj, Paint paint) {
            this.commands.add(obj);
            this.paints.put(obj, new Paint(paint));
        }

        public static void updateLiteValues() {
            lite = LiteMode.isEnabled(32);
        }

        public SvgDrawable clone() {
            SvgDrawable svgDrawable = new SvgDrawable();
            for (int i = 0; i < this.commands.size(); i++) {
                svgDrawable.commands.add(this.commands.get(i));
                Paint paint = this.paints.get(this.commands.get(i));
                if (paint != null) {
                    Paint paint2 = new Paint();
                    paint2.setColor(paint.getColor());
                    paint2.setStrokeCap(paint.getStrokeCap());
                    paint2.setStrokeJoin(paint.getStrokeJoin());
                    paint2.setStrokeWidth(paint.getStrokeWidth());
                    paint2.setStyle(paint.getStyle());
                    svgDrawable.paints.put(this.commands.get(i), paint2);
                }
            }
            svgDrawable.width = this.width;
            svgDrawable.height = this.height;
            return svgDrawable;
        }

        public void copyCommandFromPosition(int i) {
            ArrayList<Object> arrayList = this.commands;
            arrayList.add(arrayList.get(i));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            drawInternal(canvas, false, 0, System.currentTimeMillis(), getBounds().left, getBounds().top, getBounds().width(), getBounds().height());
        }

        public void drawInternal(Canvas canvas, boolean z, int i, long j, float f, float f2, float f3, float f4) {
            long j2;
            int i2;
            int i3 = this.currentColorKey;
            if (i3 >= 0) {
                setupGradient(i3, this.currentResourcesProvider, this.colorAlpha, z);
            }
            float scale = getScale((int) f3, (int) f4);
            if (this.placeholderGradient[i] != null) {
                float f5 = gradientWidth;
                if (f5 > BitmapDescriptorFactory.HUE_RED && lite) {
                    if (z) {
                        long j3 = j - lastUpdateTime;
                        j2 = j3 <= 64 ? j3 : 64L;
                        if (j2 > 0) {
                            lastUpdateTime = j;
                            totalTranslation += (j2 * f5) / 1800.0f;
                            while (true) {
                                float f6 = totalTranslation;
                                float f7 = gradientWidth * 2.0f;
                                if (f6 < f7) {
                                    break;
                                } else {
                                    totalTranslation = f6 - f7;
                                }
                            }
                        }
                    } else if (shiftRunnable == null || shiftDrawable.get() == this) {
                        long j4 = j - lastUpdateTime;
                        j2 = j4 <= 64 ? j4 : 64L;
                        long j5 = j2 >= 0 ? j2 : 0L;
                        lastUpdateTime = j;
                        float f8 = totalTranslation + ((j5 * gradientWidth) / 1800.0f);
                        while (true) {
                            totalTranslation = f8;
                            float f9 = totalTranslation;
                            float f10 = gradientWidth;
                            if (f9 < f10 / 2.0f) {
                                break;
                            } else {
                                f8 = f9 - f10;
                            }
                        }
                        shiftDrawable = new WeakReference<>(this);
                        Runnable runnable = shiftRunnable;
                        if (runnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.SvgHelper$SvgDrawable$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                SvgHelper.SvgDrawable.shiftRunnable = null;
                            }
                        };
                        shiftRunnable = runnable2;
                        AndroidUtilities.runOnUIThread(runnable2, ((int) (1000.0f / AndroidUtilities.screenRefreshRate)) - 1);
                    }
                    ImageReceiver imageReceiver = this.parentImageReceiver;
                    if (imageReceiver == null || z) {
                        i2 = 0;
                    } else {
                        int[] iArr = parentPosition;
                        imageReceiver.getParentPosition(iArr);
                        i2 = iArr[0];
                    }
                    int i4 = z ? i + 1 : 0;
                    Matrix matrix = this.placeholderMatrix[i4];
                    if (matrix != null) {
                        matrix.reset();
                        Matrix[] matrixArr = this.placeholderMatrix;
                        (z ? matrixArr[i4] : matrixArr[i4]).postTranslate(((-i2) + totalTranslation) - f, BitmapDescriptorFactory.HUE_RED);
                        float f11 = 1.0f / scale;
                        this.placeholderMatrix[i4].postScale(f11, f11);
                        this.placeholderGradient[i4].setLocalMatrix(this.placeholderMatrix[i4]);
                        ImageReceiver imageReceiver2 = this.parentImageReceiver;
                        if (imageReceiver2 != null && !z) {
                            imageReceiver2.invalidate();
                        }
                    }
                }
            }
            canvas.save();
            canvas.translate(f, f2);
            if (!this.aspectFill || this.aspectCenter) {
                canvas.translate((f3 - (this.width * scale)) / 2.0f, (f4 - (this.height * scale)) / 2.0f);
            }
            canvas.scale(scale, scale);
            int size = this.commands.size();
            for (int i5 = 0; i5 < size; i5++) {
                Object obj = this.commands.get(i5);
                if (obj instanceof Matrix) {
                    canvas.save();
                    canvas.concat((Matrix) obj);
                } else if (obj == null) {
                    canvas.restore();
                } else {
                    Paint paint = this.overridePaintByPosition.get(i5);
                    if (paint == null) {
                        paint = this.overridePaint;
                    }
                    if (z) {
                        paint = this.backgroundPaint;
                    } else if (paint == null) {
                        paint = this.paints.get(obj);
                    }
                    int alpha = paint.getAlpha();
                    paint.setAlpha((int) (this.crossfadeAlpha * alpha));
                    if (obj instanceof Path) {
                        canvas.drawPath((Path) obj, paint);
                    } else if (obj instanceof Rect) {
                        canvas.drawRect((Rect) obj, paint);
                    } else if (obj instanceof RectF) {
                        canvas.drawRect((RectF) obj, paint);
                    } else if (obj instanceof Line) {
                        Line line = (Line) obj;
                        canvas.drawLine(line.x1, line.y1, line.x2, line.y2, paint);
                    } else if (obj instanceof Circle) {
                        Circle circle = (Circle) obj;
                        canvas.drawCircle(circle.x1, circle.y1, circle.rad, paint);
                    } else if (obj instanceof Oval) {
                        canvas.drawOval(((Oval) obj).rect, paint);
                    } else if (obj instanceof RoundRect) {
                        RoundRect roundRect = (RoundRect) obj;
                        RectF rectF = roundRect.rect;
                        float f12 = roundRect.rx;
                        canvas.drawRoundRect(rectF, f12, f12, paint);
                    }
                    paint.setAlpha(alpha);
                }
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.width;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.height;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public float getScale(int i, int i2) {
            float f = i / this.width;
            float f2 = i2 / this.height;
            return this.aspectFill ? Math.max(f, f2) : Math.min(f, f2);
        }

        public void overrideWidthAndHeight(int i, int i2) {
            this.width = i;
            this.height = i2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.crossfadeAlpha = i / 255.0f;
        }

        public void setAspectCenter(boolean z) {
            this.aspectCenter = z;
        }

        public void setAspectFill(boolean z) {
            this.aspectFill = z;
        }

        public void setColor(int i) {
            this.overrideColor = Integer.valueOf(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void setColorKey(int i) {
            this.currentColorKey = i;
        }

        public void setColorKey(int i, Theme.ResourcesProvider resourcesProvider) {
            this.currentColorKey = i;
            this.currentResourcesProvider = resourcesProvider;
        }

        public void setPaint(Paint paint) {
            this.overridePaint = paint;
        }

        public void setPaint(Paint paint, int i) {
            this.overridePaintByPosition.put(i, paint);
        }

        public void setParent(ImageReceiver imageReceiver) {
            this.parentImageReceiver = imageReceiver;
        }

        public void setupGradient(int i, float f, boolean z) {
            setupGradient(i, null, f, z);
        }

        public void setupGradient(int i, Theme.ResourcesProvider resourcesProvider, float f, boolean z) {
            Shader bitmapShader;
            Integer num = this.overrideColor;
            int color = num == null ? Theme.getColor(i, resourcesProvider) : num.intValue();
            this.currentResourcesProvider = resourcesProvider;
            int[] iArr = this.currentColor;
            if (iArr[z ? 1 : 0] != color) {
                this.colorAlpha = f;
                this.currentColorKey = i;
                iArr[z ? 1 : 0] = color;
                gradientWidth = AndroidUtilities.displaySize.x * 2;
                if (!lite) {
                    int alphaComponent = ColorUtils.setAlphaComponent(color, 70);
                    if (z) {
                        if (this.backgroundPaint == null) {
                            this.backgroundPaint = new Paint(1);
                        }
                        this.backgroundPaint.setShader(null);
                        this.backgroundPaint.setColor(alphaComponent);
                        return;
                    }
                    for (Paint paint : this.paints.values()) {
                        paint.setShader(null);
                        paint.setColor(alphaComponent);
                    }
                    return;
                }
                float fDp = AndroidUtilities.dp(180.0f) / gradientWidth;
                int iArgb = Color.argb((int) ((Color.alpha(color) / 2) * this.colorAlpha), Color.red(color), Color.green(color), Color.blue(color));
                float f2 = (1.0f - fDp) / 2.0f;
                LinearGradient[] linearGradientArr = this.placeholderGradient;
                float f3 = fDp / 2.0f;
                float[] fArr = {BitmapDescriptorFactory.HUE_RED, f2 - f3, f2, f3 + f2, 1.0f};
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                linearGradientArr[z ? 1 : 0] = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, gradientWidth, BitmapDescriptorFactory.HUE_RED, new int[]{0, 0, iArgb, 0, 0}, fArr, tileMode);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28) {
                    bitmapShader = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, gradientWidth, BitmapDescriptorFactory.HUE_RED, new int[]{iArgb, iArgb}, (float[]) null, tileMode);
                } else {
                    Bitmap[] bitmapArr = this.backgroundBitmap;
                    if (bitmapArr[z ? 1 : 0] == null) {
                        bitmapArr[z ? 1 : 0] = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                        this.backgroundCanvas[z ? 1 : 0] = new Canvas(this.backgroundBitmap[z ? 1 : 0]);
                    }
                    this.backgroundCanvas[z ? 1 : 0].drawColor(iArgb);
                    bitmapShader = new BitmapShader(this.backgroundBitmap[z ? 1 : 0], tileMode, tileMode);
                }
                this.placeholderMatrix[z ? 1 : 0] = new Matrix();
                this.placeholderGradient[z ? 1 : 0].setLocalMatrix(this.placeholderMatrix[z ? 1 : 0]);
                if (z) {
                    if (this.backgroundPaint == null) {
                        this.backgroundPaint = new Paint(1);
                    }
                    if (i2 <= 22) {
                        this.backgroundPaint.setShader(bitmapShader);
                        return;
                    } else {
                        this.backgroundPaint.setShader(new ComposeShader(this.placeholderGradient[z ? 1 : 0], bitmapShader, PorterDuff.Mode.ADD));
                        return;
                    }
                }
                for (Paint paint2 : this.paints.values()) {
                    if (Build.VERSION.SDK_INT <= 22) {
                        paint2.setShader(bitmapShader);
                    } else {
                        paint2.setShader(new ComposeShader(this.placeholderGradient[z ? 1 : 0], bitmapShader, PorterDuff.Mode.ADD));
                    }
                }
            }
        }
    }

    static {
        int i = 0;
        while (true) {
            double[] dArr = pow10;
            if (i >= dArr.length) {
                return;
            }
            dArr[i] = Math.pow(10.0d, i);
            i++;
        }
    }

    public static String decompress(byte[] bArr) {
        try {
            StringBuilder sb = new StringBuilder(bArr.length * 2);
            sb.append('M');
            for (byte b : bArr) {
                int i = b & 255;
                if (i >= 192) {
                    sb.append("AACAAAAHAAALMAAAQASTAVAAAZaacaaaahaaalmaaaqastava.az0123456789-,".charAt(i - 192));
                } else {
                    if (i >= 128) {
                        sb.append(',');
                    } else if (i >= 64) {
                        sb.append('-');
                    }
                    sb.append(b & 63);
                }
            }
            sb.append('z');
            return sb.toString();
        } catch (Exception e) {
            FileLog.e(e);
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Path doPath(String str) {
        char c;
        float f;
        float f2;
        int length = str.length();
        ParserHelper parserHelper = new ParserHelper(str, 0);
        parserHelper.skipWhitespace();
        Path path = new Path();
        char c2 = 0;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        float f8 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            int i = parserHelper.pos;
            if (i >= length) {
                return path;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt != '+' && cCharAt != '-') {
                switch (cCharAt) {
                }
            } else if (c2 == 'm' || c2 == 'M') {
                c = c2;
                c2 = (char) (c2 - 1);
            } else {
                if (c2 != 'c' && c2 != 'C' && c2 != 'l' && c2 != 'L' && c2 != 's' && c2 != 'S' && c2 != 'h' && c2 != 'H' && c2 != 'v' && c2 != 'V') {
                    parserHelper.advance();
                    c2 = cCharAt;
                }
                c = c2;
            }
            boolean z = true;
            switch (c2) {
                case 'A':
                case R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                    float fNextFloat = parserHelper.nextFloat();
                    float fNextFloat2 = parserHelper.nextFloat();
                    float fNextFloat3 = parserHelper.nextFloat();
                    int iNextFloat = (int) parserHelper.nextFloat();
                    int iNextFloat2 = (int) parserHelper.nextFloat();
                    float fNextFloat4 = parserHelper.nextFloat();
                    float fNextFloat5 = parserHelper.nextFloat();
                    f = f5;
                    f2 = f6;
                    drawArc(path, f3, f4, fNextFloat4, fNextFloat5, fNextFloat, fNextFloat2, fNextFloat3, iNextFloat, iNextFloat2);
                    f6 = f7;
                    f5 = f8;
                    f3 = fNextFloat4;
                    f4 = fNextFloat5;
                    z = false;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                case R.styleable.AppCompatTheme_spinnerDropDownItemStyle /* 99 */:
                    float fNextFloat6 = parserHelper.nextFloat();
                    float fNextFloat7 = parserHelper.nextFloat();
                    float fNextFloat8 = parserHelper.nextFloat();
                    float fNextFloat9 = parserHelper.nextFloat();
                    float fNextFloat10 = parserHelper.nextFloat();
                    float fNextFloat11 = parserHelper.nextFloat();
                    if (c2 == 'c') {
                        fNextFloat6 += f3;
                        fNextFloat8 += f3;
                        fNextFloat10 += f3;
                        fNextFloat7 += f4;
                        fNextFloat9 += f4;
                        fNextFloat11 += f4;
                    }
                    float f9 = fNextFloat8;
                    float f10 = fNextFloat9;
                    float f11 = fNextFloat10;
                    path.cubicTo(fNextFloat6, fNextFloat7, f9, f10, f11, fNextFloat11);
                    f3 = f11;
                    f = f5;
                    f4 = fNextFloat11;
                    f5 = f10;
                    f2 = f6;
                    f6 = f9;
                    break;
                case R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                case 'h':
                    float fNextFloat12 = parserHelper.nextFloat();
                    if (c2 == 'h') {
                        path.rLineTo(fNextFloat12, BitmapDescriptorFactory.HUE_RED);
                        f3 += fNextFloat12;
                    } else {
                        path.lineTo(fNextFloat12, f4);
                        f3 = fNextFloat12;
                    }
                    f = f5;
                    f2 = f6;
                    f6 = f7;
                    f5 = f8;
                    z = false;
                    break;
                case R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                case 'l':
                    float fNextFloat13 = parserHelper.nextFloat();
                    float fNextFloat14 = parserHelper.nextFloat();
                    if (c2 == 'l') {
                        path.rLineTo(fNextFloat13, fNextFloat14);
                        f3 += fNextFloat13;
                        f4 += fNextFloat14;
                    } else {
                        path.lineTo(fNextFloat13, fNextFloat14);
                        f3 = fNextFloat13;
                        f4 = fNextFloat14;
                    }
                    f = f5;
                    f2 = f6;
                    f6 = f7;
                    f5 = f8;
                    z = false;
                    break;
                case R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                case R.styleable.AppCompatTheme_textAppearanceSmallPopupMenu /* 109 */:
                    float fNextFloat15 = parserHelper.nextFloat();
                    float fNextFloat16 = parserHelper.nextFloat();
                    if (c2 == 'm') {
                        f6 += fNextFloat15;
                        f5 += fNextFloat16;
                        path.rMoveTo(fNextFloat15, fNextFloat16);
                        f3 += fNextFloat15;
                        f4 += fNextFloat16;
                        f = f5;
                        f2 = f6;
                        f6 = f7;
                        f5 = f8;
                        z = false;
                        break;
                    } else {
                        path.moveTo(fNextFloat15, fNextFloat16);
                        f3 = fNextFloat15;
                        f2 = f3;
                        f = fNextFloat16;
                        f4 = f;
                        f6 = f7;
                        f5 = f8;
                        z = false;
                    }
                case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                case R.styleable.AppCompatTheme_tooltipFrameBackground /* 115 */:
                    float fNextFloat17 = parserHelper.nextFloat();
                    float fNextFloat18 = parserHelper.nextFloat();
                    float fNextFloat19 = parserHelper.nextFloat();
                    float fNextFloat20 = parserHelper.nextFloat();
                    if (c2 == 's') {
                        fNextFloat17 += f3;
                        fNextFloat19 += f3;
                        fNextFloat18 += f4;
                        fNextFloat20 += f4;
                    }
                    float f12 = fNextFloat18;
                    float f13 = fNextFloat19;
                    float f14 = fNextFloat20;
                    path.cubicTo((f3 * 2.0f) - f7, (f4 * 2.0f) - f8, fNextFloat17, f12, f13, f14);
                    f3 = f13;
                    f4 = f14;
                    f2 = f6;
                    f6 = fNextFloat17;
                    f = f5;
                    f5 = f12;
                    break;
                case R.styleable.AppCompatTheme_panelBackground /* 86 */:
                case R.styleable.AppCompatTheme_windowActionBarOverlay /* 118 */:
                    float fNextFloat21 = parserHelper.nextFloat();
                    if (c2 == 'v') {
                        path.rLineTo(BitmapDescriptorFactory.HUE_RED, fNextFloat21);
                        f4 += fNextFloat21;
                    } else {
                        path.lineTo(f3, fNextFloat21);
                        f4 = fNextFloat21;
                    }
                    f = f5;
                    f2 = f6;
                    f6 = f7;
                    f5 = f8;
                    z = false;
                    break;
                case 'Z':
                case R.styleable.AppCompatTheme_windowFixedWidthMajor /* 122 */:
                    path.close();
                    path.moveTo(f6, f5);
                    f = f5;
                    f4 = f;
                    f3 = f6;
                    f2 = f3;
                    break;
                default:
                    f = f5;
                    f2 = f6;
                    f6 = f7;
                    f5 = f8;
                    z = false;
                    break;
            }
            if (z) {
                f8 = f5;
                f7 = f6;
            } else {
                f7 = f3;
                f8 = f4;
            }
            parserHelper.skipWhitespace();
            f5 = f;
            f6 = f2;
            c2 = c;
        }
    }

    private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2) {
    }

    public static Bitmap getBitmap(int i, int i2, int i3, int i4) {
        return getBitmap(i, i2, i3, i4, 1.0f);
    }

    public static Bitmap getBitmap(int i, int i2, int i3, int i4, float f) throws Resources.NotFoundException, IOException {
        try {
            InputStream inputStreamOpenRawResource = ApplicationLoader.applicationContext.getResources().openRawResource(i);
            try {
                XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
                SVGHandler sVGHandler = new SVGHandler(i2, i3, Integer.valueOf(i4), false, f);
                xMLReader.setContentHandler(sVGHandler);
                xMLReader.parse(new InputSource(inputStreamOpenRawResource));
                Bitmap bitmap = sVGHandler.getBitmap();
                if (inputStreamOpenRawResource != null) {
                    inputStreamOpenRawResource.close();
                }
                return bitmap;
            } finally {
            }
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static Bitmap getBitmap(File file, int i, int i2, boolean z) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
                SVGHandler sVGHandler = new SVGHandler(i, i2, z ? -1 : null, false, 1.0f);
                if (!z) {
                    sVGHandler.alphaOnly = true;
                }
                xMLReader.setContentHandler(sVGHandler);
                xMLReader.parse(new InputSource(fileInputStream));
                Bitmap bitmap = sVGHandler.getBitmap();
                fileInputStream.close();
                return bitmap;
            } finally {
            }
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static Bitmap getBitmap(InputStream inputStream, int i, int i2, boolean z) throws SAXException, IOException {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            SVGHandler sVGHandler = new SVGHandler(i, i2, z ? -1 : null, false, 1.0f);
            xMLReader.setContentHandler(sVGHandler);
            xMLReader.parse(new InputSource(inputStream));
            return sVGHandler.getBitmap();
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static Bitmap getBitmap(String str, int i, int i2, boolean z) throws SAXException, IOException {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            SVGHandler sVGHandler = new SVGHandler(i, i2, z ? -1 : null, false, 1.0f);
            xMLReader.setContentHandler(sVGHandler);
            xMLReader.parse(new InputSource(new StringReader(str)));
            return sVGHandler.getBitmap();
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static Bitmap getBitmapByPathOnly(String str, int i, int i2, int i3, int i4) {
        try {
            Path pathDoPath = doPath(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.scale(i3 / i, i4 / i2);
            Paint paint = new Paint();
            paint.setColor(-1);
            canvas.drawPath(pathDoPath, paint);
            return bitmapCreateBitmap;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Integer getColorByName(String str) {
        int i;
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "yellow":
                i = -256;
                break;
            case "red":
                i = -65536;
                break;
            case "blue":
                i = -16776961;
                break;
            case "cyan":
                i = -16711681;
                break;
            case "gray":
                i = -7829368;
                break;
            case "black":
                i = -16777216;
                break;
            case "green":
                i = -16711936;
                break;
            case "white":
                return -1;
            case "magenta":
                i = -65281;
                break;
            default:
                return null;
        }
        return Integer.valueOf(i);
    }

    public static SvgDrawable getDrawable(int i, Integer num) throws SAXException, IOException {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            SVGHandler sVGHandler = new SVGHandler(0, 0, num, true, 1.0f);
            xMLReader.setContentHandler(sVGHandler);
            xMLReader.parse(new InputSource(ApplicationLoader.applicationContext.getResources().openRawResource(i)));
            return sVGHandler.getDrawable();
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static SvgDrawable getDrawable(String str) throws SAXException, IOException {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            SVGHandler sVGHandler = new SVGHandler(0, 0, null, true, 1.0f);
            xMLReader.setContentHandler(sVGHandler);
            xMLReader.parse(new InputSource(new StringReader(str)));
            return sVGHandler.getDrawable();
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static SvgDrawable getDrawableByPath(Path path, int i, int i2) {
        try {
            SvgDrawable svgDrawable = new SvgDrawable();
            svgDrawable.commands.add(path);
            svgDrawable.paints.put(path, new Paint(1));
            svgDrawable.width = i;
            svgDrawable.height = i2;
            return svgDrawable;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static SvgDrawable getDrawableByPath(String str, int i, int i2) {
        try {
            Path pathDoPath = doPath(str);
            SvgDrawable svgDrawable = new SvgDrawable();
            svgDrawable.commands.add(pathDoPath);
            svgDrawable.paints.put(pathDoPath, new Paint(1));
            svgDrawable.width = i;
            svgDrawable.height = i2;
            return svgDrawable;
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Float getFloatAttr(String str, Attributes attributes) {
        return getFloatAttr(str, attributes, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Float getFloatAttr(String str, Attributes attributes, Float f) {
        String stringAttr = getStringAttr(str, attributes);
        if (stringAttr == null) {
            return f;
        }
        if (stringAttr.endsWith("px")) {
            stringAttr = stringAttr.substring(0, stringAttr.length() - 2);
        } else if (stringAttr.endsWith("mm")) {
            return null;
        }
        return Float.valueOf(Float.parseFloat(stringAttr));
    }

    private static Integer getHexAttr(String str, Attributes attributes) {
        String stringAttr = getStringAttr(str, attributes);
        if (stringAttr == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(stringAttr.substring(1), 16));
        } catch (NumberFormatException unused) {
            return getColorByName(stringAttr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NumberParse getNumberParseAttr(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return parseNumbers(attributes.getValue(i));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getStringAttr(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return attributes.getValue(i);
            }
        }
        return null;
    }

    private static NumberParse parseNumbers(String str) {
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int length2 = 0;
        boolean z = false;
        for (int i = 1; i < length; i++) {
            if (z) {
                z = false;
            } else {
                char cCharAt = str.charAt(i);
                switch (cCharAt) {
                    case '\t':
                    case '\n':
                    case ' ':
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        if (cCharAt != '-' || str.charAt(i - 1) != 'e') {
                            String strSubstring = str.substring(length2, i);
                            if (strSubstring.trim().length() > 0) {
                                arrayList.add(Float.valueOf(Float.parseFloat(strSubstring)));
                                if (cCharAt == '-') {
                                    length2 = i;
                                    break;
                                } else {
                                    length2 = i + 1;
                                    z = true;
                                    break;
                                }
                            } else {
                                length2++;
                                break;
                            }
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    case 'A':
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    case R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                    case R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                    case R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                    case R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                    case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                    case R.styleable.AppCompatTheme_listPreferredItemPaddingRight /* 84 */:
                    case R.styleable.AppCompatTheme_panelBackground /* 86 */:
                    case 'Z':
                    case R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                    case R.styleable.AppCompatTheme_spinnerDropDownItemStyle /* 99 */:
                    case 'h':
                    case 'l':
                    case R.styleable.AppCompatTheme_textAppearanceSmallPopupMenu /* 109 */:
                    case R.styleable.AppCompatTheme_toolbarStyle /* 113 */:
                    case R.styleable.AppCompatTheme_tooltipFrameBackground /* 115 */:
                    case R.styleable.AppCompatTheme_viewInflaterClass /* 116 */:
                    case R.styleable.AppCompatTheme_windowActionBarOverlay /* 118 */:
                    case R.styleable.AppCompatTheme_windowFixedWidthMajor /* 122 */:
                        String strSubstring2 = str.substring(length2, i);
                        if (strSubstring2.trim().length() > 0) {
                            arrayList.add(Float.valueOf(Float.parseFloat(strSubstring2)));
                        }
                        return new NumberParse(arrayList, i);
                }
            }
        }
        String strSubstring3 = str.substring(length2);
        if (strSubstring3.length() > 0) {
            try {
                arrayList.add(Float.valueOf(Float.parseFloat(strSubstring3)));
            } catch (NumberFormatException unused) {
            }
            length2 = str.length();
        }
        return new NumberParse(arrayList, length2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Matrix parseTransform(String str) {
        float f;
        float fFloatValue = BitmapDescriptorFactory.HUE_RED;
        if (str.startsWith("matrix(")) {
            NumberParse numbers = parseNumbers(str.substring(7));
            if (numbers.numbers.size() != 6) {
                return null;
            }
            Matrix matrix = new Matrix();
            matrix.setValues(new float[]{((Float) numbers.numbers.get(0)).floatValue(), ((Float) numbers.numbers.get(2)).floatValue(), ((Float) numbers.numbers.get(4)).floatValue(), ((Float) numbers.numbers.get(1)).floatValue(), ((Float) numbers.numbers.get(3)).floatValue(), ((Float) numbers.numbers.get(5)).floatValue(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f});
            return matrix;
        }
        if (str.startsWith("translate(")) {
            NumberParse numbers2 = parseNumbers(str.substring(10));
            if (numbers2.numbers.size() <= 0) {
                return null;
            }
            float fFloatValue2 = ((Float) numbers2.numbers.get(0)).floatValue();
            if (numbers2.numbers.size() > 1) {
                fFloatValue = ((Float) numbers2.numbers.get(1)).floatValue();
            }
            Matrix matrix2 = new Matrix();
            matrix2.postTranslate(fFloatValue2, fFloatValue);
            return matrix2;
        }
        if (str.startsWith("scale(")) {
            NumberParse numbers3 = parseNumbers(str.substring(6));
            if (numbers3.numbers.size() <= 0) {
                return null;
            }
            float fFloatValue3 = ((Float) numbers3.numbers.get(0)).floatValue();
            if (numbers3.numbers.size() > 1) {
                fFloatValue = ((Float) numbers3.numbers.get(1)).floatValue();
            }
            Matrix matrix3 = new Matrix();
            matrix3.postScale(fFloatValue3, fFloatValue);
            return matrix3;
        }
        if (str.startsWith("skewX(")) {
            NumberParse numbers4 = parseNumbers(str.substring(6));
            if (numbers4.numbers.size() <= 0) {
                return null;
            }
            float fFloatValue4 = ((Float) numbers4.numbers.get(0)).floatValue();
            Matrix matrix4 = new Matrix();
            matrix4.postSkew((float) Math.tan(fFloatValue4), BitmapDescriptorFactory.HUE_RED);
            return matrix4;
        }
        if (str.startsWith("skewY(")) {
            NumberParse numbers5 = parseNumbers(str.substring(6));
            if (numbers5.numbers.size() <= 0) {
                return null;
            }
            float fFloatValue5 = ((Float) numbers5.numbers.get(0)).floatValue();
            Matrix matrix5 = new Matrix();
            matrix5.postSkew(BitmapDescriptorFactory.HUE_RED, (float) Math.tan(fFloatValue5));
            return matrix5;
        }
        if (!str.startsWith("rotate(")) {
            return null;
        }
        NumberParse numbers6 = parseNumbers(str.substring(7));
        if (numbers6.numbers.size() <= 0) {
            return null;
        }
        float fFloatValue6 = ((Float) numbers6.numbers.get(0)).floatValue();
        if (numbers6.numbers.size() > 2) {
            float fFloatValue7 = ((Float) numbers6.numbers.get(1)).floatValue();
            fFloatValue = ((Float) numbers6.numbers.get(2)).floatValue();
            f = fFloatValue7;
        } else {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        Matrix matrix6 = new Matrix();
        matrix6.postTranslate(f, fFloatValue);
        matrix6.postRotate(fFloatValue6);
        matrix6.postTranslate(-f, -fFloatValue);
        return matrix6;
    }
}

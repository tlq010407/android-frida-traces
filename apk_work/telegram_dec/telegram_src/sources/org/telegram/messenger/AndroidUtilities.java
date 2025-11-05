package org.telegram.messenger;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.app.PictureInPictureParams;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentUris;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.os.Vibrator;
import android.provider.CallLog;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.provider.Settings;
import android.system.OsConstants;
import android.telephony.TelephonyManager;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.StateSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.view.inspector.WindowInspector;
import android.webkit.MimeTypeMap;
import android.widget.EdgeEffect;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.widget.NestedScrollView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.ExoPlayerImpl$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.exoplayer2.analytics.MediaMetricsListener$$ExternalSyntheticApiModelOutline52;
import com.google.android.exoplayer2.analytics.MediaMetricsListener$$ExternalSyntheticApiModelOutline53;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.tasks.OnSuccessListener;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.nio.ByteBuffer;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.CustomHtml;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestTimeDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextDetailSettingsCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.ChatBackgroundDrawable;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.Components.HideViewAfterAnimation;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.PickerBottomLayout;
import org.telegram.ui.Components.PipRoundVideoView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.UndoView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.PeerStoriesView;
import org.telegram.ui.Stories.StoryMediaAreasView;
import org.telegram.ui.ThemePreviewActivity;
import org.telegram.ui.WallpapersListActivity;
import org.webrtc.MediaStreamTrack;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class AndroidUtilities {
    public static Pattern BAD_CHARS_MESSAGE_LONG_PATTERN = null;
    public static Pattern BAD_CHARS_MESSAGE_PATTERN = null;
    public static Pattern BAD_CHARS_PATTERN = null;
    public static final int DARK_STATUS_BAR_OVERLAY = 855638016;
    public static final int FLAG_TAG_ALL = 11;
    public static final int FLAG_TAG_BOLD = 2;
    public static final int FLAG_TAG_BR = 1;
    public static final int FLAG_TAG_COLOR = 4;
    public static final int FLAG_TAG_URL = 8;
    public static final int LIGHT_STATUS_BAR_OVERLAY = 251658240;
    public static Pattern LONG_BAD_CHARS_PATTERN = null;
    public static Pattern REMOVE_MULTIPLE_DIACRITICS = null;
    public static final int REPLACING_TAG_TYPE_BOLD = 1;
    public static final int REPLACING_TAG_TYPE_LINK = 0;
    public static final int REPLACING_TAG_TYPE_LINKBOLD = 2;
    public static final int REPLACING_TAG_TYPE_LINK_NBSP = 3;
    public static final int REPLACING_TAG_TYPE_UNDERLINE = 4;
    public static final String STICKERS_PLACEHOLDER_PACK_NAME = "tg_placeholders_android";
    public static final String STICKERS_PLACEHOLDER_PACK_NAME_2 = "tg_superplaceholders_android_2";
    public static final String TYPEFACE_COURIER_NEW_BOLD = "fonts/courier_new_bold.ttf";
    public static final String TYPEFACE_MERRIWEATHER_BOLD = "fonts/mw_bold.ttf";
    public static final String TYPEFACE_ROBOTO_MEDIUM = "fonts/rmedium.ttf";
    public static final String TYPEFACE_ROBOTO_MEDIUM_ITALIC = "fonts/rmediumitalic.ttf";
    public static final String TYPEFACE_ROBOTO_MONO = "fonts/rmono.ttf";
    public static Pattern WEB_URL;
    private static AccessibilityManager accessibilityManager;
    private static CallReceiver callReceiver;
    private static char[] characters;
    private static HashSet<Character> charactersMap;
    private static int[] documentIcons;
    private static int[] documentMediaIcons;
    public static boolean firstConfigurationWas;
    private static SimpleDateFormat generatingVideoPathFormat;
    private static boolean hasCallPermissions;
    public static boolean incorrectDisplaySizeFix;
    private static Boolean isHonor;
    public static boolean isInMultiwindow;
    public static int leftBaseline;
    private static Pattern linksPattern;
    private static Field mAttachInfoField;
    private static Field mStableInsetsField;
    public static boolean makingGlobalBlurBitmap;
    public static Typeface mediumTypeface;
    private static HashMap<Window, ValueAnimator> navigationBarColorAnimators;
    public static final String[] numbersSignatureArray;
    public static int roundMessageInset;
    public static int roundMessageSize;
    public static int roundPlayingMessageSize;
    public static int roundSidePlayingMessageSize;
    public static final Linkify.MatchFilter sUrlMatchFilter;
    private static final float[] tempFloats;
    private static final float[] tempFloats2;
    public static float touchSlop;
    private static Runnable unregisterRunnable;
    private static Pattern uriParse;
    public static boolean usingHardwareInput;
    private static Vibrator vibrator;
    public static ThreadLocal<byte[]> readBufferLocal = new ThreadLocal<>();
    public static ThreadLocal<byte[]> bufferLocal = new ThreadLocal<>();
    private static final Hashtable<String, Typeface> typefaceCache = new Hashtable<>();
    private static int prevOrientation = -10;
    private static boolean waitingForSms = false;
    private static boolean waitingForCall = false;
    private static final Object smsLock = new Object();
    private static final Object callLock = new Object();
    public static int statusBarHeight = 0;
    public static int navigationBarHeight = 0;
    public static float density = 1.0f;
    public static Point displaySize = new Point();
    public static float screenRefreshRate = 60.0f;
    public static float screenMaxRefreshRate = 60.0f;
    public static float screenRefreshTime = 16.666666f;
    public static Integer photoSize = null;
    public static Integer highQualityPhotoSize = null;
    public static DisplayMetrics displayMetrics = new DisplayMetrics();
    public static DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
    public static AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
    public static OvershootInterpolator overshootInterpolator = new OvershootInterpolator();
    private static Boolean isTablet = null;
    private static Boolean wasTablet = null;
    private static Boolean isSmallScreen = null;
    private static int adjustOwnerClassGuid = 0;
    private static int altFocusableClassGuid = 0;
    public static final RectF rectTmp = new RectF();
    public static final Rect rectTmp2 = new Rect();
    public static final int[] pointTmp2 = new int[2];
    public static Pattern REMOVE_RTL = null;
    private static Pattern singleTagPatter = null;

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public interface IntColorCallback {
        void run(int i);
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class LinkMovementMethodMy extends LinkMovementMethod {
        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            try {
                boolean zOnTouchEvent = super.onTouchEvent(textView, spannable, motionEvent);
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    Selection.removeSelection(spannable);
                }
                return zOnTouchEvent;
            } catch (Exception e) {
                FileLog.e(e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    static class LinkSpec {
        int end;
        int start;
        String url;

        private LinkSpec() {
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    private static class VcardData {
        String name;
        ArrayList<String> phones;
        StringBuilder vcard;

        private VcardData() {
            this.phones = new ArrayList<>();
            this.vcard = new StringBuilder();
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static class VcardItem {
        public int type;
        public ArrayList<String> vcardData = new ArrayList<>();
        public String fullData = "";
        public boolean checked = true;

        public String getRawType(boolean z) {
            int iIndexOf = this.fullData.indexOf(58);
            if (iIndexOf < 0) {
                return "";
            }
            String strSubstring = this.fullData.substring(0, iIndexOf);
            if (this.type == 20) {
                String[] strArrSplit = strSubstring.substring(2).split(";");
                return z ? strArrSplit[0] : strArrSplit.length > 1 ? strArrSplit[strArrSplit.length - 1] : "";
            }
            String[] strArrSplit2 = strSubstring.split(";");
            for (int i = 0; i < strArrSplit2.length; i++) {
                if (strArrSplit2[i].indexOf(61) < 0) {
                    strSubstring = strArrSplit2[i];
                }
            }
            return strSubstring;
        }

        public String[] getRawValue() {
            byte[] bArrDecodeQuotedPrintable;
            int iIndexOf = this.fullData.indexOf(58);
            if (iIndexOf < 0) {
                return new String[0];
            }
            String strSubstring = this.fullData.substring(0, iIndexOf);
            String strSubstring2 = this.fullData.substring(iIndexOf + 1);
            String str = null;
            String str2 = "UTF-8";
            for (String str3 : strSubstring.split(";")) {
                String[] strArrSplit = str3.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (strArrSplit.length == 2) {
                    if (strArrSplit[0].equals("CHARSET")) {
                        str2 = strArrSplit[1];
                    } else if (strArrSplit[0].equals("ENCODING")) {
                        str = strArrSplit[1];
                    }
                }
            }
            String[] strArrSplit2 = strSubstring2.split(";");
            for (int i = 0; i < strArrSplit2.length; i++) {
                if (!TextUtils.isEmpty(strArrSplit2[i]) && str != null && str.equalsIgnoreCase("QUOTED-PRINTABLE") && (bArrDecodeQuotedPrintable = AndroidUtilities.decodeQuotedPrintable(AndroidUtilities.getStringBytes(strArrSplit2[i]))) != null && bArrDecodeQuotedPrintable.length != 0) {
                    try {
                        strArrSplit2[i] = new String(bArrDecodeQuotedPrintable, str2);
                    } catch (Exception unused) {
                    }
                }
            }
            return strArrSplit2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0096  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public String getType() {
            int i;
            int i2 = this.type;
            char c = 4;
            if (i2 == 4) {
                return LocaleController.getString(R.string.ContactNote);
            }
            if (i2 == 3) {
                return LocaleController.getString(R.string.ContactUrl);
            }
            if (i2 == 5) {
                return LocaleController.getString(R.string.ContactBirthday);
            }
            if (i2 == 6) {
                return "ORG".equalsIgnoreCase(getRawType(true)) ? LocaleController.getString(R.string.ContactJob) : LocaleController.getString(R.string.ContactJobTitle);
            }
            int iIndexOf = this.fullData.indexOf(58);
            if (iIndexOf < 0) {
                return "";
            }
            String strSubstring = this.fullData.substring(0, iIndexOf);
            if (this.type == 20) {
                strSubstring = strSubstring.substring(2).split(";")[0];
            } else {
                String[] strArrSplit = strSubstring.split(";");
                for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                    if (strArrSplit[i3].indexOf(61) < 0) {
                        strSubstring = strArrSplit[i3];
                    }
                }
                if (strSubstring.startsWith("X-")) {
                    strSubstring = strSubstring.substring(2);
                }
                strSubstring.hashCode();
                switch (strSubstring.hashCode()) {
                    case -2015525726:
                        if (strSubstring.equals("MOBILE")) {
                            c = 0;
                            break;
                        } else {
                            c = 65535;
                            break;
                        }
                    case 2064738:
                        if (strSubstring.equals("CELL")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 2223327:
                        if (strSubstring.equals("HOME")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 2464291:
                        if (strSubstring.equals("PREF")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 2670353:
                        if (!strSubstring.equals("WORK")) {
                        }
                        break;
                    case 75532016:
                        if (strSubstring.equals("OTHER")) {
                            c = 5;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                        i = R.string.PhoneMobile;
                        break;
                    case 2:
                        i = R.string.PhoneHome;
                        break;
                    case 3:
                        i = R.string.PhoneMain;
                        break;
                    case 4:
                        i = R.string.PhoneWork;
                        break;
                    case 5:
                        i = R.string.PhoneOther;
                        break;
                }
                strSubstring = LocaleController.getString(i);
            }
            return strSubstring.substring(0, 1).toUpperCase() + strSubstring.substring(1).toLowerCase();
        }

        public String getValue(boolean z) {
            byte[] bArrDecodeQuotedPrintable;
            StringBuilder sb = new StringBuilder();
            int iIndexOf = this.fullData.indexOf(58);
            if (iIndexOf < 0) {
                return "";
            }
            if (sb.length() > 0) {
                sb.append(", ");
            }
            String strSubstring = this.fullData.substring(0, iIndexOf);
            String strSubstring2 = this.fullData.substring(iIndexOf + 1);
            String str = null;
            String str2 = "UTF-8";
            for (String str3 : strSubstring.split(";")) {
                String[] strArrSplit = str3.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (strArrSplit.length == 2) {
                    if (strArrSplit[0].equals("CHARSET")) {
                        str2 = strArrSplit[1];
                    } else if (strArrSplit[0].equals("ENCODING")) {
                        str = strArrSplit[1];
                    }
                }
            }
            String[] strArrSplit2 = strSubstring2.split(";");
            boolean z2 = false;
            for (int i = 0; i < strArrSplit2.length; i++) {
                if (!TextUtils.isEmpty(strArrSplit2[i])) {
                    if (str != null && str.equalsIgnoreCase("QUOTED-PRINTABLE") && (bArrDecodeQuotedPrintable = AndroidUtilities.decodeQuotedPrintable(AndroidUtilities.getStringBytes(strArrSplit2[i]))) != null && bArrDecodeQuotedPrintable.length != 0) {
                        try {
                            strArrSplit2[i] = new String(bArrDecodeQuotedPrintable, str2);
                        } catch (Exception unused) {
                        }
                    }
                    if (z2 && sb.length() > 0) {
                        sb.append(" ");
                    }
                    sb.append(strArrSplit2[i]);
                    if (!z2) {
                        z2 = strArrSplit2[i].length() > 0;
                    }
                }
            }
            if (z) {
                int i2 = this.type;
                if (i2 == 0) {
                    return PhoneFormat.getInstance().format(sb.toString());
                }
                if (i2 == 5) {
                    String[] strArrSplit3 = sb.toString().split("T");
                    if (strArrSplit3.length > 0) {
                        String[] strArrSplit4 = strArrSplit3[0].split("-");
                        if (strArrSplit4.length == 3) {
                            Calendar calendar = Calendar.getInstance();
                            calendar.set(1, Utilities.parseInt((CharSequence) strArrSplit4[0]).intValue());
                            calendar.set(2, Utilities.parseInt((CharSequence) strArrSplit4[1]).intValue() - 1);
                            calendar.set(5, Utilities.parseInt((CharSequence) strArrSplit4[2]).intValue());
                            return LocaleController.getInstance().getFormatterYearMax().format(calendar.getTime());
                        }
                    }
                }
            }
            return sb.toString();
        }
    }

    static {
        WEB_URL = null;
        BAD_CHARS_PATTERN = null;
        LONG_BAD_CHARS_PATTERN = null;
        BAD_CHARS_MESSAGE_PATTERN = null;
        BAD_CHARS_MESSAGE_LONG_PATTERN = null;
        REMOVE_MULTIPLE_DIACRITICS = null;
        try {
            BAD_CHARS_PATTERN = Pattern.compile("[─-◿]");
            LONG_BAD_CHARS_PATTERN = Pattern.compile("[一-\u9fff]");
            BAD_CHARS_MESSAGE_LONG_PATTERN = Pattern.compile("[̀-ͯ\u2066-\u2067]");
            BAD_CHARS_MESSAGE_PATTERN = Pattern.compile("[\u2066-\u2067]+");
            REMOVE_MULTIPLE_DIACRITICS = Pattern.compile("([\\u0300-\\u036f]{1,2})[\\u0300-\\u036f]+");
            WEB_URL = Pattern.compile("((?:(http|https|Http|Https|ton|tg|tonsite):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:" + Pattern.compile("(([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef]([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef]){0,1}\\.)+[a-zA-Z -\ud7ff豈-\ufdcfﷰ-\uffef]{2,63}|" + Pattern.compile("((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))") + ")") + ")(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
        } catch (Exception e) {
            FileLog.e(e);
        }
        leftBaseline = isTablet() ? 80 : 72;
        checkDisplaySize(ApplicationLoader.applicationContext, null);
        documentIcons = new int[]{R.drawable.media_doc_blue, R.drawable.media_doc_green, R.drawable.media_doc_red, R.drawable.media_doc_yellow};
        documentMediaIcons = new int[]{R.drawable.media_doc_blue_b, R.drawable.media_doc_green_b, R.drawable.media_doc_red_b, R.drawable.media_doc_yellow_b};
        sUrlMatchFilter = new Linkify.MatchFilter() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda50
            @Override // android.text.util.Linkify.MatchFilter
            public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
                return AndroidUtilities.lambda$static$6(charSequence, i, i2);
            }
        };
        hasCallPermissions = Build.VERSION.SDK_INT >= 23;
        numbersSignatureArray = new String[]{"", "K", "M", "B", "T", "P"};
        tempFloats = new float[9];
        tempFloats2 = new float[9];
        characters = new char[]{160, ' ', '!', '\"', '#', '%', '&', '\'', '(', ')', '*', ',', '-', '.', '/', ':', ';', '?', '@', '[', '\\', ']', '_', '{', '}', 161, 167, 171, 182, 183, 187, 191, 894, 903, 1370, 1371, 1372, 1373, 1374, 1375, 1417, 1418, 1470, 1472, 1475, 1478, 1523, 1524, 1545, 1546, 1548, 1549, 1563, 1566, 1567, 1642, 1643, 1644, 1645, 1748, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 2039, 2040, 2041, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2142, 2404, 2405, 2416, 2557, 2678, 2800, 3191, 3204, 3572, 3663, 3674, 3675, 3844, 3845, 3846, 3847, 3848, 3849, 3850, 3851, 3852, 3853, 3854, 3855, 3856, 3857, 3858, 3860, 3898, 3899, 3900, 3901, 3973, 4048, 4049, 4050, 4051, 4052, 4057, 4058, 4170, 4171, 4172, 4173, 4174, 4175, 4347, 4960, 4961, 4962, 4963, 4964, 4965, 4966, 4967, 4968, 5120, 5742, 5787, 5788, 5867, 5868, 5869, 5941, 5942, 6100, 6101, 6102, 6104, 6105, 6106, 6144, 6145, 6146, 6147, 6148, 6149, 6150, 6151, 6152, 6153, 6154, 6468, 6469, 6686, 6687, 6816, 6817, 6818, 6819, 6820, 6821, 6822, 6824, 6825, 6826, 6827, 6828, 6829, 7002, 7003, 7004, 7005, 7006, 7007, 7008, 7164, 7165, 7166, 7167, 7227, 7228, 7229, 7230, 7231, 7294, 7295, 7360, 7361, 7362, 7363, 7364, 7365, 7366, 7367, 7379, 8208, 8209, 8210, 8211, 8212, 8213, 8214, 8215, 8216, 8217, 8218, 8219, 8220, 8221, 8222, 8223, 8224, 8225, 8226, 8227, 8228, 8229, 8230, 8231, 8240, 8241, 8242, 8243, 8244, 8245, 8246, 8247, 8248, 8249, 8250, 8251, 8252, 8253, 8254, 8255, 8256, 8257, 8258, 8259, 8261, 8262, 8263, 8264, 8265, 8266, 8267, 8268, 8269, 8270, 8271, 8272, 8273, 8275, 8276, 8277, 8278, 8279, 8280, 8281, 8282, 8283, 8284, 8285, 8286, 8317, 8318, 8333, 8334, 8968, 8969, 8970, 8971, 9001, 9002, 10088, 10089, 10090, 10091, 10092, 10093, 10094, 10095, 10096, 10097, 10098, 10099, 10100, 10101, 10181, 10182, 10214, 10215, 10216, 10217, 10218, 10219, 10220, 10221, 10222, 10223, 10627, 10628, 10629, 10630, 10631, 10632, 10633, 10634, 10635, 10636, 10637, 10638, 10639, 10640, 10641, 10642, 10643, 10644, 10645, 10646, 10647, 10648, 10712, 10713, 10714, 10715, 10748, 10749, 11513, 11514, 11515, 11516, 11518, 11519, 11632, 11776, 11777, 11778, 11779, 11780, 11781, 11782, 11783, 11784, 11785, 11786, 11787, 11788, 11789, 11790, 11791, 11792, 11793, 11794, 11795, 11796, 11797, 11798, 11799, 11800, 11801, 11802, 11803, 11804, 11805, 11806, 11807, 11808, 11809, 11810, 11811, 11812, 11813, 11814, 11815, 11816, 11817, 11818, 11819, 11820, 11821, 11822, 11824, 11825, 11826, 11827, 11828, 11829, 11830, 11831, 11832, 11833, 11834, 11835, 11836, 11837, 11838, 11839, 11840, 11841, 11842, 11843, 11844, 11845, 11846, 11847, 11848, 11849, 11850, 11851, 11852, 11853, 11854, 11855, 12289, 12290, 12291, 12296, 12297, 12298, 12299, 12300, 12301, 12302, 12303, 12304, 12305, 12308, 12309, 12310, 12311, 12312, 12313, 12314, 12315, 12316, 12317, 12318, 12319, 12336, 12349, 12448, 12539, 42238, 42239, 42509, 42510, 42511, 42611, 42622, 42738, 42739, 42740, 42741, 42742, 42743, 43124, 43125, 43126, 43127, 43214, 43215, 43256, 43257, 43258, 43260, 43310, 43311, 43359, 43457, 43458, 43459, 43460, 43461, 43462, 43463, 43464, 43465, 43466, 43467, 43468, 43469, 43486, 43487, 43612, 43613, 43614, 43615, 43742, 43743, 43760, 43761, 44011, 64830, 64831, 65040, 65041, 65042, 65043, 65044, 65045, 65046, 65047, 65048, 65049, 65072, 65073, 65074, 65075, 65076, 65077, 65078, 65079, 65080, 65081, 65082, 65083, 65084, 65085, 65086, 65087, 65088, 65089, 65090, 65091, 65092, 65093, 65094, 65095, 65096, 65097, 65098, 65099, 65100, 65101, 65102, 65103, 65104, 65105, 65106, 65108, 65109, 65110, 65111, 65112, 65113, 65114, 65115, 65116, 65117, 65118, 65119, 65120, 65121, 65123, 65128, 65130, 65131, 65281, 65282, 65283, 65285, 65286, 65287, 65288, 65289, 65290, 65292, 65293, 65294, 65295, 65306, 65307, 65311, 65312, 65339, 65340, 65341, 65343, 65371, 65373, 65375, 65376, 65377, 65378, 65379, 65380, 65381};
    }

    public static int HSBtoRGB(float f, float f2, float f3) {
        int i;
        int i2;
        int i3;
        float f4;
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            i = (int) ((f3 * 255.0f) + 0.5f);
            i2 = i;
            i3 = i2;
        } else {
            float fFloor = (f - ((float) Math.floor(f))) * 6.0f;
            float fFloor2 = fFloor - ((float) Math.floor(fFloor));
            float f5 = (1.0f - f2) * f3;
            float f6 = (1.0f - (f2 * fFloor2)) * f3;
            float f7 = (1.0f - (f2 * (1.0f - fFloor2))) * f3;
            int i4 = (int) fFloor;
            if (i4 == 0) {
                f5 = f7;
                f7 = f5;
            } else if (i4 != 1) {
                if (i4 == 2) {
                    f4 = f5;
                    f5 = f3;
                } else if (i4 == 3) {
                    f7 = f3;
                    f3 = f5;
                    f5 = f6;
                } else if (i4 == 4) {
                    f4 = f7;
                    f7 = f3;
                } else if (i4 != 5) {
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                } else {
                    f7 = f6;
                }
                f3 = f4;
            } else {
                f7 = f5;
                f5 = f3;
                f3 = f6;
            }
            i = (int) ((f3 * 255.0f) + 0.5f);
            i2 = (int) ((f5 * 255.0f) + 0.5f);
            i3 = (int) ((f7 * 255.0f) + 0.5f);
        }
        return ((i & 255) << 16) | (-16777216) | ((i2 & 255) << 8) | (i3 & 255);
    }

    public static float[] RGBtoHSB(int i, int i2, int i3) {
        int iMax = Math.max(i, i2);
        if (i3 > iMax) {
            iMax = i3;
        }
        int iMin = Math.min(i, i2);
        if (i3 < iMin) {
            iMin = i3;
        }
        float f = iMax;
        float f2 = f / 255.0f;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = iMax != 0 ? (iMax - iMin) / f : BitmapDescriptorFactory.HUE_RED;
        if (f4 != BitmapDescriptorFactory.HUE_RED) {
            float f5 = iMax - iMin;
            float f6 = (iMax - i) / f5;
            float f7 = (iMax - i2) / f5;
            float f8 = (iMax - i3) / f5;
            float f9 = (i == iMax ? f8 - f7 : i2 == iMax ? (f6 + 2.0f) - f8 : (f7 + 4.0f) - f6) / 6.0f;
            f3 = f9 < BitmapDescriptorFactory.HUE_RED ? f9 + 1.0f : f9;
        }
        return new float[]{f3, f4, f2};
    }

    @Deprecated
    public static boolean addLinks(Spannable spannable, int i) {
        return addLinks(spannable, i, false);
    }

    @Deprecated
    public static boolean addLinks(Spannable spannable, int i, boolean z) {
        return addLinks(spannable, i, z, true);
    }

    @Deprecated
    public static boolean addLinks(Spannable spannable, int i, boolean z, boolean z2) {
        if (spannable == null || containsUnsupportedCharacters(spannable.toString()) || i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            URLSpan uRLSpan = uRLSpanArr[length];
            if (!(uRLSpan instanceof URLSpanReplacement) || z2) {
                spannable.removeSpan(uRLSpan);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!z && (i & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        if ((i & 1) != 0) {
            gatherLinks(arrayList, spannable, LinkifyPort.WEB_URL, new String[]{"http://", "https://", "tg://", "tonsite://"}, sUrlMatchFilter, z);
        }
        pruneOverlaps(arrayList);
        if (arrayList.size() == 0) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LinkSpec linkSpec = (LinkSpec) arrayList.get(i2);
            URLSpan[] uRLSpanArr2 = (URLSpan[]) spannable.getSpans(linkSpec.start, linkSpec.end, URLSpan.class);
            if (uRLSpanArr2 != null && uRLSpanArr2.length > 0) {
                for (URLSpan uRLSpan2 : uRLSpanArr2) {
                    spannable.removeSpan(uRLSpan2);
                    if (!(uRLSpan2 instanceof URLSpanReplacement) || z2) {
                        spannable.removeSpan(uRLSpan2);
                    }
                }
            }
            String strReplaceAll = linkSpec.url;
            if (strReplaceAll != null) {
                strReplaceAll = strReplaceAll.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
            }
            if (!Browser.isTonsitePunycode(strReplaceAll)) {
                spannable.setSpan(new URLSpan(strReplaceAll), linkSpec.start, linkSpec.end, 33);
            }
        }
        return true;
    }

    public static boolean addLinksSafe(Spannable spannable, final int i, final boolean z, final boolean z2) {
        if (spannable == null) {
            return false;
        }
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannable);
        boolean zDoSafe = doSafe(new Utilities.Callback0Return() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.Utilities.Callback0Return
            public final Object run() {
                return AndroidUtilities.lambda$addLinksSafe$7(spannableStringBuilder, i, z, z2);
            }
        });
        if (zDoSafe) {
            for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
                spannable.removeSpan(uRLSpan);
            }
            URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class);
            for (int i2 = 0; i2 < uRLSpanArr.length; i2++) {
                URLSpan uRLSpan2 = uRLSpanArr[i2];
                spannable.setSpan(uRLSpan2, spannableStringBuilder.getSpanStart(uRLSpan2), spannableStringBuilder.getSpanEnd(uRLSpanArr[i2]), 33);
            }
        }
        return zDoSafe;
    }

    public static void addMediaToGallery(File file) {
        Uri uriFromFile = Uri.fromFile(file);
        if (uriFromFile == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(uriFromFile);
            ApplicationLoader.applicationContext.sendBroadcast(intent);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void addMediaToGallery(String str) {
        if (str == null) {
            return;
        }
        addMediaToGallery(new File(str));
    }

    public static boolean addToClipboard(CharSequence charSequence) {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard");
            if (charSequence instanceof Spanned) {
                clipboardManager.setPrimaryClip(ClipData.newHtmlText("label", charSequence, CustomHtml.toHtml((Spanned) charSequence)));
                return true;
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("label", charSequence));
            return true;
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    public static void adjustBrightnessColorMatrix(ColorMatrix colorMatrix, float f) {
        if (colorMatrix == null) {
            return;
        }
        float f2 = f * 255.0f;
        colorMatrix.postConcat(new ColorMatrix(new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED}));
    }

    public static void adjustHueColorMatrix(ColorMatrix colorMatrix, float f) {
        float fCleanValue = (cleanValue(f, 180.0f) / 180.0f) * 3.1415927f;
        if (fCleanValue == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        double d = fCleanValue;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float f2 = (fCos * (-0.715f)) + 0.715f;
        float f3 = ((-0.072f) * fCos) + 0.072f;
        float f4 = ((-0.213f) * fCos) + 0.213f;
        colorMatrix.postConcat(new ColorMatrix(new float[]{(0.787f * fCos) + 0.213f + (fSin * (-0.213f)), ((-0.715f) * fSin) + f2, (fSin * 0.928f) + f3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (0.143f * fSin) + f4, (0.28500003f * fCos) + 0.715f + (0.14f * fSin), f3 + ((-0.283f) * fSin), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4 + ((-0.787f) * fSin), f2 + (0.715f * fSin), (fCos * 0.928f) + 0.072f + (fSin * 0.072f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}));
    }

    public static void adjustSaturationColorMatrix(ColorMatrix colorMatrix, float f) {
        if (colorMatrix == null) {
            return;
        }
        float f2 = f + 1.0f;
        float f3 = 1.0f - f2;
        float f4 = 0.3086f * f3;
        float f5 = 0.6094f * f3;
        float f6 = f3 * 0.082f;
        colorMatrix.postConcat(new ColorMatrix(new float[]{f4 + f2, f5, f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f5 + f2, f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f5, f2 + f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED}));
    }

    public static List<View> allGlobalViews() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                return WindowInspector.getGlobalWindowViews();
            }
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Object objInvoke = cls.getMethod("getInstance", null).invoke(null, null);
            Method method = cls.getMethod("getViewRootNames", null);
            Method method2 = cls.getMethod("getRootView", String.class);
            String[] strArr = (String[]) method.invoke(objInvoke, null);
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                arrayList.add((View) method2.invoke(objInvoke, str));
            }
            return arrayList;
        } catch (Exception e) {
            FileLog.e("allGlobalViews()", e);
            return null;
        }
    }

    public static boolean allowScreenCapture() {
        return SharedConfig.passcodeHash.length() == 0 || SharedConfig.allowScreenCapture;
    }

    public static void appCenterLog(Throwable th) {
        ApplicationLoader.appCenterLog(th);
    }

    public static void applySpring(Animator animator, double d, double d2) {
        applySpring(animator, d, d2, 1.0d, 0.0d);
    }

    public static void applySpring(Animator animator, double d, double d2, double d3) {
        applySpring(animator, d, d2, d3, 0.0d);
    }

    public static void applySpring(Animator animator, double d, double d2, double d3, double d4) {
        final double d5;
        final double d6;
        final double dSqrt = Math.sqrt(d / d3);
        final double dSqrt2 = d2 / (Math.sqrt(d * d3) * 2.0d);
        if (dSqrt2 < 1.0d) {
            double dSqrt3 = Math.sqrt(1.0d - (dSqrt2 * dSqrt2)) * dSqrt;
            d6 = dSqrt3;
            d5 = ((dSqrt2 * dSqrt) + (-d4)) / dSqrt3;
        } else {
            d5 = (-d4) + dSqrt;
            d6 = 0.0d;
        }
        animator.setDuration((long) ((Math.log(0.0025d) / ((-dSqrt2) * dSqrt)) * 1000.0d));
        final double d7 = 1.0d;
        animator.setInterpolator(new Interpolator() { // from class: org.telegram.messenger.AndroidUtilities.14
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                double dExp;
                double dExp2;
                double d8 = dSqrt2;
                if (d8 < 1.0d) {
                    double d9 = -f;
                    Double.isNaN(d9);
                    dExp = Math.exp(d9 * d8 * dSqrt);
                    double d10 = d7;
                    double d11 = d6;
                    double d12 = f;
                    Double.isNaN(d12);
                    double dCos = d10 * Math.cos(d11 * d12);
                    double d13 = d5;
                    double d14 = d6;
                    Double.isNaN(d12);
                    dExp2 = dCos + (d13 * Math.sin(d14 * d12));
                } else {
                    double d15 = d7;
                    double d16 = d5;
                    double d17 = f;
                    Double.isNaN(d17);
                    dExp = d15 + (d16 * d17);
                    double d18 = -f;
                    double d19 = dSqrt;
                    Double.isNaN(d18);
                    dExp2 = Math.exp(d18 * d19);
                }
                return (float) (1.0d - (dExp * dExp2));
            }
        });
    }

    public static void applySpring(Animator animator, float f, float f2, float f3, long j) {
        double d = f2;
        double dSqrt = Math.sqrt(f * f3) * 2.0d;
        Double.isNaN(d);
        final double d2 = d / dSqrt;
        final double dSqrt2 = Math.sqrt(f / f3);
        animator.setDuration(j);
        animator.setInterpolator(new Interpolator() { // from class: org.telegram.messenger.AndroidUtilities.15
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f4) {
                double dExp;
                double d3 = d2;
                if (d3 < 1.0d) {
                    double dSqrt3 = dSqrt2 * Math.sqrt(1.0d - (d3 * d3));
                    double d4 = (-d2) * dSqrt2;
                    double d5 = f4;
                    Double.isNaN(d5);
                    double dExp2 = Math.exp(d4 * d5);
                    Double.isNaN(d5);
                    double d6 = d5 * dSqrt3;
                    dExp = 1.0d - (dExp2 * (Math.cos(d6) + (((d2 * dSqrt2) / dSqrt3) * Math.sin(d6))));
                } else {
                    double d7 = (-d3) * dSqrt2;
                    double d8 = f4;
                    Double.isNaN(d8);
                    double d9 = d7 * d8;
                    dExp = 1.0d - ((d9 + 1.0d) * Math.exp(d9));
                }
                return (float) dExp;
            }
        });
    }

    public static Typeface bold() {
        if (mediumTypeface == null) {
            mediumTypeface = (!SharedConfig.useSystemBoldFont || Build.VERSION.SDK_INT < 28) ? getTypeface(TYPEFACE_ROBOTO_MEDIUM) : Typeface.create(null, 500, false);
        }
        return mediumTypeface;
    }

    public static byte[] calcAuthKeyHash(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(Utilities.computeSHA1(bArr), 0, bArr2, 0, 16);
        return bArr2;
    }

    public static int calcBitmapColor(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmap, 1, 1, true);
            if (bitmapCreateScaledBitmap != null) {
                int pixel = bitmapCreateScaledBitmap.getPixel(0, 0);
                if (bitmap != bitmapCreateScaledBitmap) {
                    bitmapCreateScaledBitmap.recycle();
                }
                return pixel;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        return 0;
    }

    public static int[] calcDrawableColor(Drawable drawable) {
        int averageColor;
        if (drawable instanceof ChatBackgroundDrawable) {
            return calcDrawableColor(((ChatBackgroundDrawable) drawable).getDrawable(true));
        }
        int[] iArr = new int[4];
        try {
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (drawable instanceof BitmapDrawable) {
            averageColor = calcBitmapColor(((BitmapDrawable) drawable).getBitmap());
        } else if (drawable instanceof ColorDrawable) {
            averageColor = ((ColorDrawable) drawable).getColor();
        } else {
            if (drawable instanceof BackgroundGradientDrawable) {
                int[] colorsList = ((BackgroundGradientDrawable) drawable).getColorsList();
                if (colorsList != null) {
                    if (colorsList.length > 1) {
                        averageColor = getAverageColor(colorsList[0], colorsList[1]);
                    } else if (colorsList.length > 0) {
                        averageColor = colorsList[0];
                    }
                }
            } else if (drawable instanceof MotionBackgroundDrawable) {
                int iArgb = Color.argb(45, 0, 0, 0);
                iArr[2] = iArgb;
                iArr[0] = iArgb;
                int iArgb2 = Color.argb(61, 0, 0, 0);
                iArr[3] = iArgb2;
                iArr[1] = iArgb2;
                return iArr;
            }
            averageColor = -16777216;
        }
        double[] dArrRgbToHsv = rgbToHsv((averageColor >> 16) & 255, (averageColor >> 8) & 255, averageColor & 255);
        double d = dArrRgbToHsv[1];
        dArrRgbToHsv[1] = Math.min(1.0d, 0.05d + d + ((1.0d - d) * 0.1d));
        int[] iArrHsvToRgb = hsvToRgb(dArrRgbToHsv[0], dArrRgbToHsv[1], Math.max(0.0d, dArrRgbToHsv[2] * 0.65d));
        iArr[0] = Color.argb(102, iArrHsvToRgb[0], iArrHsvToRgb[1], iArrHsvToRgb[2]);
        iArr[1] = Color.argb(136, iArrHsvToRgb[0], iArrHsvToRgb[1], iArrHsvToRgb[2]);
        int[] iArrHsvToRgb2 = hsvToRgb(dArrRgbToHsv[0], dArrRgbToHsv[1], Math.max(0.0d, dArrRgbToHsv[2] * 0.72d));
        iArr[2] = Color.argb(102, iArrHsvToRgb2[0], iArrHsvToRgb2[1], iArrHsvToRgb2[2]);
        iArr[3] = Color.argb(136, iArrHsvToRgb2[0], iArrHsvToRgb2[1], iArrHsvToRgb2[2]);
        return iArr;
    }

    public static void cancelRunOnUIThread(Runnable runnable) {
        if (ApplicationLoader.applicationHandler == null) {
            return;
        }
        ApplicationLoader.applicationHandler.removeCallbacks(runnable);
    }

    public static float cascade(float f, float f2, float f3, float f4) {
        if (f3 <= BitmapDescriptorFactory.HUE_RED) {
            return f;
        }
        float fMin = (1.0f / f3) * Math.min(f4, f3);
        return MathUtils.clamp((f - ((f2 / f3) * (1.0f - fMin))) / fMin, BitmapDescriptorFactory.HUE_RED, 1.0f);
    }

    public static boolean charSequenceContains(CharSequence charSequence, CharSequence charSequence2) {
        return charSequenceIndexOf(charSequence, charSequence2) != -1;
    }

    public static int charSequenceIndexOf(CharSequence charSequence, CharSequence charSequence2) {
        return charSequenceIndexOf(charSequence, charSequence2, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int charSequenceIndexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        while (i < charSequence.length() - charSequence2.length()) {
            for (int i2 = 0; i2 < charSequence2.length(); i2++) {
                if (charSequence2.charAt(i2) != charSequence.charAt(i + i2)) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    public static void checkAndroidTheme(Context context, boolean z) {
        if (context == null) {
            return;
        }
        context.setTheme((Theme.isCurrentThemeDark() && z) ? R.style.Theme_TMessages_Dark : R.style.Theme_TMessages);
    }

    public static void checkDisplaySize(Context context, Configuration configuration) {
        int iMin;
        int iDp;
        Display defaultDisplay;
        float[] supportedRefreshRates;
        try {
            float f = density;
            density = context.getResources().getDisplayMetrics().density;
            if (firstConfigurationWas && Math.abs(f - r2) > 0.001d) {
                Theme.reloadAllResources(context);
            }
            firstConfigurationWas = true;
            if (configuration == null) {
                configuration = context.getResources().getConfiguration();
            }
            usingHardwareInput = configuration.keyboard != 1 && configuration.hardKeyboardHidden == 1;
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
                defaultDisplay.getMetrics(displayMetrics);
                defaultDisplay.getSize(displaySize);
                float refreshRate = defaultDisplay.getRefreshRate();
                screenRefreshRate = refreshRate;
                screenMaxRefreshRate = refreshRate;
                if (Build.VERSION.SDK_INT >= 21 && (supportedRefreshRates = defaultDisplay.getSupportedRefreshRates()) != null) {
                    for (float f2 : supportedRefreshRates) {
                        if (f2 > screenMaxRefreshRate) {
                            screenMaxRefreshRate = f2;
                        }
                    }
                }
                screenRefreshTime = 1000.0f / screenRefreshRate;
            }
            if (configuration.screenWidthDp != 0) {
                int iCeil = (int) Math.ceil(r2 * density);
                if (Math.abs(displaySize.x - iCeil) > 3) {
                    displaySize.x = iCeil;
                }
            }
            if (configuration.screenHeightDp != 0) {
                int iCeil2 = (int) Math.ceil(r2 * density);
                if (Math.abs(displaySize.y - iCeil2) > 3) {
                    displaySize.y = iCeil2;
                }
            }
            if (roundMessageSize == 0) {
                if (isTablet()) {
                    roundMessageSize = (int) (getMinTabletSide() * 0.6f);
                    roundPlayingMessageSize = getMinTabletSide() - dp(28.0f);
                    iMin = getMinTabletSide();
                    iDp = dp(92.0f);
                } else {
                    Point point = displaySize;
                    roundMessageSize = (int) (Math.min(point.x, point.y) * 0.6f);
                    Point point2 = displaySize;
                    roundPlayingMessageSize = Math.min(point2.x, point2.y) - dp(28.0f);
                    iMin = Math.min(displaySize.x - dp(64.0f), displaySize.y);
                    iDp = dp(28.0f);
                }
                roundSidePlayingMessageSize = iMin - iDp;
                roundMessageInset = dp(2.0f);
            }
            fillStatusBarHeight(context, true);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.e("density = " + density + " display size = " + displaySize.x + " " + displaySize.y + " " + displayMetrics.xdpi + "x" + displayMetrics.ydpi + ", screen layout: " + configuration.screenLayout + ", statusbar height: " + statusBarHeight + ", navbar height: " + navigationBarHeight);
            }
            touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            isSmallScreen = null;
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static boolean checkHostForPunycode(String str) {
        boolean z;
        boolean z2;
        if (str == null) {
            return false;
        }
        try {
            int length = str.length();
            z = false;
            z2 = false;
            for (int i = 0; i < length; i++) {
                try {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != '.' && cCharAt != '-' && cCharAt != '/' && cCharAt != '+' && (cCharAt < '0' || cCharAt > '9')) {
                        if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                            z2 = true;
                        } else {
                            z = true;
                        }
                        if (z && z2) {
                            break;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    FileLog.e(e);
                    return !z ? false : false;
                }
            }
        } catch (Exception e2) {
            e = e2;
            z = false;
            z2 = false;
        }
        if (!z && z2) {
            return true;
        }
    }

    public static boolean checkInlinePermissions(Context context) {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
    }

    public static boolean checkPhonePattern(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !str.equals("*")) {
            String[] strArrSplit = str.split("\\*");
            String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(str2);
            int length = 0;
            for (String str3 : strArrSplit) {
                if (!TextUtils.isEmpty(str3)) {
                    int iIndexOf = strStripExceptNumbers.indexOf(str3, length);
                    if (iIndexOf == -1) {
                        return false;
                    }
                    length = iIndexOf + str3.length();
                }
            }
        }
        return true;
    }

    public static boolean checkPipPermissions(Context context) {
        return context.getPackageManager().hasSystemFeature("android.software.picture_in_picture") && ((AppOpsManager) context.getSystemService("appops")).checkOpNoThrow("android:picture_in_picture", Process.myUid(), context.getPackageName()) == 0;
    }

    protected static float cleanValue(float f, float f2) {
        return Math.min(f2, Math.max(-f2, f));
    }

    public static void clearDrawableAnimation(View view) {
        if (Build.VERSION.SDK_INT < 21 || view == null) {
            return;
        }
        if (view instanceof ListView) {
            Drawable selector = ((ListView) view).getSelector();
            if (selector != null) {
                selector.setState(StateSet.NOTHING);
                return;
            }
            return;
        }
        Drawable background = view.getBackground();
        if (background != null) {
            background.setState(StateSet.NOTHING);
            background.jumpToCurrentState();
        }
    }

    public static ByteBuffer cloneByteBuffer(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocate;
        try {
            byteBufferAllocate = ByteBuffer.allocate(byteBuffer.capacity());
        } catch (OutOfMemoryError unused) {
            System.gc();
            byteBufferAllocate = ByteBuffer.allocate(byteBuffer.capacity());
        }
        int iPosition = byteBuffer.position();
        byteBuffer.rewind();
        byteBufferAllocate.put(byteBuffer);
        byteBuffer.rewind();
        byteBufferAllocate.flip();
        byteBufferAllocate.position(iPosition);
        return byteBufferAllocate;
    }

    public static int compare(int i, int i2) {
        if (i == i2) {
            return 0;
        }
        return i > i2 ? 1 : -1;
    }

    public static int compare(long j, long j2) {
        if (j == j2) {
            return 0;
        }
        return j > j2 ? 1 : -1;
    }

    public static float computeDampingRatio(float f, float f2, float f3) {
        return f2 / (((float) Math.sqrt(f3 * f)) * 2.0f);
    }

    public static float computePerceivedBrightness(int i) {
        return (((Color.red(i) * 0.2126f) + (Color.green(i) * 0.7152f)) + (Color.blue(i) * 0.0722f)) / 255.0f;
    }

    public static CharSequence concat(CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return "";
        }
        int i = 0;
        if (charSequenceArr.length == 1) {
            return charSequenceArr[0];
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (charSequence instanceof Spanned) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                int length = charSequenceArr.length;
                while (i < length) {
                    CharSequence charSequence2 = charSequenceArr[i];
                    if (charSequence2 == null) {
                        charSequence2 = "null";
                    }
                    spannableStringBuilder.append(charSequence2);
                    i++;
                }
                return new SpannedString(spannableStringBuilder);
            }
        }
        StringBuilder sb = new StringBuilder();
        int length2 = charSequenceArr.length;
        while (i < length2) {
            sb.append(charSequenceArr[i]);
            i++;
        }
        return sb.toString();
    }

    private static boolean containsUnsupportedCharacters(String str) {
        if (str.contains("\u202c") || str.contains("\u202d") || str.contains("\u202e")) {
            return true;
        }
        try {
            return BAD_CHARS_PATTERN.matcher(str).find();
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean copyFile(File file, File file2) {
        if (file.equals(file2)) {
            return true;
        }
        if (!file2.exists()) {
            file2.createNewFile();
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.getChannel().transferFrom(fileInputStream.getChannel(), 0L, fileInputStream.getChannel().size());
                    fileOutputStream.close();
                    fileInputStream.close();
                    return true;
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    public static boolean copyFile(InputStream inputStream, File file) {
        return copyFile(inputStream, new FileOutputStream(file));
    }

    public static boolean copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                outputStream.close();
                return true;
            }
            Thread.yield();
            outputStream.write(bArr, 0, i);
        }
    }

    public static boolean copyFileSafe(File file, File file2) {
        try {
            return copyFile(file, file2);
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    public static void createEmptyFile(File file) {
        try {
            if (file.exists()) {
                return;
            }
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.flush();
            fileWriter.close();
        } catch (Throwable th) {
            FileLog.e(th, false);
        }
    }

    public static byte[] decodeQuotedPrintable(byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == 61) {
                try {
                    int iDigit = Character.digit((char) bArr[i + 1], 16);
                    i += 2;
                    byteArrayOutputStream.write((char) ((iDigit << 4) + Character.digit((char) bArr[i], 16)));
                } catch (Exception e) {
                    FileLog.e(e);
                    return null;
                }
            } else {
                byteArrayOutputStream.write(b);
            }
            i++;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e2) {
            FileLog.e(e2);
        }
        return byteArray;
    }

    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    public static float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    public static void doOnLayout(final View view, final Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (view == null) {
            runnable.run();
        } else {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.messenger.AndroidUtilities.8
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    view.removeOnLayoutChangeListener(this);
                    runnable.run();
                }
            });
        }
    }

    public static void doOnPreDraw(View view, final Runnable runnable) {
        final ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        final boolean[] zArr = new boolean[1];
        final ViewTreeObserver.OnPreDrawListener[] onPreDrawListenerArr = {onPreDrawListener};
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda31
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return AndroidUtilities.lambda$doOnPreDraw$24(viewTreeObserver, onPreDrawListenerArr, zArr, runnable);
            }
        };
        viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
    }

    public static boolean doSafe(Utilities.Callback0Return<Boolean> callback0Return) {
        return doSafe(callback0Return, 200);
    }

    public static boolean doSafe(final Utilities.Callback0Return<Boolean> callback0Return, int i) {
        Future futureSubmit;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        try {
            try {
                try {
                    futureSubmit = executorServiceNewSingleThreadExecutor.submit(new Callable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda44
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return AndroidUtilities.lambda$doSafe$8(callback0Return);
                        }
                    });
                } catch (Exception e) {
                    FileLog.e(e);
                    executorServiceNewSingleThreadExecutor.shutdownNow();
                    return false;
                }
            } catch (TimeoutException unused) {
                futureSubmit = null;
            }
            try {
                return ((Boolean) futureSubmit.get(i, TimeUnit.MILLISECONDS)).booleanValue();
            } catch (TimeoutException unused2) {
                if (futureSubmit != null) {
                    futureSubmit.cancel(true);
                }
                executorServiceNewSingleThreadExecutor.shutdownNow();
                return false;
            }
        } finally {
            executorServiceNewSingleThreadExecutor.shutdownNow();
        }
    }

    public static int dp(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return (int) Math.ceil(density * f);
    }

    public static int dp2(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return (int) Math.floor(density * f);
    }

    public static float dpf2(float f) {
        return f == BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : density * f;
    }

    public static int dpr(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return Math.round(density * f);
    }

    public static CharSequence ellipsizeCenterEnd(CharSequence charSequence, String str, int i, TextPaint textPaint, int i2) {
        int iIndexOf;
        StaticLayout staticLayout;
        float lineWidth;
        float f;
        CharSequence charSequenceSubSequence;
        try {
            int length = charSequence.length();
            iIndexOf = charSequence.toString().toLowerCase().indexOf(str);
            if (length > i2) {
                charSequence = charSequence.subSequence(Math.max(0, iIndexOf - (i2 / 2)), Math.min(length, (i2 / 2) + iIndexOf));
                iIndexOf -= Math.max(0, iIndexOf - (i2 / 2));
                charSequence.length();
            }
            staticLayout = new StaticLayout(charSequence, textPaint, Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            lineWidth = staticLayout.getLineWidth(0);
            f = i;
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (textPaint.measureText("...") + lineWidth < f) {
            return charSequence;
        }
        int i3 = iIndexOf + 1;
        int i4 = i3;
        while (i4 < charSequence.length() - 1 && !Character.isWhitespace(charSequence.charAt(i4))) {
            i4++;
        }
        float primaryHorizontal = staticLayout.getPrimaryHorizontal(i4);
        if (staticLayout.isRtlCharAt(i4)) {
            primaryHorizontal = lineWidth - primaryHorizontal;
        }
        if (primaryHorizontal < f) {
            return charSequence;
        }
        float fMeasureText = (primaryHorizontal - f) + (textPaint.measureText("...") * 2.0f);
        float f2 = 0.1f * f;
        float f3 = fMeasureText + f2;
        if (charSequence.length() - i4 > 20) {
            f3 += f2;
        }
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            int offsetForHorizontal = staticLayout.getOffsetForHorizontal(0, f3);
            if (offsetForHorizontal > charSequence.length() - 1) {
                offsetForHorizontal = charSequence.length() - 1;
            }
            int i5 = 0;
            while (true) {
                if (Character.isWhitespace(charSequence.charAt(offsetForHorizontal)) || i5 >= 10) {
                    break;
                }
                i5++;
                offsetForHorizontal++;
                if (offsetForHorizontal > charSequence.length() - 1) {
                    offsetForHorizontal = staticLayout.getOffsetForHorizontal(0, f3);
                    break;
                }
            }
            if (i5 >= 10) {
                charSequenceSubSequence = charSequence.subSequence(staticLayout.getOffsetForHorizontal(0, staticLayout.getPrimaryHorizontal(i3) - (f * 0.3f)), charSequence.length());
            } else {
                if (offsetForHorizontal > 0 && offsetForHorizontal < charSequence.length() - 2 && Character.isWhitespace(charSequence.charAt(offsetForHorizontal))) {
                    offsetForHorizontal++;
                }
                charSequenceSubSequence = charSequence.subSequence(offsetForHorizontal, charSequence.length());
            }
            return SpannableStringBuilder.valueOf("...").append(charSequenceSubSequence);
        }
        return charSequence;
    }

    public static MotionEvent emptyMotionEvent() {
        return MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
    }

    public static void endIncomingCall() {
        if (hasCallPermissions) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
                Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", null);
                declaredMethod.setAccessible(true);
                ExoPlayerImpl$$ExternalSyntheticThrowCCEIfNotNull0.m(declaredMethod.invoke(telephonyManager, null));
                ExoPlayerImpl$$ExternalSyntheticThrowCCEIfNotNull0.m(declaredMethod.invoke(telephonyManager, null));
                throw null;
            } catch (Throwable th) {
                FileLog.e(th);
            }
        }
    }

    public static String escape(String str) {
        return removeRTL(removeDiacritics(str));
    }

    public static void fillStatusBarHeight(Context context, boolean z) {
        if (context != null) {
            if (statusBarHeight <= 0 || z) {
                statusBarHeight = getStatusBarHeight(context);
                navigationBarHeight = getNavigationBarHeight(context);
            }
        }
    }

    public static Activity findActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return findActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static View findChildViewUnder(ViewGroup viewGroup, float f, float f2) {
        if (viewGroup == null || viewGroup.getVisibility() != 0) {
            return null;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null && childAt.getVisibility() == 0) {
                if (childAt instanceof ViewGroup) {
                    View viewFindChildViewUnder = findChildViewUnder((ViewGroup) childAt, f - childAt.getLeft(), f2 - childAt.getTop());
                    if (viewFindChildViewUnder != null) {
                        return viewFindChildViewUnder;
                    }
                } else if (f >= childAt.getX() && f <= childAt.getX() + childAt.getWidth() && f2 >= childAt.getY() && f <= childAt.getY() + childAt.getHeight()) {
                    return childAt;
                }
            }
        }
        return null;
    }

    public static boolean findClickableView(ViewGroup viewGroup, float f, float f2) {
        return findClickableView(viewGroup, f, f2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean findClickableView(ViewGroup viewGroup, float f, float f2, View view) {
        if (viewGroup == null) {
            return false;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0 && (!(childAt instanceof PeerStoriesView) || childAt == view)) {
                if (childAt instanceof StoryMediaAreasView.AreaView) {
                    StoryMediaAreasView storyMediaAreasView = (StoryMediaAreasView) viewGroup;
                    if ((storyMediaAreasView.hasSelected() && (f < dp(60.0f) || f > viewGroup.getWidth() - dp(60.0f))) || storyMediaAreasView.hasAreaAboveAt(f, f2)) {
                        Rect rect = rectTmp2;
                        childAt.getHitRect(rect);
                        if (rect.contains((int) f, (int) f2) && childAt.isClickable()) {
                            return true;
                        }
                        if ((childAt instanceof ViewGroup) && findClickableView((ViewGroup) childAt, f - childAt.getX(), f2 - childAt.getY(), view)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static void fixGoogleMapsBug() {
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("google_bug_154855417", 0);
        if (sharedPreferences.contains("fixed")) {
            return;
        }
        new File(ApplicationLoader.getFilesDirFixed(), "ZoomTables.data").delete();
        sharedPreferences.edit().putBoolean("fixed", true).apply();
    }

    public static double fixLocationCoord(double d) {
        double d2 = (long) (d * 1000000.0d);
        Double.isNaN(d2);
        return d2 / 1000000.0d;
    }

    public static void forEachViews(View view, Consumer consumer) {
        if (!(view instanceof ViewGroup)) {
            consumer.accept(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            consumer.accept(view);
            forEachViews(viewGroup.getChildAt(i), consumer);
        }
    }

    public static void forEachViews(RecyclerView recyclerView, Consumer consumer) {
        if (recyclerView == null) {
            return;
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            consumer.accept(recyclerView.getChildAt(i));
        }
        for (int i2 = 0; i2 < recyclerView.getCachedChildCount(); i2++) {
            consumer.accept(recyclerView.getCachedChildAt(i2));
        }
        for (int i3 = 0; i3 < recyclerView.getHiddenChildCount(); i3++) {
            consumer.accept(recyclerView.getHiddenChildAt(i3));
        }
        for (int i4 = 0; i4 < recyclerView.getAttachedScrapChildCount(); i4++) {
            consumer.accept(recyclerView.getAttachedScrapChildAt(i4));
        }
    }

    public static String formapMapUrl(int i, double d, double d2, int i2, int i3, boolean z, int i4, int i5) {
        int iMin = Math.min(2, (int) Math.ceil(density));
        int i6 = i5 == -1 ? MessagesController.getInstance(i).mapProvider : i5;
        if (i6 != 1 && i6 != 3) {
            String str = MessagesController.getInstance(i).mapKey;
            if (!TextUtils.isEmpty(str)) {
                return z ? String.format(Locale.US, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false&key=%s", Double.valueOf(d), Double.valueOf(d2), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iMin), Double.valueOf(d), Double.valueOf(d2), str) : String.format(Locale.US, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&key=%s", Double.valueOf(d), Double.valueOf(d2), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iMin), str);
            }
            Locale locale = Locale.US;
            return z ? String.format(locale, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d&markers=color:red%%7Csize:mid%%7C%.6f,%.6f&sensor=false", Double.valueOf(d), Double.valueOf(d2), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iMin), Double.valueOf(d), Double.valueOf(d2)) : String.format(locale, "https://maps.googleapis.com/maps/api/staticmap?center=%.6f,%.6f&zoom=%d&size=%dx%d&maptype=roadmap&scale=%d", Double.valueOf(d), Double.valueOf(d2), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iMin));
        }
        String[] strArr = {"ru_RU", "tr_TR"};
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        String str2 = null;
        for (int i7 = 0; i7 < 2; i7++) {
            if (strArr[i7].toLowerCase().contains(currentLocaleInfo.shortName)) {
                str2 = strArr[i7];
            }
        }
        if (str2 == null) {
            str2 = "en_US";
        }
        return z ? String.format(Locale.US, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&pt=%.6f,%.6f,vkbkm&lang=%s", Double.valueOf(d2), Double.valueOf(d), Integer.valueOf(i4), Integer.valueOf(i2 * iMin), Integer.valueOf(i3 * iMin), Integer.valueOf(iMin), Double.valueOf(d2), Double.valueOf(d), str2) : String.format(Locale.US, "https://static-maps.yandex.ru/1.x/?ll=%.6f,%.6f&z=%d&size=%d,%d&l=map&scale=%d&lang=%s", Double.valueOf(d2), Double.valueOf(d), Integer.valueOf(i4), Integer.valueOf(i2 * iMin), Integer.valueOf(i3 * iMin), Integer.valueOf(iMin), str2);
    }

    public static String formatCount(int i) {
        if (i < 1000) {
            return Integer.toString(i);
        }
        ArrayList arrayList = new ArrayList();
        while (i != 0) {
            int i2 = i % 1000;
            i /= 1000;
            arrayList.add(i > 0 ? String.format(Locale.ENGLISH, "%03d", Integer.valueOf(i2)) : Integer.toString(i2));
        }
        StringBuilder sb = new StringBuilder();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            sb.append((String) arrayList.get(size));
            if (size != 0) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public static String formatDuration(int i, int i2, boolean z) {
        int i3 = i2 / 3600;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 % 60;
        int i6 = i / 3600;
        int i7 = (i / 60) % 60;
        int i8 = i % 60;
        if (i2 == 0) {
            Locale locale = Locale.US;
            return i6 == 0 ? z ? String.format(locale, "%02d:%02d / -:--", Integer.valueOf(i7), Integer.valueOf(i8)) : String.format(locale, "%d:%02d / -:--", Integer.valueOf(i7), Integer.valueOf(i8)) : String.format(locale, "%d:%02d:%02d / -:--", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8));
        }
        if (i6 != 0 || i3 != 0) {
            return String.format(Locale.US, "%d:%02d:%02d / %d:%02d:%02d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
        }
        Locale locale2 = Locale.US;
        return z ? String.format(locale2, "%02d:%02d / %02d:%02d", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i4), Integer.valueOf(i5)) : String.format(locale2, "%d:%02d / %d:%02d", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String formatDuration(int i, boolean z) {
        return formatDuration(i, z, false);
    }

    public static String formatDuration(int i, boolean z, boolean z2) {
        int i2 = i / 3600;
        int i3 = (i / 60) % 60;
        int i4 = i % 60;
        return i2 == 0 ? z ? String.format(Locale.US, "%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%d:%02d", Integer.valueOf(i3), Integer.valueOf(i4)) : z2 ? String.format(Locale.US, "%d:%02d", Integer.valueOf(i2), Integer.valueOf(i3)) : String.format(Locale.US, "%d:%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }

    public static String formatDurationNoHours(int i, boolean z) {
        int i2 = i / 60;
        int i3 = i % 60;
        return z ? String.format(Locale.US, "%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3)) : String.format(Locale.US, "%d:%02d", Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String formatFileSize(long j) {
        return formatFileSize(j, false, false);
    }

    public static String formatFileSize(long j, boolean z, boolean z2) {
        if (j == 0) {
            return String.format("%d KB", 0);
        }
        if (j < 1024) {
            return String.format("%d B", Long.valueOf(j));
        }
        if (j < 1048576) {
            float f = j / 1024.0f;
            if (z) {
                int i = (int) f;
                if ((f - i) * 10.0f == BitmapDescriptorFactory.HUE_RED) {
                    return String.format("%d KB", Integer.valueOf(i));
                }
            }
            return String.format("%.1f KB", Float.valueOf(f));
        }
        if (j < 1048576000) {
            float f2 = (j / 1024.0f) / 1024.0f;
            if (z) {
                int i2 = (int) f2;
                if ((f2 - i2) * 10.0f == BitmapDescriptorFactory.HUE_RED) {
                    return String.format("%d MB", Integer.valueOf(i2));
                }
            }
            return String.format("%.1f MB", Float.valueOf(f2));
        }
        float f3 = ((int) ((j / 1024) / 1024)) / 1000.0f;
        if (z) {
            int i3 = (int) f3;
            if ((f3 - i3) * 10.0f == BitmapDescriptorFactory.HUE_RED) {
                return String.format("%d GB", Integer.valueOf(i3));
            }
        }
        Float fValueOf = Float.valueOf(f3);
        Object[] objArr = new Object[1];
        if (z2) {
            objArr[0] = fValueOf;
            return String.format("%.1f GB", objArr);
        }
        objArr[0] = fValueOf;
        return String.format("%.2f GB", objArr);
    }

    public static String formatFullDuration(int i) {
        int i2 = i / 3600;
        int i3 = (i / 60) % 60;
        int i4 = i % 60;
        return i < 0 ? String.format(Locale.US, "-%02d:%02d:%02d", Integer.valueOf(Math.abs(i2)), Integer.valueOf(Math.abs(i3)), Integer.valueOf(Math.abs(i4))) : String.format(Locale.US, "%02d:%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }

    public static String formatLongDuration(int i) {
        return formatDuration(i, true);
    }

    public static String formatLongDuration(int i, int i2) {
        return formatDuration(i, i2, true);
    }

    public static String formatShortDuration(int i) {
        return formatDuration(i, false);
    }

    public static String formatShortDuration(int i, int i2) {
        return formatDuration(i, i2, false);
    }

    public static SpannableStringBuilder formatSpannable(CharSequence charSequence, GenericProvider<Integer, String> genericProvider, CharSequence... charSequenceArr) {
        String string = charSequence.toString();
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
        for (int i = 0; i < charSequenceArr.length; i++) {
            String strProvide = genericProvider.provide(Integer.valueOf(i));
            int iIndexOf = string.indexOf(strProvide);
            if (iIndexOf != -1) {
                spannableStringBuilderValueOf.replace(iIndexOf, strProvide.length() + iIndexOf, charSequenceArr[i]);
                string = string.substring(0, iIndexOf) + charSequenceArr[i].toString() + string.substring(iIndexOf + strProvide.length());
            }
        }
        return spannableStringBuilderValueOf;
    }

    public static SpannableStringBuilder formatSpannable(CharSequence charSequence, CharSequence... charSequenceArr) {
        return charSequence.toString().contains("%s") ? formatSpannableSimple(charSequence, charSequenceArr) : formatSpannable(charSequence, new GenericProvider() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return AndroidUtilities.lambda$formatSpannable$15((Integer) obj);
            }
        }, charSequenceArr);
    }

    public static SpannableStringBuilder formatSpannableSimple(CharSequence charSequence, CharSequence... charSequenceArr) {
        return formatSpannable(charSequence, new GenericProvider() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda53
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return AndroidUtilities.lambda$formatSpannableSimple$14((Integer) obj);
            }
        }, charSequenceArr);
    }

    public static String formatTimerDurationFast(long j, int i) {
        StringBuilder sb = new StringBuilder();
        long j2 = j / 60;
        if (j2 >= 60) {
            sb.append(j2 / 60);
            sb.append(":");
            normalizeTimePart(sb, j2 % 60);
        } else {
            sb.append(j2);
        }
        sb.append(":");
        normalizeTimePart(sb, j % 60);
        sb.append(",");
        sb.append(i / 10);
        return sb.toString();
    }

    public static String formatTimestamp(int i) {
        int i2 = i / 3600;
        int i3 = (i / 60) % 60;
        int i4 = i % 60;
        String string = "";
        if (i2 > 0) {
            string = "" + String.format(Locale.US, "%dh", Integer.valueOf(i2));
        }
        if (i3 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append(String.format(Locale.US, i2 > 0 ? "%02dm" : "%dm", Integer.valueOf(i3)));
            string = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        sb2.append(String.format(Locale.US, (i2 > 0 || i3 > 0) ? "%02ds" : "%ds", Integer.valueOf(i4)));
        return sb2.toString();
    }

    public static String formatVideoDuration(int i, int i2) {
        int i3 = i2 / 3600;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 % 60;
        int i6 = i / 3600;
        int i7 = (i / 60) % 60;
        int i8 = i % 60;
        return (i6 == 0 && i3 == 0) ? String.format(Locale.US, "%02d:%02d / %02d:%02d", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i4), Integer.valueOf(i5)) : i3 == 0 ? String.format(Locale.US, "%d:%02d:%02d / %02d:%02d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i4), Integer.valueOf(i5)) : i6 == 0 ? String.format(Locale.US, "%02d:%02d / %d:%02d:%02d", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)) : String.format(Locale.US, "%d:%02d:%02d / %d:%02d:%02d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String formatVideoDurationFast(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i >= 60) {
            normalizeTimePart(sb, i / 60);
            sb.append(":");
            i %= 60;
        }
        normalizeTimePart(sb, i);
        sb.append(":");
        normalizeTimePart(sb, i2);
        return sb.toString();
    }

    public static String formatWholeNumber(int i, int i2) {
        if (i == 0) {
            return "0";
        }
        float f = i;
        if (i2 == 0) {
            i2 = i;
        }
        if (i2 < 1000) {
            return formatCount(i);
        }
        int i3 = 0;
        while (i2 >= 1000 && i3 < numbersSignatureArray.length - 1) {
            i2 /= 1000;
            f /= 1000.0f;
            i3++;
        }
        if (f < 0.1d) {
            return "0";
        }
        float f2 = f * 10.0f;
        float f3 = (int) f2;
        return f2 == f3 ? String.format(Locale.ENGLISH, "%s%s", formatCount((int) f), numbersSignatureArray[i3]) : String.format(Locale.ENGLISH, "%.1f%s", Float.valueOf(f3 / 10.0f), numbersSignatureArray[i3]);
    }

    private static void gatherLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, boolean z) {
        if (TextUtils.indexOf((CharSequence) spannable, (char) 9472) >= 0) {
            spannable = new SpannableStringBuilder(spannable.toString().replace((char) 9472, ' '));
        }
        if (!TextUtils.isEmpty(spannable) && TextUtils.lastIndexOf(spannable, '_') == spannable.length() - 1) {
            spannable = new SpannableStringBuilder(spannable.toString()).replace(spannable.length() - 1, spannable.length(), (CharSequence) "a");
        }
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, iStart, iEnd)) {
                LinkSpec linkSpec = new LinkSpec();
                String strMakeUrl = makeUrl(matcher.group(0), strArr, matcher);
                if (!z || Browser.isInternalUrl(strMakeUrl, true, null)) {
                    linkSpec.url = strMakeUrl;
                    linkSpec.start = iStart;
                    linkSpec.end = iEnd;
                    arrayList.add(linkSpec);
                }
            }
        }
    }

    public static String generateFileName(int i, String str) {
        StringBuilder sb;
        Date date = new Date();
        date.setTime(System.currentTimeMillis() + Utilities.random.nextInt(1000) + 1);
        String str2 = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.US).format(date);
        if (i == 0) {
            sb = new StringBuilder();
            sb.append("IMG_");
            sb.append(str2);
            sb.append(".");
            if (TextUtils.isEmpty(str)) {
                str = "jpg";
            }
        } else {
            sb = new StringBuilder();
            sb.append("VID_");
            sb.append(str2);
            str = ".mp4";
        }
        sb.append(str);
        return sb.toString();
    }

    public static File generatePicturePath() {
        return generatePicturePath(false, null);
    }

    public static File generatePicturePath(boolean z, String str) {
        try {
            File directory = FileLoader.getDirectory(100);
            if (!z && directory != null) {
                return new File(directory, generateFileName(0, str));
            }
            return new File(ApplicationLoader.applicationContext.getExternalFilesDir(Environment.DIRECTORY_PICTURES), generateFileName(0, str));
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharSequence generateSearchName(String str, String str2, String str3) {
        String strSubstring;
        String strSubstring2;
        if ((str == null && str2 == null) || TextUtils.isEmpty(str3)) {
            return "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (str == null || str.length() == 0) {
            str = str2;
        } else if (str2 != null && str2.length() != 0) {
            str = str + " " + str2;
        }
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        String str4 = " " + strTrim.toLowerCase();
        int i = 0;
        while (true) {
            int iIndexOf = str4.indexOf(" " + str3, i);
            if (iIndexOf == -1) {
                break;
            }
            int i2 = iIndexOf - (iIndexOf == 0 ? 0 : 1);
            int length = str3.length() + (iIndexOf == 0 ? 0 : 1) + i2;
            if (i == 0 || i == i2 + 1) {
                if (i == 0 && i2 != 0) {
                    strSubstring = strTrim.substring(0, i2);
                }
                strSubstring2 = strTrim.substring(i2, Math.min(strTrim.length(), length));
                if (!strSubstring2.startsWith(" ")) {
                    spannableStringBuilder.append((CharSequence) " ");
                }
                String strTrim2 = strSubstring2.trim();
                int length2 = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) strTrim2);
                spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), length2, strTrim2.length() + length2, 33);
                i = length;
            } else {
                strSubstring = strTrim.substring(i, i2);
            }
            spannableStringBuilder.append((CharSequence) strSubstring);
            strSubstring2 = strTrim.substring(i2, Math.min(strTrim.length(), length));
            if (!strSubstring2.startsWith(" ")) {
            }
            String strTrim22 = strSubstring2.trim();
            int length22 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) strTrim22);
            spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), length22, strTrim22.length() + length22, 33);
            i = length;
        }
        if (i != -1 && i < strTrim.length()) {
            spannableStringBuilder.append((CharSequence) strTrim.substring(i));
        }
        return spannableStringBuilder;
    }

    public static File generateVideoPath() {
        return generateVideoPath(false);
    }

    public static File generateVideoPath(boolean z) {
        try {
            File albumDir = getAlbumDir(z);
            Date date = new Date();
            date.setTime(System.currentTimeMillis() + Utilities.random.nextInt(1000) + 1);
            if (generatingVideoPathFormat == null) {
                generatingVideoPathFormat = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.US);
            }
            return new File(albumDir, "VID_" + generatingVideoPathFormat.format(date) + ".mp4");
        } catch (Exception e) {
            FileLog.e(e);
            return null;
        }
    }

    public static Activity getActivity() {
        return getActivity(null);
    }

    public static Activity getActivity(Context context) {
        Activity activityFindActivity = findActivity(context);
        if (activityFindActivity == null || activityFindActivity.isFinishing()) {
            activityFindActivity = LaunchActivity.instance;
        }
        return (activityFindActivity == null || activityFindActivity.isFinishing()) ? findActivity(ApplicationLoader.applicationContext) : activityFindActivity;
    }

    private static File getAlbumDir(boolean z) {
        int i;
        if (z || !BuildVars.NO_SCOPED_STORAGE || (((i = Build.VERSION.SDK_INT) >= 33 && ApplicationLoader.applicationContext.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0) || (i >= 23 && i <= 33 && ApplicationLoader.applicationContext.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0))) {
            return FileLoader.getDirectory(0);
        }
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.d("External storage is not mounted READ/WRITE.");
            return null;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Telegram");
        if (file.mkdirs() || file.exists()) {
            return file;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.d("failed to create directory");
        }
        return null;
    }

    public static int getAverageColor(int i, int i2) {
        return Color.argb(255, (Color.red(i) / 2) + (Color.red(i2) / 2), (Color.green(i) / 2) + (Color.green(i2) / 2), (Color.blue(i) / 2) + (Color.blue(i2) / 2));
    }

    public static Bitmap getBitmapFromRaw(int i) throws IOException {
        InputStream inputStreamOpenRawResource;
        Bitmap bitmapDecodeStream = null;
        try {
            inputStreamOpenRawResource = ApplicationLoader.applicationContext.getResources().openRawResource(i);
            try {
                bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenRawResource);
            } catch (Throwable th) {
                th = th;
                try {
                    FileLog.e(th);
                    inputStreamOpenRawResource.close();
                    return bitmapDecodeStream;
                } catch (Throwable th2) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException unused) {
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenRawResource = null;
        }
        try {
            inputStreamOpenRawResource.close();
        } catch (IOException unused2) {
        }
        return bitmapDecodeStream;
    }

    public static void getBitmapFromSurface(Surface surface, Bitmap bitmap) throws InterruptedException {
        if (surface == null || !surface.isValid()) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        PixelCopy.request(surface, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda54
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                countDownLatch.countDown();
            }
        }, Utilities.searchQueue.getHandler());
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void getBitmapFromSurface(SurfaceView surfaceView, Bitmap bitmap) {
        if (surfaceView == null || !surfaceView.getHolder().getSurface().isValid()) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        PixelCopy.request(surfaceView, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda48
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                countDownLatch.countDown();
            }
        }, Utilities.searchQueue.getHandler());
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void getBitmapFromSurface(SurfaceView surfaceView, Bitmap bitmap, final Runnable runnable) {
        if (surfaceView == null || ApplicationLoader.applicationHandler == null || !surfaceView.getHolder().getSurface().isValid()) {
            return;
        }
        PixelCopy.request(surfaceView, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda45
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                runnable.run();
            }
        }, ApplicationLoader.applicationHandler);
    }

    public static Uri getBitmapShareUri(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) throws IOException {
        File cacheDir = getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.e(e);
                return null;
            }
        }
        File file = new File(cacheDir, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(compressFormat, 87, fileOutputStream);
                fileOutputStream.close();
                Uri uriForFile = FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", file);
                fileOutputStream.close();
                return uriForFile;
            } finally {
            }
        } catch (Exception e2) {
            FileLog.e(e2);
            return null;
        }
    }

    public static File getCacheDir() {
        String externalStorageState;
        String path = null;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e) {
            FileLog.e(e);
            externalStorageState = null;
        }
        if (externalStorageState == null || externalStorageState.startsWith("mounted")) {
            FileLog.d("external dir mounted");
            try {
                File[] externalCacheDirs = ApplicationLoader.applicationContext.getExternalCacheDirs();
                int i = 0;
                File file = externalCacheDirs[0];
                if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
                    while (true) {
                        if (i < externalCacheDirs.length) {
                            File file2 = externalCacheDirs[i];
                            if (file2 != null && file2.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                                file = externalCacheDirs[i];
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("check dir ");
                if (file != null) {
                    path = file.getPath();
                }
                sb.append(path);
                sb.append(" ");
                FileLog.d(sb.toString());
                if (file != null && ((file.exists() || file.mkdirs()) && file.canWrite())) {
                    return file;
                }
                if (file != null) {
                    FileLog.d("check dir file exist " + file.exists() + " can write " + file.canWrite());
                }
            } catch (Exception e2) {
                FileLog.e(e2);
            }
        }
        try {
            File cacheDir = ApplicationLoader.applicationContext.getCacheDir();
            if (cacheDir != null) {
                return cacheDir;
            }
        } catch (Exception e3) {
            FileLog.e(e3);
        }
        try {
            File filesDir = ApplicationLoader.applicationContext.getFilesDir();
            if (filesDir != null) {
                File file3 = new File(filesDir, "cache/");
                file3.mkdirs();
                if (filesDir.exists() || filesDir.mkdirs()) {
                    if (filesDir.canWrite()) {
                        return file3;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return new File("");
    }

    public static String getCertificateSHA1Fingerprint() {
        try {
            return Utilities.bytesToHex(Utilities.computeSHA1(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getCertificateSHA256Fingerprint() {
        try {
            return Utilities.bytesToHex(Utilities.computeSHA256(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int getColorDistance(int i, int i2) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        int iRed2 = Color.red(i2);
        int i3 = (iRed + iRed2) / 2;
        int i4 = iRed - iRed2;
        int iGreen2 = iGreen - Color.green(i2);
        int iBlue2 = iBlue - Color.blue(i2);
        return ((((i3 + LiteMode.FLAG_CALLS_ANIMATIONS) * i4) * i4) >> 8) + (iGreen2 * 4 * iGreen2) + ((((767 - i3) * iBlue2) * iBlue2) >> 8);
    }

    public static float[] getCoordinateInParent(ViewGroup viewGroup, View view) {
        float y;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (view == null || viewGroup == null) {
            y = BitmapDescriptorFactory.HUE_RED;
            break;
        }
        y = BitmapDescriptorFactory.HUE_RED;
        float x = BitmapDescriptorFactory.HUE_RED;
        while (view != viewGroup) {
            if (view != null) {
                y += view.getY();
                x += view.getX();
                if (view instanceof NestedScrollView) {
                    y -= view.getScrollY();
                    x -= view.getScrollX();
                }
                if (view.getParent() instanceof View) {
                    view = (View) view.getParent();
                }
            }
            y = BitmapDescriptorFactory.HUE_RED;
            break;
        }
        f = x;
        return new float[]{f, y};
    }

    public static String[] getCurrentKeyboardLanguage() {
        String locale;
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) ApplicationLoader.applicationContext.getSystemService("input_method");
            InputMethodSubtype currentInputMethodSubtype = inputMethodManager.getCurrentInputMethodSubtype();
            String str = null;
            if (currentInputMethodSubtype != null) {
                locale = Build.VERSION.SDK_INT >= 24 ? currentInputMethodSubtype.getLanguageTag() : null;
                if (TextUtils.isEmpty(locale)) {
                    locale = currentInputMethodSubtype.getLocale();
                }
            } else {
                InputMethodSubtype lastInputMethodSubtype = inputMethodManager.getLastInputMethodSubtype();
                if (lastInputMethodSubtype != null) {
                    String languageTag = Build.VERSION.SDK_INT >= 24 ? lastInputMethodSubtype.getLanguageTag() : null;
                    locale = TextUtils.isEmpty(languageTag) ? lastInputMethodSubtype.getLocale() : languageTag;
                } else {
                    locale = null;
                }
            }
            if (!TextUtils.isEmpty(locale)) {
                return new String[]{locale.replace('_', '-')};
            }
            String systemLocaleStringIso639 = LocaleController.getSystemLocaleStringIso639();
            LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
            String baseLangCode = currentLocaleInfo.getBaseLangCode();
            boolean zIsEmpty = TextUtils.isEmpty(baseLangCode);
            String langCode = baseLangCode;
            if (zIsEmpty) {
                langCode = currentLocaleInfo.getLangCode();
            }
            if (!systemLocaleStringIso639.contains(langCode) && !langCode.contains(systemLocaleStringIso639)) {
                str = langCode;
            } else if (!systemLocaleStringIso639.contains("en")) {
                str = "en";
            }
            return !TextUtils.isEmpty(str) ? new String[]{systemLocaleStringIso639.replace('_', '-'), str} : new String[]{systemLocaleStringIso639.replace('_', '-')};
        } catch (Exception unused) {
            return new String[]{"en"};
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        if (r9.startsWith("file://") == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        if (!string.startsWith("content://")) {
                            if (!string.startsWith("/")) {
                            }
                            cursorQuery.close();
                            return string;
                        }
                        cursorQuery.close();
                        return null;
                    }
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static ArrayList<File> getDataDirs() {
        ArrayList<File> arrayList = null;
        File[] externalFilesDirs = ApplicationLoader.applicationContext.getExternalFilesDirs(null);
        if (externalFilesDirs != null) {
            for (int i = 0; i < externalFilesDirs.length; i++) {
                File file = externalFilesDirs[i];
                if (file != null) {
                    file.getAbsolutePath();
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(externalFilesDirs[i]);
                }
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.isEmpty()) {
            arrayList.add(Environment.getExternalStorageDirectory());
        }
        return arrayList;
    }

    public static int getDominantColor(Bitmap bitmap) {
        if (bitmap == null) {
            return -1;
        }
        float height = (bitmap.getHeight() - 1) / 10.0f;
        float width = (bitmap.getWidth() - 1) / 10.0f;
        int i = 0;
        int iBlue = 0;
        int iGreen = 0;
        int iRed = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                int pixel = bitmap.getPixel((int) (i2 * width), (int) (i3 * height));
                if (Color.alpha(pixel) > 200) {
                    iRed += Color.red(pixel);
                    iGreen += Color.green(pixel);
                    iBlue += Color.blue(pixel);
                    i++;
                }
            }
        }
        if (i == 0) {
            return 0;
        }
        return Color.argb(255, iRed / i, iGreen / i, iBlue / i);
    }

    public static String getHostAuthority(Uri uri) {
        if (uri == null) {
            return null;
        }
        return getHostAuthority(uri.toString());
    }

    public static String getHostAuthority(Uri uri, boolean z) {
        if (uri == null) {
            return null;
        }
        return getHostAuthority(uri.toString(), z);
    }

    public static String getHostAuthority(String str) {
        return getHostAuthority(str, false);
    }

    public static String getHostAuthority(String str, boolean z) {
        if (str == null) {
            return null;
        }
        Matcher matcher = getURIParsePattern().matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(4);
        if (strGroup != null) {
            strGroup = strGroup.toLowerCase();
        }
        return (z && strGroup != null && strGroup.startsWith("www.")) ? strGroup.substring(4) : strGroup;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Pair<Integer, Integer> getImageOrientation(ExifInterface exifInterface) {
        try {
            int i = 1;
            int i2 = 270;
            switch (exifInterface.getAttributeInt("Orientation", 1)) {
                case 2:
                    i2 = 0;
                    break;
                case 3:
                    i2 = 180;
                    i = 0;
                    break;
                case 4:
                    i = 2;
                    i2 = 0;
                    break;
                case 5:
                    i = 2;
                    break;
                case 6:
                    i2 = 90;
                    i = 0;
                    break;
                case 7:
                    break;
                case 8:
                    i = 0;
                    break;
                default:
                    i = 0;
                    i2 = 0;
                    break;
            }
            return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i));
        } catch (Exception e) {
            FileLog.e(e);
            return new Pair<>(0, 0);
        }
    }

    public static Pair<Integer, Integer> getImageOrientation(File file) {
        try {
            return getImageOrientation(new ExifInterface(file));
        } catch (Exception e) {
            FileLog.e(e);
            return new Pair<>(0, 0);
        }
    }

    public static Pair<Integer, Integer> getImageOrientation(InputStream inputStream) {
        try {
            return getImageOrientation(new ExifInterface(inputStream));
        } catch (Exception e) {
            FileLog.e(e);
            return new Pair<>(0, 0);
        }
    }

    public static Pair<Integer, Integer> getImageOrientation(String str) {
        try {
            return getImageOrientation(new ExifInterface(str));
        } catch (Exception unused) {
            return new Pair<>(0, 0);
        }
    }

    public static boolean getLightNavigationBar(Window window) {
        return Build.VERSION.SDK_INT >= 26 && (window.getDecorView().getSystemUiVisibility() & 16) > 0;
    }

    public static File getLogsDir() {
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null).getAbsolutePath() + "/logs");
                file.mkdirs();
                return file;
            }
        } catch (Exception unused) {
        }
        try {
            try {
                File file2 = new File(ApplicationLoader.applicationContext.getCacheDir() + "/logs");
                file2.mkdirs();
                return file2;
            } catch (Exception unused2) {
                File file3 = new File(ApplicationLoader.applicationContext.getFilesDir() + "/logs");
                file3.mkdirs();
                return file3;
            }
        } catch (Exception unused3) {
            ApplicationLoader.appCenterLog(new RuntimeException("can't create logs directory"));
            return null;
        }
    }

    public static int getMinTabletSide() {
        if (!isSmallTablet()) {
            Point point = displaySize;
            int iMin = Math.min(point.x, point.y);
            int iDp = (iMin * 35) / 100;
            if (iDp < dp(320.0f)) {
                iDp = dp(320.0f);
            }
            return iMin - iDp;
        }
        Point point2 = displaySize;
        int iMin2 = Math.min(point2.x, point2.y);
        Point point3 = displaySize;
        int iMax = Math.max(point3.x, point3.y);
        int iDp2 = (iMax * 35) / 100;
        if (iDp2 < dp(320.0f)) {
            iDp2 = dp(320.0f);
        }
        return Math.min(iMin2, iMax - iDp2);
    }

    public static int getMyLayerVersion(int i) {
        return i & 65535;
    }

    private static int getNavigationBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getOffsetColor(int i, int i2, float f, float f2) {
        int iRed = Color.red(i2);
        int iGreen = Color.green(i2);
        int iBlue = Color.blue(i2);
        int iAlpha = Color.alpha(i2);
        int iRed2 = Color.red(i);
        int iGreen2 = Color.green(i);
        int iBlue2 = Color.blue(i);
        return Color.argb((int) ((Color.alpha(i) + ((iAlpha - r7) * f)) * f2), (int) (iRed2 + ((iRed - iRed2) * f)), (int) (iGreen2 + ((iGreen - iGreen2) * f)), (int) (iBlue2 + ((iBlue - iBlue2) * f)));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getPath(Uri uri) {
        try {
            if (DocumentsContract.isDocumentUri(ApplicationLoader.applicationContext, uri)) {
                char c = 0;
                if (isExternalStorageDocument(uri)) {
                    String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                    if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                        return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
                    }
                } else {
                    if (isDownloadsDocument(uri)) {
                        return getDataColumn(ApplicationLoader.applicationContext, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                    }
                    if (isMediaDocument(uri)) {
                        String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                        String str = strArrSplit2[0];
                        int iHashCode = str.hashCode();
                        if (iHashCode != 93166550) {
                            if (iHashCode != 100313435) {
                                c = (iHashCode == 112202875 && str.equals(MediaStreamTrack.VIDEO_TRACK_KIND)) ? (char) 1 : (char) 65535;
                            } else if (str.equals("image")) {
                            }
                        } else if (str.equals(MediaStreamTrack.AUDIO_TRACK_KIND)) {
                            c = 2;
                        }
                        return getDataColumn(ApplicationLoader.applicationContext, c != 0 ? c != 1 ? c != 2 ? null : MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI : MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{strArrSplit2[1]});
                    }
                }
            } else {
                if (RemoteMessageConst.Notification.CONTENT.equalsIgnoreCase(uri.getScheme())) {
                    return getDataColumn(ApplicationLoader.applicationContext, uri, null, null);
                }
                if ("file".equalsIgnoreCase(uri.getScheme())) {
                    return uri.getPath();
                }
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
        return null;
    }

    public static int getPatternColor(int i) {
        return getPatternColor(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getPatternColor(int i, boolean z) {
        float[] fArrRGBtoHSB = RGBtoHSB(Color.red(i), Color.green(i), Color.blue(i));
        float f = fArrRGBtoHSB[1];
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            float f2 = fArrRGBtoHSB[2];
            if (f2 < 1.0f && f2 > BitmapDescriptorFactory.HUE_RED) {
                fArrRGBtoHSB[1] = Math.min(1.0f, (z ? 0.15f : 0.05f) + f + ((1.0f - f) * 0.1f));
            }
        }
        if (!z) {
            float f3 = fArrRGBtoHSB[2];
            if (f3 > 0.5f) {
                fArrRGBtoHSB[2] = Math.max(BitmapDescriptorFactory.HUE_RED, fArrRGBtoHSB[2] * 0.65f);
            } else {
                fArrRGBtoHSB[2] = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - (f3 * 0.65f)));
            }
        }
        return HSBtoRGB(fArrRGBtoHSB[0], fArrRGBtoHSB[1], fArrRGBtoHSB[2]) & (z ? -1711276033 : 1728053247);
    }

    public static int getPatternSideColor(int i) {
        float[] fArrRGBtoHSB = RGBtoHSB(Color.red(i), Color.green(i), Color.blue(i));
        fArrRGBtoHSB[1] = Math.min(1.0f, fArrRGBtoHSB[1] + 0.05f);
        float f = fArrRGBtoHSB[2];
        float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, f * 0.9f);
        if (f > 0.5f) {
            fArrRGBtoHSB[2] = fMax;
        } else {
            fArrRGBtoHSB[2] = fMax;
        }
        return HSBtoRGB(fArrRGBtoHSB[0], fArrRGBtoHSB[1], fArrRGBtoHSB[2]) | (-16777216);
    }

    public static int getPeerLayerVersion(int i) {
        return Math.max(73, (i >> 16) & 65535);
    }

    public static int getPhotoSize() {
        return getPhotoSize(false);
    }

    public static int getPhotoSize(boolean z) {
        Integer num;
        if (z) {
            if (highQualityPhotoSize == null) {
                highQualityPhotoSize = 2048;
            }
            num = highQualityPhotoSize;
        } else {
            if (photoSize == null) {
                photoSize = 1280;
            }
            num = photoSize;
        }
        return num.intValue();
    }

    public static float getPixelsInCM(float f, boolean z) {
        return (f / 2.54f) * (z ? displayMetrics.xdpi : displayMetrics.ydpi);
    }

    public static long getPrefIntOrLong(SharedPreferences sharedPreferences, String str, long j) {
        try {
            return sharedPreferences.getLong(str, j);
        } catch (Exception unused) {
            return sharedPreferences.getInt(str, (int) j);
        }
    }

    public static Point getRealScreenSize() {
        Point point = new Point();
        try {
            ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRealSize(point);
        } catch (Exception e) {
            FileLog.e(e);
        }
        return point;
    }

    public static ArrayList<File> getRootDirs() {
        File externalStorageDirectory;
        String absolutePath;
        int iIndexOf;
        HashSet hashSet = new HashSet();
        ArrayList<File> arrayList = null;
        File[] externalFilesDirs = ApplicationLoader.applicationContext.getExternalFilesDirs(null);
        if (externalFilesDirs != null) {
            for (File file : externalFilesDirs) {
                if (file != null && (iIndexOf = (absolutePath = file.getAbsolutePath()).indexOf("/Android")) >= 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    File file2 = new File(absolutePath.substring(0, iIndexOf));
                    for (int i = 0; i < arrayList.size(); i++) {
                        arrayList.get(i).getPath().equals(file2.getPath());
                    }
                    if (!hashSet.contains(file2.getAbsolutePath())) {
                        hashSet.add(file2.getAbsolutePath());
                        arrayList.add(file2);
                    }
                }
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.isEmpty() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null && !hashSet.contains(externalStorageDirectory.getAbsolutePath())) {
            arrayList.add(externalStorageDirectory);
        }
        return arrayList;
    }

    public static View getRootView(View view) {
        while (view != null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view;
    }

    public static String getSafeString(String str) {
        try {
            return BAD_CHARS_MESSAGE_PATTERN.matcher(str).replaceAll("\u200c");
        } catch (Throwable unused) {
            return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0073 A[EXC_TOP_SPLITTER, PHI: r3
      0x0073: PHI (r3v2 java.io.FileInputStream) = (r3v1 java.io.FileInputStream), (r3v4 java.io.FileInputStream) binds: [B:39:0x007d, B:32:0x0071] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap getScaledBitmap(float f, float f2, String str, String str2, int i) throws IOException {
        FileInputStream fileInputStream;
        BitmapFactory.Options options;
        int i2;
        int i3;
        Bitmap bitmapDecodeStream;
        int i4;
        try {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            if (str != null) {
                BitmapFactory.decodeFile(str, options);
                fileInputStream = null;
            } else {
                fileInputStream = new FileInputStream(str2);
                try {
                    fileInputStream.getChannel().position(i);
                    BitmapFactory.decodeStream(fileInputStream, null, options);
                } catch (Throwable th) {
                    th = th;
                    try {
                        FileLog.e(th);
                        if (fileInputStream != null) {
                        }
                        return null;
                    } finally {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception e) {
                                FileLog.e(e);
                            }
                        }
                    }
                }
            }
            i2 = options.outWidth;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        if (i2 <= 0 || (i3 = options.outHeight) <= 0) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
            }
            return null;
        }
        if (f > f2 && i2 < i3) {
            f2 = f;
            f = f2;
        }
        float fMin = Math.min(i2 / f, i3 / f2);
        options.inSampleSize = 1;
        if (fMin > 1.0f) {
            do {
                i4 = options.inSampleSize * 2;
                options.inSampleSize = i4;
            } while (i4 < fMin);
        }
        options.inJustDecodeBounds = false;
        if (str != null) {
            bitmapDecodeStream = BitmapFactory.decodeFile(str, options);
        } else {
            fileInputStream.getChannel().position(i);
            bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
        }
        return bitmapDecodeStream;
    }

    public static int getShadowHeight() {
        float f = density;
        if (f >= 4.0f) {
            return 3;
        }
        return f >= 2.0f ? 2 : 1;
    }

    public static File getSharingDirectory() {
        return new File(FileLoader.getDirectory(4), "sharing/");
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static byte[] getStringBytes(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    public static Long getSysInfoLong(String str) {
        String sysInfoString = getSysInfoString(str);
        if (sysInfoString == null) {
            return null;
        }
        try {
            return Utilities.parseLong(sysInfoString);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(2:32|3)|(3:34|4|(3:30|6|7))|26|8|22|(1:(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getSysInfoString(String str) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
        } catch (Exception unused) {
            randomAccessFile = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            String line = randomAccessFile.readLine();
            if (line != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception unused2) {
                }
                return line;
            }
        } catch (Exception unused3) {
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
        randomAccessFile.close();
        return null;
    }

    public static String getSystemProperty(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getThumbForNameOrMime(String str, String str2, boolean z) {
        char cCharAt;
        int length;
        if (str == null || str.length() == 0) {
            return z ? documentMediaIcons[0] : documentIcons[0];
        }
        int i = (str.contains(".doc") || str.contains(".txt") || str.contains(".psd")) ? 0 : (str.contains(".xls") || str.contains(".csv")) ? 1 : (str.contains(".pdf") || str.contains(".ppt") || str.contains(".key")) ? 2 : (str.contains(".zip") || str.contains(".rar") || str.contains(".ai") || str.contains(".mp3") || str.contains(".mov") || str.contains(".avi")) ? 3 : -1;
        if (i == -1) {
            int iLastIndexOf = str.lastIndexOf(46);
            String strSubstring = iLastIndexOf == -1 ? "" : str.substring(iLastIndexOf + 1);
            if (strSubstring.length() != 0) {
                cCharAt = strSubstring.charAt(0);
                length = documentIcons.length;
            } else {
                cCharAt = str.charAt(0);
                length = documentIcons.length;
            }
            i = cCharAt % length;
        }
        return z ? documentMediaIcons[i] : documentIcons[i];
    }

    public static CharSequence getTrimmedString(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() != 0) {
            while (charSequence.length() > 0 && (charSequence.charAt(0) == '\n' || charSequence.charAt(0) == ' ')) {
                charSequence = charSequence.subSequence(1, charSequence.length());
            }
            while (charSequence.length() > 0 && (charSequence.charAt(charSequence.length() - 1) == '\n' || charSequence.charAt(charSequence.length() - 1) == ' ')) {
                charSequence = charSequence.subSequence(0, charSequence.length() - 1);
            }
        }
        return charSequence;
    }

    public static Typeface getTypeface(String str) {
        Typeface typefaceCreateFromAsset;
        Typeface typeface;
        Hashtable<String, Typeface> hashtable = typefaceCache;
        synchronized (hashtable) {
            try {
                if (!hashtable.containsKey(str)) {
                    try {
                        if (Build.VERSION.SDK_INT >= 26) {
                            Typeface.Builder builder = new Typeface.Builder(ApplicationLoader.applicationContext.getAssets(), str);
                            if (str.contains("medium")) {
                                builder.setWeight(700);
                            }
                            if (str.contains("italic")) {
                                builder.setItalic(true);
                            }
                            typefaceCreateFromAsset = builder.build();
                        } else {
                            typefaceCreateFromAsset = Typeface.createFromAsset(ApplicationLoader.applicationContext.getAssets(), str);
                        }
                        hashtable.put(str, typefaceCreateFromAsset);
                    } catch (Exception e) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.e("Could not get typeface '" + str + "' because " + e.getMessage());
                        }
                        return null;
                    }
                }
                typeface = hashtable.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return typeface;
    }

    public static Pattern getURIParsePattern() {
        if (uriParse == null) {
            uriParse = Pattern.compile("^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?");
        }
        return uriParse;
    }

    public static Vibrator getVibrator() {
        if (vibrator == null) {
            vibrator = (Vibrator) ApplicationLoader.applicationContext.getSystemService("vibrator");
        }
        return vibrator;
    }

    public static int getViewInset(View view) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int i;
        if (view != null && (i = Build.VERSION.SDK_INT) >= 21 && view.getHeight() != displaySize.y && view.getHeight() != displaySize.y - statusBarHeight) {
            try {
                if (i >= 23) {
                    WindowInsets rootWindowInsets = view.getRootWindowInsets();
                    if (rootWindowInsets != null) {
                        return rootWindowInsets.getStableInsetBottom();
                    }
                    return 0;
                }
                if (mAttachInfoField == null) {
                    Field declaredField = View.class.getDeclaredField("mAttachInfo");
                    mAttachInfoField = declaredField;
                    declaredField.setAccessible(true);
                }
                Object obj = mAttachInfoField.get(view);
                if (obj != null) {
                    if (mStableInsetsField == null) {
                        Field declaredField2 = obj.getClass().getDeclaredField("mStableInsets");
                        mStableInsetsField = declaredField2;
                        declaredField2.setAccessible(true);
                    }
                    return ((Rect) mStableInsetsField.get(obj)).bottom;
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
        return 0;
    }

    public static void getViewPositionInParent(View view, ViewGroup viewGroup, float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        if (view == null || viewGroup == null) {
            return;
        }
        while (view != viewGroup) {
            if (!(view.getParent() instanceof ViewPager)) {
                fArr[0] = fArr[0] + view.getX();
                fArr[1] = fArr[1] + view.getY();
            }
            view = (View) view.getParent();
        }
    }

    public static String getWallPaperUrl(Object obj) {
        if (!(obj instanceof TLRPC.TL_wallPaper)) {
            if (obj instanceof WallpapersListActivity.ColorWallpaper) {
                return ((WallpapersListActivity.ColorWallpaper) obj).getUrl();
            }
            return null;
        }
        TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) obj;
        String str = "https://" + MessagesController.getInstance(UserConfig.selectedAccount).linkPrefix + "/bg/" + tL_wallPaper.slug;
        StringBuilder sb = new StringBuilder();
        TLRPC.WallPaperSettings wallPaperSettings = tL_wallPaper.settings;
        if (wallPaperSettings != null) {
            if (wallPaperSettings.blur) {
                sb.append("blur");
            }
            if (tL_wallPaper.settings.motion) {
                if (sb.length() > 0) {
                    sb.append("+");
                }
                sb.append("motion");
            }
        }
        if (sb.length() <= 0) {
            return str;
        }
        return str + "?mode=" + sb.toString();
    }

    public static int getWallpaperRotation(int i, boolean z) {
        int i2 = z ? i + 180 : i - 180;
        while (i2 >= 360) {
            i2 -= 360;
        }
        while (i2 < 0) {
            i2 += 360;
        }
        return i2;
    }

    public static Boolean getWasTablet() {
        return wasTablet;
    }

    public static void googleVoiceClientService_performAction(final Intent intent, boolean z, Bundle bundle) {
        if (z) {
            runOnUIThread(new Runnable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() throws NumberFormatException {
                    AndroidUtilities.lambda$googleVoiceClientService_performAction$2(intent);
                }
            });
        }
    }

    public static boolean gzip(File file, File file2) throws IOException {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
                try {
                    byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM];
                    while (true) {
                        int i = bufferedInputStream.read(bArr);
                        if (i == -1) {
                            gZIPOutputStream.close();
                            bufferedInputStream.close();
                            return true;
                        }
                        gZIPOutputStream.write(bArr, 0, i);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException | IOException e) {
            FileLog.e(e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean handleProxyIntent(Activity activity, Intent intent) {
        Uri data;
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String str;
        String str2;
        String path;
        String queryParameter4;
        String queryParameter5;
        if (intent == null) {
            return false;
        }
        try {
            if ((intent.getFlags() & FileLoaderPriorityQueue.PRIORITY_VALUE_MAX) == 0 && (data = intent.getData()) != null) {
                String scheme = data.getScheme();
                if (scheme == null) {
                    queryParameter = null;
                    queryParameter2 = null;
                    queryParameter3 = null;
                    str = null;
                    str2 = null;
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                        showProxyAlert(activity, str, str2, queryParameter2 != null ? "" : queryParameter2, queryParameter3 != null ? "" : queryParameter3, queryParameter != null ? "" : queryParameter);
                        return true;
                    }
                } else {
                    if (scheme.equals("http") || scheme.equals("https")) {
                        String lowerCase = data.getHost().toLowerCase();
                        if ((lowerCase.equals("telegram.me") || lowerCase.equals("t.me") || lowerCase.equals("telegram.dog")) && (path = data.getPath()) != null && (path.startsWith("/socks") || path.startsWith("/proxy"))) {
                            queryParameter4 = data.getQueryParameter("server");
                            if (checkHostForPunycode(queryParameter4)) {
                                queryParameter4 = IDN.toASCII(queryParameter4, 1);
                            }
                            queryParameter5 = data.getQueryParameter("port");
                            queryParameter2 = data.getQueryParameter("user");
                            queryParameter3 = data.getQueryParameter("pass");
                            queryParameter = data.getQueryParameter("secret");
                            str = queryParameter4;
                            str2 = queryParameter5;
                        }
                        queryParameter = null;
                        queryParameter2 = null;
                        queryParameter3 = null;
                        str = null;
                        str2 = null;
                    } else {
                        if (scheme.equals("tg")) {
                            String string = data.toString();
                            if (string.startsWith("tg:proxy") || string.startsWith("tg://proxy") || string.startsWith("tg:socks") || string.startsWith("tg://socks")) {
                                data = Uri.parse(string.replace("tg:proxy", "tg://telegram.org").replace("tg://proxy", "tg://telegram.org").replace("tg://socks", "tg://telegram.org").replace("tg:socks", "tg://telegram.org"));
                                queryParameter4 = data.getQueryParameter("server");
                                if (checkHostForPunycode(queryParameter4)) {
                                    queryParameter4 = IDN.toASCII(queryParameter4, 1);
                                }
                                queryParameter5 = data.getQueryParameter("port");
                                queryParameter2 = data.getQueryParameter("user");
                                queryParameter3 = data.getQueryParameter("pass");
                                queryParameter = data.getQueryParameter("secret");
                                str = queryParameter4;
                                str2 = queryParameter5;
                            }
                        }
                        queryParameter = null;
                        queryParameter2 = null;
                        queryParameter3 = null;
                        str = null;
                        str2 = null;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        showProxyAlert(activity, str, str2, queryParameter2 != null ? "" : queryParameter2, queryParameter3 != null ? "" : queryParameter3, queryParameter != null ? "" : queryParameter);
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean hasDialogOnTop(BaseFragment baseFragment) {
        List<View> listAllGlobalViews;
        if (baseFragment == null) {
            return false;
        }
        Dialog dialog = baseFragment.visibleDialog;
        if (dialog != null && !(dialog instanceof AlertDialog) && (!(dialog instanceof BottomSheet) || ((BottomSheet) dialog).attachedFragment == null)) {
            return true;
        }
        if (baseFragment.getParentLayout() == null || (listAllGlobalViews = allGlobalViews()) == null || listAllGlobalViews.isEmpty()) {
            return false;
        }
        View view = null;
        for (int size = listAllGlobalViews.size() - 1; size >= 0; size--) {
            view = listAllGlobalViews.get(size);
            Dialog dialog2 = baseFragment.visibleDialog;
            if ((!(dialog2 instanceof AlertDialog) || view != getRootView(((AlertDialog) dialog2).getContainerView())) && !(view instanceof AlertDialog.AlertDialogView) && !(view instanceof PipRoundVideoView.PipFrameLayout)) {
                break;
            }
        }
        return view != getRootView(baseFragment.getParentLayout().getView());
    }

    public static void hideKeyboard(View view) {
        if (view == null) {
            return;
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
            if (inputMethodManager.isActive()) {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static CharSequence highlightText(CharSequence charSequence, String str, Theme.ResourcesProvider resourcesProvider) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(charSequence)) {
            return null;
        }
        String lowerCase = charSequence.toString().toLowerCase();
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
        int iIndexOf = lowerCase.indexOf(str);
        while (iIndexOf >= 0) {
            try {
                spannableStringBuilderValueOf.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4, resourcesProvider), iIndexOf, Math.min(str.length() + iIndexOf, charSequence.length()), 0);
            } catch (Exception e) {
                FileLog.e(e);
            }
            iIndexOf = lowerCase.indexOf(str, iIndexOf + 1);
        }
        return spannableStringBuilderValueOf;
    }

    public static CharSequence highlightText(CharSequence charSequence, ArrayList<String> arrayList, Theme.ResourcesProvider resourcesProvider) {
        if (arrayList == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            CharSequence charSequenceHighlightText = highlightText(charSequence, arrayList.get(i2), resourcesProvider);
            if (charSequenceHighlightText != null) {
                charSequence = charSequenceHighlightText;
            } else {
                i++;
            }
        }
        if (i == arrayList.size()) {
            return null;
        }
        return charSequence;
    }

    public static int hsvToColor(double d, double d2, double d3) {
        int[] iArrHsvToRgb = hsvToRgb(d, d2, d3);
        return Color.argb(255, iArrHsvToRgb[0], iArrHsvToRgb[1], iArrHsvToRgb[2]);
    }

    public static int[] hsvToRgb(double d, double d2, double d3) {
        double d4 = d * 6.0d;
        double dFloor = (int) Math.floor(d4);
        Double.isNaN(dFloor);
        double d5 = d4 - dFloor;
        double d6 = (1.0d - d2) * d3;
        double d7 = (1.0d - (d5 * d2)) * d3;
        double d8 = (1.0d - ((1.0d - d5) * d2)) * d3;
        int i = ((int) dFloor) % 6;
        if (i == 0) {
            d3 = d6;
            d6 = d8;
            d8 = d3;
        } else if (i == 1) {
            d8 = d7;
            d3 = d6;
            d6 = d3;
        } else if (i == 2) {
            d8 = d6;
            d6 = d3;
            d3 = d8;
        } else if (i == 3) {
            d8 = d6;
            d6 = d7;
        } else if (i != 4) {
            if (i != 5) {
                d3 = 0.0d;
                d8 = 0.0d;
                d6 = 0.0d;
            } else {
                d8 = d3;
                d3 = d7;
            }
        }
        return new int[]{(int) (d8 * 255.0d), (int) (d6 * 255.0d), (int) (d3 * 255.0d)};
    }

    public static float ilerp(float f, float f2, float f3) {
        return (f - f2) / (f3 - f2);
    }

    public static float ilerp(int i, int i2, int i3) {
        return (i - i2) / (i3 - i2);
    }

    public static int indexOfIgnoreCase(String str, String str2) {
        if (str2.isEmpty() || str.isEmpty()) {
            return str.indexOf(str2);
        }
        for (int i = 0; i < str.length() && str2.length() + i <= str.length(); i++) {
            int i2 = 0;
            for (int i3 = i; i3 < str.length() && i2 < str2.length() && Character.toLowerCase(str.charAt(i3)) == Character.toLowerCase(str2.charAt(i2)); i3++) {
                i2++;
            }
            if (i2 == str2.length()) {
                return i;
            }
        }
        return -1;
    }

    public static boolean intersect1d(float f, float f2, float f3, float f4) {
        return Math.max(f, f2) > Math.min(f3, f4) && Math.max(f3, f4) > Math.min(f, f2);
    }

    public static boolean intersect1d(int i, int i2, int i3, int i4) {
        return Math.max(i, i2) > Math.min(i3, i4) && Math.max(i3, i4) > Math.min(i, i2);
    }

    public static boolean intersect1dInclusive(int i, int i2, int i3, int i4) {
        return Math.max(i, i2) >= Math.min(i3, i4) && Math.max(i3, i4) >= Math.min(i, i2);
    }

    public static boolean isAccessibilityScreenReaderEnabled() {
        return isAccessibilityTouchExplorationEnabled();
    }

    public static boolean isAccessibilityTouchExplorationEnabled() {
        if (accessibilityManager == null) {
            accessibilityManager = (AccessibilityManager) ApplicationLoader.applicationContext.getSystemService("accessibility");
        }
        return accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
    }

    public static boolean isActivityRunning(Activity activity) {
        return (activity == null || activity.isDestroyed() || activity.isFinishing()) ? false : true;
    }

    public static boolean isAirplaneModeOn() {
        return Settings.Global.getInt(ApplicationLoader.applicationContext.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isBannedForever(TLRPC.TL_chatBannedRights tL_chatBannedRights) {
        return tL_chatBannedRights == null || Math.abs(((long) tL_chatBannedRights.until_date) - (System.currentTimeMillis() / 1000)) > 157680000;
    }

    public static boolean isDarkColor(int i) {
        return computePerceivedBrightness(i) < 0.721f;
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isENOSPC(Exception exc) {
        return (Build.VERSION.SDK_INT >= 21 && (exc instanceof IOException) && MediaMetricsListener$$ExternalSyntheticApiModelOutline52.m(exc.getCause()) && MediaMetricsListener$$ExternalSyntheticApiModelOutline53.m(exc.getCause()).errno == OsConstants.ENOSPC) || (exc.getMessage() != null && exc.getMessage().equalsIgnoreCase("no space left on device"));
    }

    public static boolean isEROFS(Exception exc) {
        return (Build.VERSION.SDK_INT >= 21 && (exc instanceof IOException) && MediaMetricsListener$$ExternalSyntheticApiModelOutline52.m(exc.getCause()) && MediaMetricsListener$$ExternalSyntheticApiModelOutline53.m(exc.getCause()).errno == OsConstants.EROFS) || (exc.getMessage() != null && exc.getMessage().toLowerCase().contains("read-only file system"));
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isFilNotFoundException(Throwable th) {
        return (th instanceof FileNotFoundException) || (th instanceof EOFException);
    }

    public static boolean isHonor() {
        if (isHonor == null) {
            try {
                String lowerCase = Build.BRAND.toLowerCase();
                isHonor = Boolean.valueOf(lowerCase.contains("huawei") || lowerCase.contains("honor"));
            } catch (Exception e) {
                FileLog.e(e);
                isHonor = Boolean.FALSE;
            }
        }
        return isHonor.booleanValue();
    }

    public static boolean isInAirplaneMode(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isInPictureInPictureMode(Activity activity) {
        return Build.VERSION.SDK_INT >= 24 && activity.isInPictureInPictureMode();
    }

    public static boolean isInternalUri(int i) {
        return isInternalUri(null, i);
    }

    public static boolean isInternalUri(Uri uri) {
        return isInternalUri(uri, 0);
    }

    private static boolean isInternalUri(Uri uri, int i) throws IOException {
        String path;
        if (uri == null) {
            path = "";
            int i2 = 0;
            while (path.length() <= 4096) {
                try {
                    String str = Utilities.readlinkFd(i);
                    if (str != null && !str.equals(path)) {
                        i2++;
                        if (i2 >= 10) {
                            return true;
                        }
                        path = str;
                    }
                } catch (Throwable unused) {
                    return true;
                }
            }
            return true;
        }
        path = uri.getPath();
        if (path == null) {
            return false;
        }
        if (path.matches(Pattern.quote(new File(ApplicationLoader.applicationContext.getCacheDir(), "voip_logs").getAbsolutePath()) + "/\\d+\\.log")) {
            return false;
        }
        int i3 = 0;
        while (path.length() <= 4096) {
            try {
                String str2 = Utilities.readlink(path);
                if (str2 != null && !str2.equals(path)) {
                    i3++;
                    if (i3 >= 10) {
                        return true;
                    }
                    path = str2;
                }
            } catch (Throwable unused2) {
                return true;
            }
        }
        return true;
        try {
            String canonicalPath = new File(path).getCanonicalPath();
            if (canonicalPath != null) {
                path = canonicalPath;
            }
        } catch (Exception unused3) {
            path.replace("/./", "/");
        }
        if (path.endsWith(".attheme")) {
            return false;
        }
        return path.toLowerCase().contains("/data/data/" + ApplicationLoader.applicationContext.getPackageName());
    }

    public static boolean isKeyguardSecure() {
        return ((KeyguardManager) ApplicationLoader.applicationContext.getSystemService("keyguard")).isKeyguardSecure();
    }

    public static boolean isMapsInstalled(final BaseFragment baseFragment) throws PackageManager.NameNotFoundException {
        final String mapsAppPackageName = ApplicationLoader.getMapsProvider().getMapsAppPackageName();
        try {
            ApplicationLoader.applicationContext.getPackageManager().getApplicationInfo(mapsAppPackageName, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            if (baseFragment.getParentActivity() == null) {
                return false;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getParentActivity());
            builder.setMessage(LocaleController.getString(ApplicationLoader.getMapsProvider().getInstallMapsString()));
            builder.setPositiveButton(LocaleController.getString(R.string.OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda42
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    AndroidUtilities.lambda$isMapsInstalled$10(mapsAppPackageName, baseFragment, alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(R.string.Cancel), null);
            baseFragment.showDialog(builder.create());
            return false;
        }
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isNumeric(String str) throws NumberFormatException {
        try {
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean isPunctuationCharacter(char c) {
        if (charactersMap == null) {
            charactersMap = new HashSet<>();
            int i = 0;
            while (true) {
                char[] cArr = characters;
                if (i >= cArr.length) {
                    break;
                }
                charactersMap.add(Character.valueOf(cArr[i]));
                i++;
            }
        }
        return charactersMap.contains(Character.valueOf(c));
    }

    public static boolean isRTL(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0) {
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= 1424 && cCharAt <= 1791) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isSafeToShow(Context context) {
        Activity activityFindActivity = findActivity(context);
        if (activityFindActivity == null) {
            return true;
        }
        return isActivityRunning(activityFindActivity);
    }

    public static boolean isSimAvailable() {
        TelephonyManager telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
        int simState = telephonyManager.getSimState();
        return (simState == 1 || simState == 0 || telephonyManager.getPhoneType() == 0 || isAirplaneModeOn()) ? false : true;
    }

    public static boolean isSmallScreen() {
        if (isSmallScreen == null) {
            Point point = displaySize;
            isSmallScreen = Boolean.valueOf(((float) ((Math.max(point.x, point.y) - statusBarHeight) - navigationBarHeight)) / density <= 650.0f);
        }
        return isSmallScreen.booleanValue();
    }

    public static boolean isSmallTablet() {
        Point point = displaySize;
        return ((float) Math.min(point.x, point.y)) / density <= 690.0f;
    }

    public static boolean isTablet() {
        return isTabletInternal() && !SharedConfig.forceDisableTabletMode;
    }

    public static boolean isTabletForce() {
        return ApplicationLoader.applicationContext != null && ApplicationLoader.applicationContext.getResources().getBoolean(R.bool.isTablet);
    }

    public static boolean isTabletInternal() {
        if (isTablet == null) {
            isTablet = Boolean.valueOf(isTabletForce());
        }
        return isTablet.booleanValue();
    }

    public static boolean isValidWallChar(char c) {
        return c == '-' || c == '~';
    }

    public static boolean isWaitingForCall() {
        boolean z;
        synchronized (callLock) {
            z = waitingForCall;
        }
        return z;
    }

    public static boolean isWaitingForSms() {
        boolean z;
        synchronized (smsLock) {
            z = waitingForSms;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0050 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0072 A[Catch: Exception -> 0x0036, TryCatch #0 {Exception -> 0x0036, blocks: (B:5:0x0004, B:8:0x000f, B:11:0x0016, B:34:0x0056, B:36:0x005e, B:38:0x0066, B:40:0x0072, B:43:0x0079, B:45:0x0093, B:47:0x009b, B:50:0x00a5, B:53:0x00b6, B:55:0x00c2, B:56:0x00c5, B:58:0x00cb, B:60:0x00d2, B:63:0x00dd, B:65:0x00e3, B:68:0x00f0, B:69:0x00f4, B:113:0x018e, B:114:0x0191, B:117:0x019e, B:71:0x00f9, B:74:0x0104, B:77:0x0110, B:80:0x011b, B:83:0x0126, B:86:0x0130, B:89:0x013a, B:92:0x0145, B:95:0x014f, B:98:0x015a, B:101:0x0165, B:104:0x0170, B:107:0x017a, B:110:0x0185, B:122:0x01a9, B:124:0x01af, B:18:0x002c, B:23:0x0039, B:26:0x0043), top: B:129:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0078 A[ADDED_TO_REGION, REMOVE, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0079 A[Catch: Exception -> 0x0036, TryCatch #0 {Exception -> 0x0036, blocks: (B:5:0x0004, B:8:0x000f, B:11:0x0016, B:34:0x0056, B:36:0x005e, B:38:0x0066, B:40:0x0072, B:43:0x0079, B:45:0x0093, B:47:0x009b, B:50:0x00a5, B:53:0x00b6, B:55:0x00c2, B:56:0x00c5, B:58:0x00cb, B:60:0x00d2, B:63:0x00dd, B:65:0x00e3, B:68:0x00f0, B:69:0x00f4, B:113:0x018e, B:114:0x0191, B:117:0x019e, B:71:0x00f9, B:74:0x0104, B:77:0x0110, B:80:0x011b, B:83:0x0126, B:86:0x0130, B:89:0x013a, B:92:0x0145, B:95:0x014f, B:98:0x015a, B:101:0x0165, B:104:0x0170, B:107:0x017a, B:110:0x0185, B:122:0x01a9, B:124:0x01af, B:18:0x002c, B:23:0x0039, B:26:0x0043), top: B:129:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isWebAppLink(String str) {
        Uri uri;
        String scheme;
        String path;
        char c;
        if (str == null) {
            return false;
        }
        try {
            uri = Uri.parse(str);
            scheme = uri.getScheme();
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (scheme == null || (path = uri.getPath()) == null) {
            return false;
        }
        int iHashCode = scheme.hashCode();
        if (iHashCode == 3699) {
            if (scheme.equals("tg")) {
                c = 2;
            }
            if (c == 0) {
            }
        } else if (iHashCode != 3213448) {
            c = (iHashCode == 99617003 && scheme.equals("https")) ? (char) 1 : (char) 65535;
            if (c == 0 || c == 1) {
                if (!path.isEmpty()) {
                    return false;
                }
                String lowerCase = uri.getHost().toLowerCase();
                boolean zFind = LaunchActivity.PREFIX_T_ME_PATTERN.matcher(lowerCase).find();
                if (lowerCase.equals("telegram.me") || lowerCase.equals("t.me") || lowerCase.equals("telegram.dog") || zFind) {
                    ArrayList arrayList = new ArrayList(uri.getPathSegments());
                    if (arrayList.size() > 0 && ((String) arrayList.get(0)).equals("s")) {
                        arrayList.remove(0);
                    }
                    if (arrayList.size() <= 0 || (arrayList.size() >= 3 && "s".equals(arrayList.get(1)))) {
                        return false;
                    }
                    if (arrayList.size() > 1) {
                        String str2 = (String) arrayList.get(0);
                        if (TextUtils.isEmpty(str2)) {
                            return false;
                        }
                        switch (str2) {
                            case "joinchat":
                            case "login":
                            case "addstickers":
                            case "addemoji":
                            case "msg":
                            case "share":
                            case "confirmphone":
                            case "setlanguage":
                            case "addtheme":
                            case "boost":
                            case "c":
                            case "contact":
                            case "folder":
                            case "addlist":
                                break;
                            default:
                                String str3 = (String) arrayList.get(1);
                                if (!TextUtils.isEmpty(str3) && !str3.matches("^\\d+$")) {
                                }
                                break;
                        }
                        return false;
                    }
                    if (arrayList.size() == 1) {
                        return !TextUtils.isEmpty(uri.getQueryParameter("startapp"));
                    }
                }
            } else if (c == 2 && (str.startsWith("tg:resolve") || str.startsWith("tg://resolve"))) {
                return !TextUtils.isEmpty(uri.getQueryParameter("appname"));
            }
        } else {
            if (scheme.equals("http")) {
                c = 0;
            }
            if (c == 0) {
                if (!path.isEmpty()) {
                }
            }
        }
        return false;
    }

    public static boolean isWifiEnabled(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager != null) {
                return wifiManager.isWifiEnabled();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$addLinksSafe$7(SpannableStringBuilder spannableStringBuilder, int i, boolean z, boolean z2) {
        return Boolean.valueOf(addLinks(spannableStringBuilder, i, z, z2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$doOnPreDraw$24(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener[] onPreDrawListenerArr, boolean[] zArr, Runnable runnable) {
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListenerArr[0]);
        }
        if (!zArr[0]) {
            zArr[0] = true;
            runnable.run();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$doSafe$8(Utilities.Callback0Return callback0Return) {
        try {
            return (Boolean) callback0Return.run();
        } catch (Exception e) {
            FileLog.e(e);
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$formatSpannable$15(Integer num) {
        return "%" + (num.intValue() + 1) + "$s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$formatSpannableSimple$14(Integer num) {
        return "%s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$googleVoiceClientService_performAction$2(Intent intent) throws NumberFormatException {
        try {
            int i = UserConfig.selectedAccount;
            ApplicationLoader.postInitApplication();
            if (!needShowPasscode() && !SharedConfig.isWaitingForPasscodeEnter) {
                String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                String stringExtra2 = intent.getStringExtra("com.google.android.voicesearch.extra.RECIPIENT_CONTACT_URI");
                long j = Long.parseLong(intent.getStringExtra("com.google.android.voicesearch.extra.RECIPIENT_CONTACT_CHAT_ID"));
                TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
                if (user == null && (user = MessagesStorage.getInstance(i).getUserSync(j)) != null) {
                    MessagesController.getInstance(i).putUser(user, true);
                }
                if (user != null) {
                    ContactsController.getInstance(i).markAsContacted(stringExtra2);
                    SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.of(stringExtra, user.id, null, null, null, true, null, null, null, true, 0, null, false));
                }
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isMapsInstalled$10(String str, BaseFragment baseFragment, AlertDialog alertDialog, int i) {
        try {
            baseFragment.getParentActivity().startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)), 500);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$notifyDataSetChanged$23(RecyclerView recyclerView) {
        if (recyclerView.getAdapter() != null) {
            recyclerView.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$pruneOverlaps$9(LinkSpec linkSpec, LinkSpec linkSpec2) {
        int i;
        int i2;
        int i3 = linkSpec.start;
        int i4 = linkSpec2.start;
        if (i3 < i4) {
            return -1;
        }
        if (i3 <= i4 && (i = linkSpec.end) >= (i2 = linkSpec2.end)) {
            return i > i2 ? -1 : 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$recycleBitmaps$0(ArrayList arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            Bitmap bitmap = (Bitmap) ((WeakReference) arrayList.get(i)).get();
            ((WeakReference) arrayList.get(i)).clear();
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    bitmap.recycle();
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$recycleBitmaps$1(final ArrayList arrayList) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.lambda$recycleBitmaps$0(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$scrollToFragmentRow$21(BaseFragment baseFragment, String str, RecyclerListView recyclerListView) {
        try {
            Field declaredField = baseFragment.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerListView.getLayoutManager();
            int i = declaredField.getInt(baseFragment);
            try {
                linearLayoutManager.scrollToPositionWithOffset(i, dp(60.0f));
                declaredField.setAccessible(false);
                return i;
            } catch (Throwable unused) {
                return i;
            }
        } catch (Throwable unused2) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setNavigationBarColor$20(IntColorCallback intColorCallback, Window window, ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (intColorCallback != null) {
            intColorCallback.run(iIntValue);
        }
        try {
            window.setNavigationBarColor(iIntValue);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setWaitingForSms$11(Void r0) {
        if (BuildVars.DEBUG_VERSION) {
            FileLog.d("sms listener registered");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$shakeView$12(View view, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        double d = fFloatValue * 4.0f * (1.0f - fFloatValue);
        double d2 = fFloatValue;
        Double.isNaN(d2);
        double dSin = Math.sin(d2 * 3.141592653589793d * 4.0d);
        Double.isNaN(d);
        double d3 = d * dSin;
        double dDp = dp(4.0f);
        Double.isNaN(dDp);
        view.setTranslationX((float) (d3 * dDp));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$shakeViewSpring$13(Runnable runnable, View view, float f, DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
        if (runnable != null) {
            runnable.run();
        }
        view.setTranslationX(f);
        view.setTag(R.id.spring_tag, null);
        view.setTag(R.id.spring_was_translation_x_tag, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showProxyAlert$16(long j, TextDetailSettingsCell textDetailSettingsCell) {
        TextView textView;
        int i;
        if (j == -1) {
            textDetailSettingsCell.getTextView().setText(LocaleController.getString(R.string.Unavailable));
            textView = textDetailSettingsCell.getTextView();
            i = Theme.key_text_RedRegular;
        } else {
            textDetailSettingsCell.getTextView().setText(LocaleController.getString(R.string.Available) + ", " + LocaleController.formatString(R.string.Ping, Long.valueOf(j)));
            textView = textDetailSettingsCell.getTextView();
            i = Theme.key_windowBackgroundWhiteGreenText;
        }
        textView.setTextColor(Theme.getColor(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showProxyAlert$17(final TextDetailSettingsCell textDetailSettingsCell, final long j) {
        runOnUIThread(new Runnable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.lambda$showProxyAlert$16(j, textDetailSettingsCell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showProxyAlert$19(String str, String str2, String str3, String str4, String str5, Activity activity, Runnable runnable, View view) {
        SharedConfig.ProxyInfo proxyInfo;
        UndoView undoView;
        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
        editorEdit.putBoolean("proxy_enabled", true);
        editorEdit.putString("proxy_ip", str);
        int iIntValue = Utilities.parseInt((CharSequence) str2).intValue();
        editorEdit.putInt("proxy_port", iIntValue);
        if (TextUtils.isEmpty(str3)) {
            editorEdit.remove("proxy_secret");
            if (TextUtils.isEmpty(str4)) {
                editorEdit.remove("proxy_pass");
            } else {
                editorEdit.putString("proxy_pass", str4);
            }
            if (TextUtils.isEmpty(str5)) {
                editorEdit.remove("proxy_user");
            } else {
                editorEdit.putString("proxy_user", str5);
            }
            proxyInfo = new SharedConfig.ProxyInfo(str, iIntValue, str5, str4, "");
        } else {
            editorEdit.remove("proxy_pass");
            editorEdit.remove("proxy_user");
            editorEdit.putString("proxy_secret", str3);
            proxyInfo = new SharedConfig.ProxyInfo(str, iIntValue, "", "", str3);
        }
        editorEdit.commit();
        SharedConfig.currentProxy = SharedConfig.addProxy(proxyInfo);
        ConnectionsManager.setProxySettings(true, str, iIntValue, str5, str4, str3);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.proxySettingsChanged, new Object[0]);
        if (activity instanceof LaunchActivity) {
            BaseFragment lastFragment = ((LaunchActivity) activity).getActionBarLayout().getLastFragment();
            if (!(lastFragment instanceof ChatActivity) || (undoView = ((ChatActivity) lastFragment).getUndoView()) == null) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 6, LocaleController.getString(R.string.ProxyAddedSuccess));
            } else {
                undoView.showWithAction(0L, 87, (Runnable) null);
            }
        } else {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 6, LocaleController.getString(R.string.ProxyAddedSuccess));
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$6(CharSequence charSequence, int i, int i2) {
        return i == 0 || charSequence.charAt(i - 1) != '@';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateImageViewImageAnimated$22(ImageView imageView, AtomicBoolean atomicBoolean, Drawable drawable, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fAbs = Math.abs(fFloatValue - 0.5f) + 0.5f;
        imageView.setScaleX(fAbs);
        imageView.setScaleY(fAbs);
        if (fFloatValue < 0.5f || atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        imageView.setImageDrawable(drawable);
    }

    public static double lerp(double d, double d2, float f) {
        double d3 = f;
        Double.isNaN(d3);
        return d + (d3 * (d2 - d));
    }

    public static float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static float lerp(boolean z, boolean z2, float f) {
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        float f4 = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        if (z) {
            f2 = 1.0f;
        }
        return f3 + (f * (f4 - f2));
    }

    public static float lerp(float[] fArr, float f) {
        return lerp(fArr[0], fArr[1], f);
    }

    public static int lerp(int i, int i2, float f) {
        return (int) (i + (f * (i2 - i)));
    }

    public static void lerp(Matrix matrix, Matrix matrix2, float f, Matrix matrix3) {
        if (matrix == null || matrix2 == null) {
            return;
        }
        float[] fArr = tempFloats;
        matrix.getValues(fArr);
        float[] fArr2 = tempFloats2;
        matrix2.getValues(fArr2);
        lerp(fArr, fArr2, f, fArr2);
        matrix3.setValues(fArr2);
    }

    public static void lerp(Rect rect, Rect rect2, float f, Rect rect3) {
        if (rect3 != null) {
            rect3.set(lerp(rect.left, rect2.left, f), lerp(rect.top, rect2.top, f), lerp(rect.right, rect2.right, f), lerp(rect.bottom, rect2.bottom, f));
        }
    }

    public static void lerp(Rect rect, RectF rectF, float f, RectF rectF2) {
        if (rectF2 != null) {
            rectF2.set(lerp(rect.left, rectF.left, f), lerp(rect.top, rectF.top, f), lerp(rect.right, rectF.right, f), lerp(rect.bottom, rectF.bottom, f));
        }
    }

    public static void lerp(RectF rectF, Rect rect, float f, RectF rectF2) {
        if (rectF2 != null) {
            rectF2.set(lerp(rectF.left, rect.left, f), lerp(rectF.top, rect.top, f), lerp(rectF.right, rect.right, f), lerp(rectF.bottom, rect.bottom, f));
        }
    }

    public static void lerp(RectF rectF, RectF rectF2, float f, RectF rectF3) {
        if (rectF3 != null) {
            rectF3.set(lerp(rectF.left, rectF2.left, f), lerp(rectF.top, rectF2.top, f), lerp(rectF.right, rectF2.right, f), lerp(rectF.bottom, rectF2.bottom, f));
        }
    }

    public static void lerp(float[] fArr, float[] fArr2, float f, float[] fArr3) {
        if (fArr3 == null) {
            return;
        }
        int i = 0;
        while (i < fArr3.length) {
            float f2 = BitmapDescriptorFactory.HUE_RED;
            float f3 = (fArr == null || i >= fArr.length) ? BitmapDescriptorFactory.HUE_RED : fArr[i];
            if (fArr2 != null && i < fArr2.length) {
                f2 = fArr2[i];
            }
            fArr3[i] = lerp(f3, f2, f);
            i++;
        }
    }

    public static void lerp(int[] iArr, int[] iArr2, float f, int[] iArr3) {
        if (iArr3 == null) {
            return;
        }
        int i = 0;
        while (i < iArr3.length) {
            iArr3[i] = lerp((iArr == null || i >= iArr.length) ? 0 : iArr[i], (iArr2 == null || i >= iArr2.length) ? 0 : iArr2[i], f);
            i++;
        }
    }

    public static float lerpAngle(float f, float f2, float f3) {
        return ((f + ((((((f2 - f) + 360.0f) + 180.0f) % 360.0f) - 180.0f) * f3)) + 360.0f) % 360.0f;
    }

    public static void lerpCentered(Rect rect, Rect rect2, float f, Rect rect3) {
        if (rect3 == null) {
            return;
        }
        float fLerp = lerp(rect.centerX(), rect2.centerX(), f);
        float fLerp2 = lerp(rect.centerY(), rect2.centerY(), f);
        float fLerp3 = lerp(rect.width(), rect2.width(), Math.min(1.0f, f)) / 2.0f;
        float fLerp4 = lerp(rect.height(), rect2.height(), Math.min(1.0f, f)) / 2.0f;
        rect3.set((int) (fLerp - fLerp3), (int) (fLerp2 - fLerp4), (int) (fLerp + fLerp3), (int) (fLerp2 + fLerp4));
    }

    public static void lerpCentered(RectF rectF, RectF rectF2, float f, RectF rectF3) {
        if (rectF3 == null) {
            return;
        }
        float fLerp = lerp(rectF.centerX(), rectF2.centerX(), f);
        float fLerp2 = lerp(rectF.centerY(), rectF2.centerY(), f);
        float fLerp3 = lerp(rectF.width(), rectF2.width(), Math.min(1.0f, f)) / 2.0f;
        float fLerp4 = lerp(rectF.height(), rectF2.height(), Math.min(1.0f, f)) / 2.0f;
        rectF3.set(fLerp - fLerp3, fLerp2 - fLerp4, fLerp + fLerp3, fLerp2 + fLerp4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.telegram.messenger.AndroidUtilities$1] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static ArrayList<TLRPC.User> loadVCardFromStream(Uri uri, int i, boolean z, ArrayList<VcardItem> arrayList, String str) {
        InputStream inputStreamCreateInputStream;
        String str2;
        byte[] bArrDecodeQuotedPrintable;
        VcardItem vcardItem;
        ArrayList<VcardItem> arrayList2 = arrayList;
        ArrayList<TLRPC.User> arrayList3 = 0;
        arrayList3 = 0;
        if (z) {
            try {
                inputStreamCreateInputStream = ApplicationLoader.applicationContext.getContentResolver().openAssetFileDescriptor(uri, "r").createInputStream();
            } catch (Throwable th) {
                th = th;
                FileLog.e(th);
                return arrayList3;
            }
        } else {
            try {
                inputStreamCreateInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
            } catch (Throwable th2) {
                th = th2;
                arrayList3 = 0;
                FileLog.e(th);
                return arrayList3;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamCreateInputStream, "UTF-8"));
        int i2 = 0;
        VcardData vcardData = null;
        String strSubstring = null;
        VcardItem vcardItem2 = null;
        boolean z2 = false;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                try {
                    break;
                } catch (Exception e) {
                    FileLog.e(e);
                }
            } else if (line.startsWith("PHOTO")) {
                z2 = true;
            } else {
                if (line.indexOf(58) >= 0) {
                    if (line.startsWith("BEGIN:VCARD")) {
                        vcardData = new VcardData();
                        arrayList4.add(vcardData);
                        vcardData.name = str;
                    } else {
                        if (!line.startsWith("END:VCARD") && arrayList2 != null) {
                            if (line.startsWith("TEL")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = i2;
                            } else if (line.startsWith("EMAIL")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 1;
                            } else if (line.startsWith("ADR") || line.startsWith("LABEL") || line.startsWith("GEO")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 2;
                            } else if (line.startsWith("URL")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 3;
                            } else if (line.startsWith("NOTE")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 4;
                            } else if (line.startsWith("BDAY")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 5;
                            } else if (line.startsWith("ORG") || line.startsWith("TITLE") || line.startsWith("ROLE")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 6;
                            } else if (line.startsWith("X-ANDROID")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = -1;
                            } else if (!line.startsWith("X-PHONETIC") && line.startsWith("X-")) {
                                vcardItem = new VcardItem();
                                vcardItem.type = 20;
                            } else {
                                vcardItem = arrayList3;
                            }
                            if (vcardItem != null && vcardItem.type >= 0) {
                                arrayList2.add(vcardItem);
                            }
                        }
                        vcardItem2 = vcardItem;
                        z2 = false;
                    }
                    vcardItem = arrayList3;
                    vcardItem2 = vcardItem;
                    z2 = false;
                }
                if (!z2 && vcardData != null) {
                    if (vcardItem2 == null) {
                        if (vcardData.vcard.length() > 0) {
                            vcardData.vcard.append('\n');
                        }
                        vcardData.vcard.append(line);
                    } else {
                        vcardItem2.vcardData.add(line);
                    }
                }
                if (strSubstring != null) {
                    line = strSubstring + line;
                    strSubstring = null;
                }
                if (line.contains("=QUOTED-PRINTABLE") && line.endsWith(ContainerUtils.KEY_VALUE_DELIMITER)) {
                    strSubstring = line.substring(i2, line.length() - 1);
                    arrayList3 = 0;
                } else {
                    if (!z2 && vcardData != null && vcardItem2 != null) {
                        vcardItem2.fullData = line;
                    }
                    int iIndexOf = line.indexOf(":");
                    String[] strArr = iIndexOf >= 0 ? new String[]{line.substring(i2, iIndexOf), line.substring(iIndexOf + 1).trim()} : new String[]{line.trim()};
                    if (strArr.length < 2 || vcardData == null) {
                        str2 = strSubstring;
                        arrayList2 = arrayList;
                        strSubstring = str2;
                        arrayList3 = 0;
                        i2 = 0;
                    } else {
                        if (!strArr[i2].startsWith("FN") && !strArr[i2].startsWith("N") && (!strArr[i2].startsWith("ORG") || !TextUtils.isEmpty(vcardData.name))) {
                            if (strArr[i2].startsWith("TEL")) {
                                vcardData.phones.add(strArr[1]);
                            }
                            str2 = strSubstring;
                            arrayList2 = arrayList;
                            strSubstring = str2;
                            arrayList3 = 0;
                            i2 = 0;
                        }
                        String[] strArrSplit = strArr[i2].split(";");
                        int length = strArrSplit.length;
                        int i3 = 0;
                        String str3 = null;
                        String str4 = null;
                        while (i3 < length) {
                            String[] strArrSplit2 = strArrSplit[i3].split(ContainerUtils.KEY_VALUE_DELIMITER);
                            String[] strArr2 = strArrSplit;
                            String str5 = strSubstring;
                            if (strArrSplit2.length == 2) {
                                if (strArrSplit2[0].equals("CHARSET")) {
                                    str4 = strArrSplit2[1];
                                } else if (strArrSplit2[0].equals("ENCODING")) {
                                    str3 = strArrSplit2[1];
                                }
                            }
                            i3++;
                            strArrSplit = strArr2;
                            strSubstring = str5;
                        }
                        str2 = strSubstring;
                        vcardData.name = strArr[0].startsWith("N") ? strArr[1].replace(';', ' ').trim() : strArr[1];
                        String str6 = str3;
                        if (str6 != null && str6.equalsIgnoreCase("QUOTED-PRINTABLE") && (bArrDecodeQuotedPrintable = decodeQuotedPrintable(getStringBytes(vcardData.name))) != null && bArrDecodeQuotedPrintable.length != 0) {
                            vcardData.name = new String(bArrDecodeQuotedPrintable, str4);
                        }
                        arrayList2 = arrayList;
                        strSubstring = str2;
                        arrayList3 = 0;
                        i2 = 0;
                    }
                }
            }
        }
        bufferedReader.close();
        inputStreamCreateInputStream.close();
        ArrayList<TLRPC.User> arrayList5 = null;
        for (int i4 = 0; i4 < arrayList4.size(); i4++) {
            try {
                VcardData vcardData2 = (VcardData) arrayList4.get(i4);
                if (vcardData2.name != null && !vcardData2.phones.isEmpty()) {
                    ArrayList<TLRPC.User> arrayList6 = arrayList5 == null ? new ArrayList<>() : arrayList5;
                    try {
                        String str7 = vcardData2.phones.get(0);
                        int i5 = 0;
                        while (true) {
                            if (i5 >= vcardData2.phones.size()) {
                                break;
                            }
                            String str8 = vcardData2.phones.get(i5);
                            if (ContactsController.getInstance(i).contactsByShortPhone.get(str8.substring(Math.max(0, str8.length() - 7))) != null) {
                                str7 = str8;
                                break;
                            }
                            i5++;
                        }
                        TLRPC.TL_userContact_old2 tL_userContact_old2 = new TLRPC.TL_userContact_old2();
                        tL_userContact_old2.phone = str7;
                        tL_userContact_old2.first_name = vcardData2.name;
                        tL_userContact_old2.last_name = "";
                        tL_userContact_old2.id = 0L;
                        TLRPC.RestrictionReason restrictionReason = new TLRPC.RestrictionReason();
                        restrictionReason.text = vcardData2.vcard.toString();
                        restrictionReason.platform = "";
                        restrictionReason.reason = "";
                        tL_userContact_old2.restriction_reason.add(restrictionReason);
                        arrayList6.add(tL_userContact_old2);
                        arrayList5 = arrayList6;
                    } catch (Throwable th3) {
                        th = th3;
                        arrayList3 = arrayList6;
                        FileLog.e(th);
                        return arrayList3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                arrayList3 = arrayList5;
            }
        }
        return arrayList5;
    }

    public static void lockOrientation(Activity activity) {
        if (activity == null || prevOrientation != -10) {
            return;
        }
        try {
            prevOrientation = activity.getRequestedOrientation();
            WindowManager windowManager = (WindowManager) activity.getSystemService("window");
            if (windowManager != null && windowManager.getDefaultDisplay() != null) {
                int rotation = windowManager.getDefaultDisplay().getRotation();
                int i = activity.getResources().getConfiguration().orientation;
                if (rotation == 3) {
                    if (i == 1) {
                        activity.setRequestedOrientation(1);
                    }
                    activity.setRequestedOrientation(8);
                } else if (rotation == 1) {
                    if (i == 1) {
                        activity.setRequestedOrientation(9);
                    }
                    activity.setRequestedOrientation(0);
                } else if (rotation == 0) {
                    if (i == 2) {
                        activity.setRequestedOrientation(0);
                    } else {
                        activity.setRequestedOrientation(1);
                    }
                } else if (i == 2) {
                    activity.setRequestedOrientation(8);
                } else {
                    activity.setRequestedOrientation(9);
                }
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void lockOrientation(Activity activity, int i) {
        if (activity == null) {
            return;
        }
        try {
            prevOrientation = activity.getRequestedOrientation();
            activity.setRequestedOrientation(i);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void logFlagSecure() {
    }

    public static void makeAccessibilityAnnouncement(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        AccessibilityManager accessibilityManager2 = (AccessibilityManager) ApplicationLoader.applicationContext.getSystemService("accessibility");
        if (accessibilityManager2.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
            accessibilityEventObtain.setEventType(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM);
            accessibilityEventObtain.getText().add(charSequence);
            accessibilityManager2.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    public static Bitmap makeBlurBitmap(View view) {
        return makeBlurBitmap(view, 6.0f, 7);
    }

    public static Bitmap makeBlurBitmap(View view, float f, int i) {
        if (view == null) {
            return null;
        }
        int width = (int) (view.getWidth() / f);
        int height = (int) (view.getHeight() / f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f2 = 1.0f / f;
        canvas.scale(f2, f2);
        canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        view.draw(canvas);
        Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(i, Math.max(width, height) / 180));
        return bitmapCreateBitmap;
    }

    public static SpannableStringBuilder makeClickable(CharSequence charSequence, final int i, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (i == 0 || i == 3 || i == 2 || i == 4) {
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.3
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(i == 4);
                    if (i == 2) {
                        textPaint.setTypeface(AndroidUtilities.bold());
                    }
                }
            }, 0, spannableStringBuilder.length(), 0);
        } else {
            spannableStringBuilder.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.AndroidUtilities.4
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setTypeface(AndroidUtilities.bold());
                    int alpha = textPaint.getAlpha();
                    textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider));
                    textPaint.setAlpha(alpha);
                }
            }, 0, spannableStringBuilder.length(), 0);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder makeClickable(CharSequence charSequence, Runnable runnable) {
        return makeClickable(charSequence, 0, runnable, null);
    }

    public static void makeGlobalBlurBitmap(Utilities.Callback<Bitmap> callback, float f) {
        makeGlobalBlurBitmap(callback, f, (int) f, null, null);
    }

    public static void makeGlobalBlurBitmap(Utilities.Callback<Bitmap> callback, float f, int i, View view, List<View> list) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int width;
        int height;
        if (callback == null) {
            return;
        }
        List<View> listAllGlobalViews = allGlobalViews();
        if (listAllGlobalViews == null) {
            callback.run(null);
            return;
        }
        makingGlobalBlurBitmap = true;
        try {
            try {
                if (view == null) {
                    width = (int) (r7.x / f);
                    height = displaySize.y + statusBarHeight;
                } else {
                    width = (int) (view.getWidth() / f);
                    height = view.getHeight();
                }
                int i2 = (int) (height / f);
                int[] iArr = new int[2];
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                if (view != null) {
                    view.getLocationOnScreen(iArr);
                    canvas.translate((-iArr[0]) / f, (-iArr[1]) / f);
                }
                float f2 = 1.0f / f;
                canvas.scale(f2, f2);
                canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                for (int i3 = 0; i3 < listAllGlobalViews.size(); i3++) {
                    View view2 = listAllGlobalViews.get(i3);
                    if (!(view2 instanceof PipRoundVideoView.PipFrameLayout) && (list == null || !list.contains(view2))) {
                        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                        if (layoutParams instanceof WindowManager.LayoutParams) {
                            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
                            if ((layoutParams2.flags & 2) != 0) {
                                canvas.drawColor(ColorUtils.setAlphaComponent(-16777216, (int) (layoutParams2.dimAmount * 255.0f)));
                            }
                        }
                        canvas.save();
                        view2.getLocationOnScreen(iArr);
                        canvas.translate(iArr[0] / f, iArr[1] / f);
                        try {
                            view2.draw(canvas);
                        } catch (Exception e) {
                            FileLog.e(e);
                        }
                        canvas.restore();
                    }
                }
                Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(i, Math.max(width, i2) / 180));
                callback.run(bitmapCreateBitmap);
            } catch (Exception e2) {
                FileLog.e(e2);
                callback.run(null);
            }
            makingGlobalBlurBitmap = false;
        } catch (Throwable th) {
            makingGlobalBlurBitmap = false;
            throw th;
        }
    }

    private static String makeUrl(String str, String[] strArr, Matcher matcher) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                z = false;
                break;
            }
            String str2 = strArr[i];
            if (str.regionMatches(true, 0, str2, 0, str2.length())) {
                String str3 = strArr[i];
                z = true;
                if (!str.regionMatches(false, 0, str3, 0, str3.length())) {
                    str = strArr[i] + str.substring(strArr[i].length());
                }
            } else {
                i++;
            }
        }
        if (z || strArr.length <= 0) {
            return str;
        }
        return strArr[0] + str;
    }

    public static int multiplyAlphaComponent(int i, float f) {
        return ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * f));
    }

    public static void multiplyBrightnessColorMatrix(ColorMatrix colorMatrix, float f) {
        if (colorMatrix == null) {
            return;
        }
        colorMatrix.postConcat(new ColorMatrix(new float[]{f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED}));
    }

    public static boolean needShowPasscode() {
        return needShowPasscode(false);
    }

    public static boolean needShowPasscode(boolean z) {
        boolean zIsWasInBackground = ForegroundDetector.getInstance().isWasInBackground(z);
        if (z) {
            ForegroundDetector.getInstance().resetBackgroundVar();
        }
        int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
        if (BuildVars.LOGS_ENABLED && z && SharedConfig.passcodeHash.length() > 0) {
            FileLog.d("wasInBackground = " + zIsWasInBackground + " appLocked = " + SharedConfig.appLocked + " autoLockIn = " + SharedConfig.autoLockIn + " lastPauseTime = " + SharedConfig.lastPauseTime + " uptime = " + iElapsedRealtime);
        }
        return SharedConfig.passcodeHash.length() > 0 && zIsWasInBackground && (SharedConfig.appLocked || (!(SharedConfig.autoLockIn == 0 || SharedConfig.lastPauseTime == 0 || SharedConfig.appLocked || SharedConfig.lastPauseTime + SharedConfig.autoLockIn > iElapsedRealtime) || iElapsedRealtime + 5 < SharedConfig.lastPauseTime));
    }

    public static void normalizeTimePart(StringBuilder sb, int i) {
        if (i < 10) {
            sb.append("0");
        }
        sb.append(i);
    }

    public static void normalizeTimePart(StringBuilder sb, long j) {
        if (j < 10) {
            sb.append("0");
        }
        sb.append(j);
    }

    public static void notifyDataSetChanged(final RecyclerView recyclerView) {
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        if (recyclerView.isComputingLayout()) {
            recyclerView.post(new Runnable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.lambda$notifyDataSetChanged$23(recyclerView);
                }
            });
        } else {
            recyclerView.getAdapter().notifyDataSetChanged();
        }
    }

    public static String obtainLoginPhoneCall(String str) {
        if (!hasCallPermissions) {
            return null;
        }
        try {
            Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number", "date"}, "type IN (3,1,5)", null, Build.VERSION.SDK_INT >= 26 ? "date DESC" : "date DESC LIMIT 5");
            while (cursorQuery.moveToNext()) {
                try {
                    String string = cursorQuery.getString(0);
                    long j = cursorQuery.getLong(1);
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.e("number = " + string);
                    }
                    if (Math.abs(System.currentTimeMillis() - j) < 3600000 && checkPhonePattern(str, string)) {
                        cursorQuery.close();
                        return string;
                    }
                } finally {
                }
            }
            cursorQuery.close();
        } catch (Exception e) {
            FileLog.e(e);
        }
        return null;
    }

    public static void openDocument(MessageObject messageObject, Activity activity, BaseFragment baseFragment) {
        TLRPC.Document document;
        AlertDialog alertDialogCreate;
        String mimeTypeFromExtension;
        Uri uriFromFile;
        String str;
        Uri uriFromFile2;
        if (messageObject == null || (document = messageObject.getDocument()) == null) {
            return;
        }
        String attachFileName = messageObject.messageOwner.media != null ? FileLoader.getAttachFileName(document) : "";
        String str2 = messageObject.messageOwner.attachPath;
        File file = (str2 == null || str2.length() == 0) ? null : new File(messageObject.messageOwner.attachPath);
        if (file == null || !file.exists()) {
            file = FileLoader.getInstance(UserConfig.selectedAccount).getPathToMessage(messageObject.messageOwner);
        }
        if (file == null || !file.exists()) {
            return;
        }
        if (baseFragment == null || !file.getName().toLowerCase().endsWith("attheme")) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(1);
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                int iLastIndexOf = attachFileName.lastIndexOf(46);
                if (iLastIndexOf == -1 || ((mimeTypeFromExtension = singleton.getMimeTypeFromExtension(attachFileName.substring(iLastIndexOf + 1).toLowerCase())) == null && ((mimeTypeFromExtension = document.mime_type) == null || mimeTypeFromExtension.length() == 0))) {
                    mimeTypeFromExtension = null;
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    uriFromFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", file);
                    str = mimeTypeFromExtension != null ? mimeTypeFromExtension : "text/plain";
                } else {
                    uriFromFile = Uri.fromFile(file);
                    if (mimeTypeFromExtension != null) {
                    }
                }
                intent.setDataAndType(uriFromFile, str);
                if (mimeTypeFromExtension != null) {
                    try {
                        activity.startActivityForResult(intent, 500);
                        return;
                    } catch (Exception unused) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            uriFromFile2 = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", file);
                        } else {
                            uriFromFile2 = Uri.fromFile(file);
                        }
                        intent.setDataAndType(uriFromFile2, "text/plain");
                    }
                }
                activity.startActivityForResult(intent, 500);
                return;
            } catch (Exception unused2) {
                if (activity == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                HashMap map = new HashMap();
                int i = Theme.key_dialogTopBackground;
                map.put("info1.**", Integer.valueOf(baseFragment.getThemedColor(i)));
                map.put("info2.**", Integer.valueOf(baseFragment.getThemedColor(i)));
                builder.setTopAnimation(R.raw.not_available, 52, false, baseFragment.getThemedColor(i), map);
                builder.setTopAnimationIsNew(true);
                builder.setPositiveButton(LocaleController.getString(R.string.OK), null);
                builder.setMessage(LocaleController.formatString("NoHandleAppInstalled", R.string.NoHandleAppInstalled, messageObject.getDocument().mime_type));
                alertDialogCreate = builder.create();
            }
        } else {
            Theme.ThemeInfo themeInfoApplyThemeFile = Theme.applyThemeFile(file, messageObject.getDocumentName(), null, true);
            if (themeInfoApplyThemeFile != null) {
                baseFragment.presentFragment(new ThemePreviewActivity(themeInfoApplyThemeFile));
                return;
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(activity);
            HashMap map2 = new HashMap();
            int i2 = Theme.key_dialogTopBackground;
            map2.put("info1.**", Integer.valueOf(baseFragment.getThemedColor(i2)));
            map2.put("info2.**", Integer.valueOf(baseFragment.getThemedColor(i2)));
            builder2.setTopAnimation(R.raw.not_available, 52, false, baseFragment.getThemedColor(i2), map2);
            builder2.setTopAnimationIsNew(true);
            builder2.setMessage(LocaleController.getString(R.string.IncorrectTheme));
            builder2.setPositiveButton(LocaleController.getString(R.string.OK), null);
            alertDialogCreate = builder2.create();
        }
        baseFragment.showDialog(alertDialogCreate);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095 A[PHI: r7
      0x0095: PHI (r7v3 android.net.Uri) = (r7v2 android.net.Uri), (r7v9 android.net.Uri) binds: [B:36:0x0093, B:33:0x008c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0097 A[PHI: r7
      0x0097: PHI (r7v6 android.net.Uri) = (r7v2 android.net.Uri), (r7v9 android.net.Uri) binds: [B:36:0x0093, B:33:0x008c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean openForView(File file, String str, String str2, Activity activity, Theme.ResourcesProvider resourcesProvider, boolean z) {
        Uri uriFromFile;
        String str3;
        Uri uriFromFile2;
        if (file == null || !file.exists()) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(1);
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            String strSubstring = str.substring(iLastIndexOf + 1);
            if (z && MessageObject.isV(strSubstring)) {
                return true;
            }
            String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(strSubstring.toLowerCase());
            if (mimeTypeFromExtension != null) {
                str2 = mimeTypeFromExtension;
            } else if (str2 == null || str2.length() == 0) {
                str2 = null;
            }
        }
        if (str2 != null && str2.equals("application/vnd.android.package-archive")) {
            if (z) {
                return true;
            }
            if (Build.VERSION.SDK_INT >= 26 && !ApplicationLoader.applicationContext.getPackageManager().canRequestPackageInstalls()) {
                AlertsCreator.createApkRestrictedDialog(activity, resourcesProvider).show();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            uriFromFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", file);
            str3 = str2 != null ? str2 : "text/plain";
        } else {
            uriFromFile = Uri.fromFile(file);
            if (str2 != null) {
            }
        }
        intent.setDataAndType(uriFromFile, str3);
        if (str2 != null) {
            try {
                activity.startActivityForResult(intent, 500);
            } catch (Exception unused) {
                if (Build.VERSION.SDK_INT >= 24) {
                    uriFromFile2 = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", file);
                } else {
                    uriFromFile2 = Uri.fromFile(file);
                }
                intent.setDataAndType(uriFromFile2, "text/plain");
            }
        } else {
            activity.startActivityForResult(intent, 500);
        }
        return true;
    }

    public static boolean openForView(MessageObject messageObject, Activity activity, Theme.ResourcesProvider resourcesProvider, boolean z) {
        String str = messageObject.messageOwner.attachPath;
        File file = (str == null || str.length() == 0) ? null : new File(messageObject.messageOwner.attachPath);
        if (file == null || !file.exists()) {
            file = FileLoader.getInstance(messageObject.currentAccount).getPathToMessage(messageObject.messageOwner);
        }
        File file2 = file;
        int i = messageObject.type;
        return openForView(file2, messageObject.getFileName(), (i == 9 || i == 0) ? messageObject.getMimeType() : null, activity, resourcesProvider, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0056 A[PHI: r1
      0x0056: PHI (r1v9 java.lang.String) = (r1v8 java.lang.String), (r1v10 java.lang.String) binds: [B:13:0x0043, B:19:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0081 A[PHI: r8
      0x0081: PHI (r8v3 android.net.Uri) = (r8v2 android.net.Uri), (r8v9 android.net.Uri) binds: [B:28:0x007f, B:25:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0083 A[PHI: r8
      0x0083: PHI (r8v6 android.net.Uri) = (r8v2 android.net.Uri), (r8v9 android.net.Uri) binds: [B:28:0x007f, B:25:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean openForView(TLObject tLObject, Activity activity) {
        Uri uriFromFile;
        String str;
        Uri uriFromFile2;
        if (tLObject != null && activity != null) {
            String attachFileName = FileLoader.getAttachFileName(tLObject);
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLObject, true);
            if (pathToAttach != null && pathToAttach.exists()) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(1);
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                int iLastIndexOf = attachFileName.lastIndexOf(46);
                String str2 = null;
                if (iLastIndexOf != -1) {
                    String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(attachFileName.substring(iLastIndexOf + 1).toLowerCase());
                    if (mimeTypeFromExtension != null) {
                        str2 = mimeTypeFromExtension;
                    } else {
                        if (tLObject instanceof TLRPC.TL_document) {
                            mimeTypeFromExtension = ((TLRPC.TL_document) tLObject).mime_type;
                        }
                        if (mimeTypeFromExtension != null && mimeTypeFromExtension.length() != 0) {
                        }
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    uriFromFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", pathToAttach);
                    str = str2 != null ? str2 : "text/plain";
                } else {
                    uriFromFile = Uri.fromFile(pathToAttach);
                    if (str2 != null) {
                    }
                }
                intent.setDataAndType(uriFromFile, str);
                if (str2 != null) {
                    try {
                        activity.startActivityForResult(intent, 500);
                    } catch (Exception unused) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            uriFromFile2 = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", pathToAttach);
                        } else {
                            uriFromFile2 = Uri.fromFile(pathToAttach);
                        }
                        intent.setDataAndType(uriFromFile2, "text/plain");
                    }
                } else {
                    activity.startActivityForResult(intent, 500);
                }
                return true;
            }
        }
        return false;
    }

    public static boolean openForView(TLRPC.Document document, boolean z, Activity activity) {
        return openForView(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document, true), FileLoader.getAttachFileName(document), document.mime_type, activity, null, false);
    }

    public static void openSharing(BaseFragment baseFragment, String str) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        baseFragment.showDialog(new ShareAlert(baseFragment.getParentActivity(), null, str, false, str, false));
    }

    public static SpannableStringBuilder premiumText(String str, Runnable runnable) {
        return replaceSingleTag(str, -1, 2, runnable);
    }

    private static void printStackTrace(String str) {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            FileLog.d("[" + str + "] " + stackTraceElement);
        }
    }

    private static void pruneOverlaps(ArrayList<LinkSpec> arrayList) {
        int i;
        int i2;
        int i3;
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda34
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AndroidUtilities.lambda$pruneOverlaps$9((AndroidUtilities.LinkSpec) obj, (AndroidUtilities.LinkSpec) obj2);
            }
        });
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size - 1) {
            LinkSpec linkSpec = arrayList.get(i4);
            int i5 = i4 + 1;
            LinkSpec linkSpec2 = arrayList.get(i5);
            int i6 = linkSpec.start;
            int i7 = linkSpec2.start;
            if (i6 <= i7 && (i = linkSpec.end) > i7) {
                int i8 = linkSpec2.end;
                int i9 = (i8 > i && (i2 = i - i6) <= (i3 = i8 - i7)) ? i2 < i3 ? i4 : -1 : i5;
                if (i9 != -1) {
                    arrayList.remove(i9);
                    size--;
                }
            }
            i4 = i5;
        }
    }

    public static void quietSleep(long j) throws InterruptedException {
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
        }
    }

    public static String readRes(int i) {
        return readRes(null, i);
    }

    public static String readRes(File file) {
        return readRes(file, 0);
    }

    public static String readRes(File file, int i) {
        InputStream fileInputStream;
        byte[] bArr = readBufferLocal.get();
        if (bArr == null) {
            bArr = new byte[65536];
            readBufferLocal.set(bArr);
        }
        try {
            fileInputStream = file != null ? new FileInputStream(file) : ApplicationLoader.applicationContext.getResources().openRawResource(i);
        } catch (Throwable unused) {
            fileInputStream = null;
        }
        try {
            byte[] bArr2 = bufferLocal.get();
            if (bArr2 == null) {
                bArr2 = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
                bufferLocal.set(bArr2);
            }
            int i2 = 0;
            while (true) {
                int i3 = fileInputStream.read(bArr2, 0, bArr2.length);
                if (i3 >= 0) {
                    int i4 = i2 + i3;
                    if (bArr.length < i4) {
                        byte[] bArr3 = new byte[bArr.length * 2];
                        System.arraycopy(bArr, 0, bArr3, 0, i2);
                        readBufferLocal.set(bArr3);
                        bArr = bArr3;
                    }
                    if (i3 > 0) {
                        System.arraycopy(bArr2, 0, bArr, i2, i3);
                        i2 = i4;
                    }
                } else {
                    try {
                        break;
                    } catch (Throwable unused2) {
                    }
                }
            }
            fileInputStream.close();
            return new String(bArr, 0, i2);
        } catch (Throwable unused3) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused4) {
                }
            }
            return null;
        }
    }

    public static void recycleBitmap(Bitmap bitmap) {
        recycleBitmaps(Collections.singletonList(bitmap));
    }

    public static void recycleBitmaps(List<Bitmap> list) {
        if (Build.VERSION.SDK_INT <= 23 || list == null || list.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Bitmap bitmap = list.get(i);
            if (bitmap != null && !bitmap.isRecycled()) {
                arrayList.add(new WeakReference(bitmap));
            }
        }
        runOnUIThread(new Runnable() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.lambda$recycleBitmaps$1(arrayList);
            }
        }, 36L);
    }

    public static void removeAdjustResize(Activity activity, int i) {
        if (activity == null || isTablet() || adjustOwnerClassGuid != i) {
            return;
        }
        activity.getWindow().setSoftInputMode(32);
    }

    public static void removeAltFocusable(Activity activity, int i) {
        if (activity != null && altFocusableClassGuid == i) {
            activity.getWindow().clearFlags(131072);
        }
    }

    public static String removeDiacritics(String str) {
        Matcher matcher;
        if (str == null) {
            return null;
        }
        Pattern pattern = REMOVE_MULTIPLE_DIACRITICS;
        return (pattern == null || (matcher = pattern.matcher(str)) == null) ? str : matcher.replaceAll("$1");
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }

    public static String removeRTL(String str) {
        if (str == null) {
            return null;
        }
        if (REMOVE_RTL == null) {
            REMOVE_RTL = Pattern.compile("[\\u200E\\u200F\\u202A-\\u202E]");
        }
        Matcher matcher = REMOVE_RTL.matcher(str);
        return matcher == null ? str : matcher.replaceAll("");
    }

    public static CharSequence removeSpans(CharSequence charSequence, Class cls) {
        if (!(charSequence instanceof Spannable)) {
            return charSequence;
        }
        Spannable spannable = (Spannable) charSequence;
        for (Object obj : spannable.getSpans(0, spannable.length(), cls)) {
            spannable.removeSpan(obj);
        }
        return spannable;
    }

    public static CharSequence replaceArrows(CharSequence charSequence, boolean z) {
        return replaceArrows(charSequence, z, dp(2.6666667f), BitmapDescriptorFactory.HUE_RED, 1.0f);
    }

    public static CharSequence replaceArrows(CharSequence charSequence, boolean z, float f, float f2) {
        return replaceArrows(charSequence, z, f, f2, 1.0f);
    }

    public static CharSequence replaceArrows(CharSequence charSequence, boolean z, float f, float f2, float f3) {
        int i = R.drawable.msg_mini_forumarrow;
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(i, 0);
        float f4 = f3 * 0.88f;
        coloredImageSpan.setScale(f4, f4);
        coloredImageSpan.translate(-f, f2);
        coloredImageSpan.spaceScaleX = 0.8f;
        if (z) {
            coloredImageSpan.useLinkPaintColor = z;
        }
        SpannableString spannableString = new SpannableString(" >");
        spannableString.setSpan(coloredImageSpan, spannableString.length() - 1, spannableString.length(), 33);
        CharSequence charSequenceReplaceMultipleCharSequence = replaceMultipleCharSequence(" >", charSequence, spannableString);
        SpannableString spannableString2 = new SpannableString(">");
        spannableString2.setSpan(coloredImageSpan, 0, 1, 33);
        CharSequence charSequenceReplaceMultipleCharSequence2 = replaceMultipleCharSequence(">", charSequenceReplaceMultipleCharSequence, spannableString2);
        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(i, 0);
        coloredImageSpan2.setScale(f4, f4);
        coloredImageSpan2.translate(f, f2);
        coloredImageSpan2.rotate(180.0f);
        coloredImageSpan2.spaceScaleX = 0.8f;
        if (z) {
            coloredImageSpan2.useLinkPaintColor = z;
        }
        SpannableString spannableString3 = new SpannableString("<");
        spannableString3.setSpan(coloredImageSpan2, 0, 1, 33);
        return replaceMultipleCharSequence("<", charSequenceReplaceMultipleCharSequence2, spannableString3);
    }

    public static SpannableStringBuilder replaceCharSequence(String str, CharSequence charSequence, CharSequence charSequence2) {
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(charSequence);
        int iIndexOf = TextUtils.indexOf(charSequence, str);
        if (iIndexOf >= 0) {
            spannableStringBuilder.replace(iIndexOf, str.length() + iIndexOf, charSequence2);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceLinks(String str, Theme.ResourcesProvider resourcesProvider) {
        return replaceLinks(str, resourcesProvider, null);
    }

    public static SpannableStringBuilder replaceLinks(String str, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        if (linksPattern == null) {
            linksPattern = Pattern.compile("\\[(.+?)\\]\\((.+?)\\)");
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Matcher matcher = linksPattern.matcher(str);
        int iEnd = 0;
        while (matcher.find()) {
            spannableStringBuilder.append((CharSequence) str, iEnd, matcher.start());
            String strGroup = matcher.group(1);
            final String strGroup2 = matcher.group(2);
            spannableStringBuilder.append((CharSequence) strGroup);
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.9
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    Browser.openUrl(ApplicationLoader.applicationContext, strGroup2);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                    textPaint.setUnderlineText(false);
                }
            }, spannableStringBuilder.length() - strGroup.length(), spannableStringBuilder.length(), 33);
            iEnd = matcher.end();
        }
        spannableStringBuilder.append((CharSequence) str, iEnd, str.length());
        return spannableStringBuilder;
    }

    public static CharSequence replaceMultipleCharSequence(String str, CharSequence charSequence, CharSequence charSequence2) {
        SpannableStringBuilder spannableStringBuilder = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(charSequence);
        int iIndexOf = TextUtils.indexOf(charSequence, str, 0);
        while (iIndexOf >= 0) {
            spannableStringBuilder.replace(iIndexOf, str.length() + iIndexOf, charSequence2);
            iIndexOf = TextUtils.indexOf(spannableStringBuilder, str, iIndexOf + 1);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceMultipleTags(String str, Runnable... runnableArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        for (final Runnable runnable : runnableArr) {
            int iCharSequenceIndexOf = charSequenceIndexOf(spannableStringBuilder, "**");
            int i = iCharSequenceIndexOf + 2;
            int iCharSequenceIndexOf2 = charSequenceIndexOf(spannableStringBuilder, "**", i);
            if (iCharSequenceIndexOf < 0 || iCharSequenceIndexOf2 < 0) {
                break;
            }
            spannableStringBuilder.delete(iCharSequenceIndexOf, i);
            int i2 = iCharSequenceIndexOf2 - 2;
            spannableStringBuilder.delete(i2, iCharSequenceIndexOf2);
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.5
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                }
            }, iCharSequenceIndexOf, i2, 33);
        }
        return spannableStringBuilder;
    }

    public static CharSequence replaceNewLines(CharSequence charSequence) {
        int i = 0;
        if (charSequence instanceof StringBuilder) {
            StringBuilder sb = (StringBuilder) charSequence;
            int length = charSequence.length();
            while (i < length) {
                if (charSequence.charAt(i) == '\n') {
                    sb.setCharAt(i, ' ');
                }
                i++;
            }
            return charSequence;
        }
        if (charSequence instanceof SpannableStringBuilder) {
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            int length2 = charSequence.length();
            while (i < length2) {
                if (charSequence.charAt(i) == '\n') {
                    spannableStringBuilder.replace(i, i + 1, (CharSequence) " ");
                }
                i++;
            }
            return spannableStringBuilder;
        }
        if (!(charSequence instanceof SpannableString)) {
            if (charSequence == null) {
                return null;
            }
            return charSequence.toString().replace('\n', ' ');
        }
        if (TextUtils.indexOf(charSequence, '\n') < 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
        int length3 = charSequence.length();
        while (i < length3) {
            if (charSequence.charAt(i) == '\n') {
                spannableStringBuilder2.replace(i, i + 1, (CharSequence) " ");
            }
            i++;
        }
        return spannableStringBuilder2;
    }

    public static SpannableStringBuilder replaceSingleLink(String str, int i) {
        return replaceSingleLink(str, i, null);
    }

    public static SpannableStringBuilder replaceSingleLink(String str, final int i, final Runnable runnable) {
        int i2;
        int i3;
        int iIndexOf = str.indexOf("**");
        int iIndexOf2 = str.indexOf("**", iIndexOf + 1);
        String strReplace = str.replace("**", "");
        if (iIndexOf < 0 || iIndexOf2 < 0 || (i3 = iIndexOf2 - iIndexOf) <= 2) {
            iIndexOf = -1;
            i2 = 0;
        } else {
            i2 = i3 - 2;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strReplace);
        if (iIndexOf >= 0) {
            spannableStringBuilder.setSpan(runnable != null ? new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.6
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    textPaint.setColor(i);
                }
            } : new CharacterStyle() { // from class: org.telegram.messenger.AndroidUtilities.7
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setUnderlineText(false);
                    textPaint.setColor(i);
                }
            }, iIndexOf, i2 + iIndexOf, 0);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceSingleTag(String str, int i, int i2, Runnable runnable) {
        return replaceSingleTag(str, i, i2, runnable, null);
    }

    public static SpannableStringBuilder replaceSingleTag(String str, final int i, final int i2, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        int i3;
        int i4;
        int iIndexOf = str.indexOf("**");
        int iIndexOf2 = str.indexOf("**", iIndexOf + 1);
        String strReplace = str.replace("**", "");
        if (iIndexOf < 0 || iIndexOf2 < 0 || (i4 = iIndexOf2 - iIndexOf) <= 2) {
            iIndexOf = -1;
            i3 = 0;
        } else {
            i3 = i4 - 2;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strReplace);
        if (runnable != null && iIndexOf >= 0) {
            if (i2 == 3) {
                int i5 = iIndexOf + i3;
                spannableStringBuilder.replace(iIndexOf, i5, replaceMultipleCharSequence(" ", spannableStringBuilder.subSequence(iIndexOf, i5), " "));
            }
            spannableStringBuilder.setSpan((i2 == 0 || i2 == 3 || i2 == 2 || i2 == 4) ? new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.1
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(i2 == 4);
                    int i6 = i;
                    if (i6 >= 0) {
                        textPaint.setColor(Theme.getColor(i6, resourcesProvider));
                    }
                    if (i2 == 2) {
                        textPaint.setTypeface(AndroidUtilities.bold());
                    }
                }
            } : new CharacterStyle() { // from class: org.telegram.messenger.AndroidUtilities.2
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setTypeface(AndroidUtilities.bold());
                    int alpha = textPaint.getAlpha();
                    textPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider));
                    textPaint.setAlpha(alpha);
                }
            }, iIndexOf, i3 + iIndexOf, 0);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceSingleTag(String str, Runnable runnable) {
        return replaceSingleTag(str, -1, 0, runnable);
    }

    public static SpannableStringBuilder replaceTags(SpannableStringBuilder spannableStringBuilder) {
        try {
            ArrayList arrayList = new ArrayList();
            while (true) {
                int iCharSequenceIndexOf = charSequenceIndexOf(spannableStringBuilder, "**");
                if (iCharSequenceIndexOf == -1) {
                    break;
                }
                spannableStringBuilder.replace(iCharSequenceIndexOf, iCharSequenceIndexOf + 2, "");
                int iCharSequenceIndexOf2 = charSequenceIndexOf(spannableStringBuilder, "**");
                if (iCharSequenceIndexOf2 >= 0) {
                    spannableStringBuilder.replace(iCharSequenceIndexOf2, iCharSequenceIndexOf2 + 2, "");
                    arrayList.add(Integer.valueOf(iCharSequenceIndexOf));
                    arrayList.add(Integer.valueOf(iCharSequenceIndexOf2));
                }
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
            for (int i = 0; i < arrayList.size() / 2; i++) {
                int i2 = i * 2;
                spannableStringBuilder2.setSpan(new TypefaceSpan(bold()), ((Integer) arrayList.get(i2)).intValue(), ((Integer) arrayList.get(i2 + 1)).intValue(), 33);
            }
            return spannableStringBuilder2;
        } catch (Exception e) {
            FileLog.e(e);
            return spannableStringBuilder;
        }
    }

    public static SpannableStringBuilder replaceTags(String str) {
        return replaceTags(str, 11, new Object[0]);
    }

    public static SpannableStringBuilder replaceTags(String str, int i, Object... objArr) {
        try {
            StringBuilder sb = new StringBuilder(str);
            if ((i & 1) != 0) {
                while (true) {
                    int iIndexOf = sb.indexOf("<br>");
                    if (iIndexOf == -1) {
                        break;
                    }
                    sb.replace(iIndexOf, iIndexOf + 4, "\n");
                }
                while (true) {
                    int iIndexOf2 = sb.indexOf("<br/>");
                    if (iIndexOf2 == -1) {
                        break;
                    }
                    sb.replace(iIndexOf2, iIndexOf2 + 5, "\n");
                }
            }
            ArrayList arrayList = new ArrayList();
            if ((i & 2) != 0) {
                while (true) {
                    int iIndexOf3 = sb.indexOf("<b>");
                    if (iIndexOf3 == -1) {
                        break;
                    }
                    sb.replace(iIndexOf3, iIndexOf3 + 3, "");
                    int iIndexOf4 = sb.indexOf("</b>");
                    if (iIndexOf4 == -1) {
                        iIndexOf4 = sb.indexOf("<b>");
                    }
                    sb.replace(iIndexOf4, iIndexOf4 + 4, "");
                    arrayList.add(Integer.valueOf(iIndexOf3));
                    arrayList.add(Integer.valueOf(iIndexOf4));
                }
                while (true) {
                    int iIndexOf5 = sb.indexOf("**");
                    if (iIndexOf5 == -1) {
                        break;
                    }
                    sb.replace(iIndexOf5, iIndexOf5 + 2, "");
                    int iIndexOf6 = sb.indexOf("**");
                    if (iIndexOf6 >= 0) {
                        sb.replace(iIndexOf6, iIndexOf6 + 2, "");
                        arrayList.add(Integer.valueOf(iIndexOf5));
                        arrayList.add(Integer.valueOf(iIndexOf6));
                    }
                }
            }
            if ((i & 8) != 0) {
                while (true) {
                    int iIndexOf7 = sb.indexOf("**");
                    if (iIndexOf7 == -1) {
                        break;
                    }
                    sb.replace(iIndexOf7, iIndexOf7 + 2, "");
                    int iIndexOf8 = sb.indexOf("**");
                    if (iIndexOf8 >= 0) {
                        sb.replace(iIndexOf8, iIndexOf8 + 2, "");
                        arrayList.add(Integer.valueOf(iIndexOf7));
                        arrayList.add(Integer.valueOf(iIndexOf8));
                    }
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb);
            for (int i2 = 0; i2 < arrayList.size() / 2; i2++) {
                int i3 = i2 * 2;
                spannableStringBuilder.setSpan(new TypefaceSpan(bold()), ((Integer) arrayList.get(i3)).intValue(), ((Integer) arrayList.get(i3 + 1)).intValue(), 33);
            }
            return spannableStringBuilder;
        } catch (Exception e) {
            FileLog.e(e);
            return new SpannableStringBuilder(str);
        }
    }

    public static CharSequence replaceTags(CharSequence charSequence) {
        return charSequence instanceof SpannableStringBuilder ? replaceTags((SpannableStringBuilder) charSequence) : replaceTags(new SpannableStringBuilder(charSequence));
    }

    public static CharSequence replaceTwoNewLinesToOne(CharSequence charSequence) {
        char[] cArr = new char[2];
        if (charSequence instanceof StringBuilder) {
            StringBuilder sbReplace = (StringBuilder) charSequence;
            int length = charSequence.length();
            int i = 0;
            while (i < length - 2) {
                int i2 = i + 2;
                sbReplace.getChars(i, i2, cArr, 0);
                if (cArr[0] == '\n' && cArr[1] == '\n') {
                    sbReplace = sbReplace.replace(i, i2, "\n");
                    i--;
                    length--;
                }
                i++;
            }
            return charSequence;
        }
        if (charSequence instanceof SpannableStringBuilder) {
            SpannableStringBuilder spannableStringBuilderReplace = (SpannableStringBuilder) charSequence;
            int length2 = charSequence.length();
            int i3 = 0;
            while (i3 < length2 - 2) {
                int i4 = i3 + 2;
                spannableStringBuilderReplace.getChars(i3, i4, cArr, 0);
                if (cArr[0] == '\n' && cArr[1] == '\n') {
                    spannableStringBuilderReplace = spannableStringBuilderReplace.replace(i3, i4, (CharSequence) "\n");
                    i3--;
                    length2--;
                }
                i3++;
            }
            return charSequence;
        }
        if (!(charSequence instanceof SpannableString)) {
            return charSequence.toString().replace("\n\n", "\n");
        }
        if (TextUtils.indexOf(charSequence, "\n\n") < 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        int length3 = charSequence.length();
        int i5 = 0;
        while (i5 < length3 - 2) {
            int i6 = i5 + 2;
            spannableStringBuilder.getChars(i5, i6, cArr, 0);
            if (cArr[0] == '\n' && cArr[1] == '\n') {
                spannableStringBuilder = spannableStringBuilder.replace(i5, i6, (CharSequence) "\n");
                i5--;
                length3--;
            }
            i5++;
        }
        return spannableStringBuilder;
    }

    public static void requestAdjustNothing(Activity activity, int i) {
        if (activity == null || isTablet()) {
            return;
        }
        activity.getWindow().setSoftInputMode(48);
        adjustOwnerClassGuid = i;
    }

    public static void requestAdjustResize(Activity activity, int i) {
        if (activity == null) {
            return;
        }
        requestAdjustResize(activity.getWindow(), i);
    }

    public static void requestAdjustResize(Window window, int i) {
        if (window == null || isTablet()) {
            return;
        }
        window.setSoftInputMode(16);
        adjustOwnerClassGuid = i;
    }

    public static void requestAltFocusable(Activity activity, int i) {
        if (activity == null) {
            return;
        }
        activity.getWindow().setFlags(131072, 131072);
        altFocusableClassGuid = i;
    }

    public static void resetPictureInPictureParams(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            PictureInPictureParams.Builder builder = new PictureInPictureParams.Builder();
            builder.setSourceRectHint(null);
            builder.setAspectRatio(null);
            if (i >= 31) {
                builder.setAutoEnterEnabled(false);
            }
            setPictureInPictureParams(activity, builder.build());
        }
    }

    public static void resetTabletFlag() {
        if (wasTablet == null) {
            wasTablet = Boolean.valueOf(isTabletInternal());
        }
        isTablet = null;
        SharedConfig.updateTabletConfig();
    }

    public static void resetWasTabletFlag() {
        wasTablet = null;
    }

    public static double[] rgbToHsv(int i) {
        return rgbToHsv(Color.red(i), Color.green(i), Color.blue(i));
    }

    public static double[] rgbToHsv(int i, int i2, int i3) {
        double d;
        double d2;
        double d3;
        double d4 = i;
        Double.isNaN(d4);
        double d5 = d4 / 255.0d;
        double d6 = i2;
        Double.isNaN(d6);
        double d7 = d6 / 255.0d;
        double d8 = i3;
        Double.isNaN(d8);
        double d9 = d8 / 255.0d;
        double dMax = (d5 <= d7 || d5 <= d9) ? Math.max(d7, d9) : d5;
        double dMin = (d5 >= d7 || d5 >= d9) ? Math.min(d7, d9) : d5;
        double d10 = dMax - dMin;
        double d11 = 0.0d;
        double d12 = dMax == 0.0d ? 0.0d : d10 / dMax;
        if (dMax != dMin) {
            if (d5 > d7 && d5 > d9) {
                d = (d7 - d9) / d10;
                d2 = d7 < d9 ? 6 : 0;
                Double.isNaN(d2);
            } else if (d7 > d9) {
                d3 = 2.0d + ((d9 - d5) / d10);
                d11 = d3 / 6.0d;
            } else {
                d = (d5 - d7) / d10;
                d2 = 4.0d;
            }
            d3 = d + d2;
            d11 = d3 / 6.0d;
        }
        return new double[]{d11, d12, dMax};
    }

    public static int[] roundPercents(float[] fArr, int[] iArr) {
        if (fArr == null) {
            throw new NullPointerException("percents or output is null");
        }
        if (iArr == null) {
            iArr = new int[fArr.length];
        }
        if (fArr.length != iArr.length) {
            throw new IndexOutOfBoundsException("percents.length != output.length");
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        for (float f2 : fArr) {
            f += f2;
        }
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            int iFloor = (int) Math.floor((fArr[i2] / f) * 100.0f);
            iArr[i2] = iFloor;
            i += iFloor;
        }
        while (i < 100) {
            int i3 = -1;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            for (int i4 = 0; i4 < fArr.length; i4++) {
                float f4 = fArr[i4];
                float f5 = (f4 / f) - (iArr[i4] / 100.0f);
                if (f4 > BitmapDescriptorFactory.HUE_RED && f5 >= f3) {
                    i3 = i4;
                    f3 = f5;
                }
            }
            if (i3 < 0) {
                break;
            }
            iArr[i3] = iArr[i3] + 1;
            i++;
        }
        return iArr;
    }

    public static int roundPlayingMessageSize(boolean z) {
        return z ? roundSidePlayingMessageSize : roundPlayingMessageSize;
    }

    public static void runOnUIThread(Runnable runnable) {
        runOnUIThread(runnable, 0L);
    }

    public static void runOnUIThread(Runnable runnable, long j) {
        if (ApplicationLoader.applicationHandler == null) {
            return;
        }
        if (j == 0) {
            ApplicationLoader.applicationHandler.post(runnable);
        } else {
            ApplicationLoader.applicationHandler.postDelayed(runnable, j);
        }
    }

    public static void scaleRect(RectF rectF, float f) {
        scaleRect(rectF, f, rectF.centerX(), rectF.centerY());
    }

    public static void scaleRect(RectF rectF, float f, float f2, float f3) {
        float f4 = f2 - rectF.left;
        float f5 = rectF.right - f2;
        rectF.set(f2 - (f4 * f), f3 - ((f3 - rectF.top) * f), f2 + (f5 * f), f3 + ((rectF.bottom - f3) * f));
    }

    public static void scrollToFragmentRow(INavigationLayout iNavigationLayout, final String str) {
        if (iNavigationLayout == null || str == null) {
            return;
        }
        final BaseFragment baseFragment = (BaseFragment) iNavigationLayout.getFragmentStack().get(iNavigationLayout.getFragmentStack().size() - 1);
        try {
            Field declaredField = baseFragment.getClass().getDeclaredField("listView");
            declaredField.setAccessible(true);
            final RecyclerListView recyclerListView = (RecyclerListView) declaredField.get(baseFragment);
            recyclerListView.highlightRow(new RecyclerListView.IntReturnCallback() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda37
                @Override // org.telegram.ui.Components.RecyclerListView.IntReturnCallback
                public final int run() {
                    return AndroidUtilities.lambda$scrollToFragmentRow$21(baseFragment, str, recyclerListView);
                }
            });
            declaredField.setAccessible(false);
        } catch (Throwable unused) {
        }
    }

    public static void setAdjustResizeToNothing(Activity activity, int i) {
        if (activity == null || isTablet()) {
            return;
        }
        int i2 = adjustOwnerClassGuid;
        if (i2 == 0 || i2 == i) {
            activity.getWindow().setSoftInputMode(48);
        }
    }

    public static void setEnabled(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setEnabled(viewGroup.getChildAt(i), z);
            }
        }
    }

    public static void setLightNavigationBar(View view, boolean z) {
        if (view == null || Build.VERSION.SDK_INT < 26) {
            return;
        }
        int systemUiVisibility = view.getSystemUiVisibility();
        if (((systemUiVisibility & 16) > 0) != z) {
            view.setSystemUiVisibility(z ? systemUiVisibility | 16 : systemUiVisibility & (-17));
        }
    }

    public static void setLightNavigationBar(Window window, boolean z) {
        if (window != null) {
            setLightNavigationBar(window.getDecorView(), z);
        }
    }

    public static void setLightStatusBar(View view, boolean z) {
        if (view == null || Build.VERSION.SDK_INT < 26) {
            return;
        }
        int systemUiVisibility = view.getSystemUiVisibility();
        if (((systemUiVisibility & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) > 0) != z) {
            view.setSystemUiVisibility(z ? systemUiVisibility | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM : systemUiVisibility & (-8193));
        }
    }

    public static void setLightStatusBar(Window window, boolean z) {
        setLightStatusBar(window, z, false);
    }

    public static void setLightStatusBar(Window window, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT >= 23) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z) {
                if ((systemUiVisibility & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) == 0) {
                    decorView.setSystemUiVisibility(systemUiVisibility | LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM);
                }
                if (window.getStatusBarColor() == 0) {
                    return;
                }
            } else {
                if ((systemUiVisibility & LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM) != 0) {
                    decorView.setSystemUiVisibility(systemUiVisibility & (-8193));
                }
                if (window.getStatusBarColor() == 0) {
                    return;
                }
            }
            window.setStatusBarColor(0);
        }
    }

    public static int setMyLayerVersion(int i, int i2) {
        return (i & (-65536)) | i2;
    }

    public static void setNavigationBarColor(Window window, int i) {
        setNavigationBarColor(window, i, true);
    }

    public static void setNavigationBarColor(Window window, int i, boolean z) {
        setNavigationBarColor(window, i, z, null);
    }

    public static void setNavigationBarColor(final Window window, int i, boolean z, final IntColorCallback intColorCallback) {
        ValueAnimator valueAnimator;
        if (window != null && Build.VERSION.SDK_INT >= 21) {
            HashMap<Window, ValueAnimator> map = navigationBarColorAnimators;
            if (map != null && (valueAnimator = map.get(window)) != null) {
                valueAnimator.cancel();
                navigationBarColorAnimators.remove(window);
            }
            if (!z) {
                if (intColorCallback != null) {
                    intColorCallback.run(i);
                }
                try {
                    window.setNavigationBarColor(i);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            ValueAnimator valueAnimatorOfArgb = ValueAnimator.ofArgb(window.getNavigationBarColor(), i);
            valueAnimatorOfArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda41
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    AndroidUtilities.lambda$setNavigationBarColor$20(intColorCallback, window, valueAnimator2);
                }
            });
            valueAnimatorOfArgb.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.AndroidUtilities.12
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AndroidUtilities.navigationBarColorAnimators != null) {
                        AndroidUtilities.navigationBarColorAnimators.remove(window);
                    }
                }
            });
            valueAnimatorOfArgb.setDuration(200L);
            valueAnimatorOfArgb.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfArgb.start();
            if (navigationBarColorAnimators == null) {
                navigationBarColorAnimators = new HashMap<>();
            }
            navigationBarColorAnimators.put(window, valueAnimatorOfArgb);
        }
    }

    public static int setPeerLayerVersion(int i, int i2) {
        return (i & 65535) | (i2 << 16);
    }

    public static void setPictureInPictureParams(Activity activity, PictureInPictureParams pictureInPictureParams) {
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        if (pictureInPictureParams == null) {
            resetPictureInPictureParams(activity);
            return;
        }
        try {
            activity.setPictureInPictureParams(pictureInPictureParams);
        } catch (Throwable th) {
            FileLog.e(th);
        }
    }

    public static void setPreferredMaxRefreshRate(Window window) {
        WindowManager windowManager;
        if (Build.VERSION.SDK_INT < 21 || window == null || (windowManager = window.getWindowManager()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.preferredRefreshRate = screenMaxRefreshRate;
        try {
            windowManager.updateViewLayout(window.getDecorView(), attributes);
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void setPreferredMaxRefreshRate(WindowManager windowManager, View view, WindowManager.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 21 && windowManager != null && Math.abs(layoutParams.preferredRefreshRate - screenMaxRefreshRate) > 0.2d) {
            layoutParams.preferredRefreshRate = screenMaxRefreshRate;
            if (view.isAttachedToWindow()) {
                try {
                    windowManager.updateViewLayout(view, layoutParams);
                } catch (Exception e) {
                    FileLog.e(e);
                }
            }
        }
    }

    public static void setRectToRect(Matrix matrix, RectF rectF, RectF rectF2, int i, int i2, boolean z) {
        float fHeight;
        float fWidth;
        boolean z2;
        float f;
        float f2;
        float fHeight2;
        float fHeight3;
        if (i == 90 || i == 270) {
            fHeight = rectF2.height() / rectF.width();
            fWidth = rectF2.width();
        } else {
            fHeight = rectF2.width() / rectF.width();
            fWidth = rectF2.height();
        }
        float fHeight4 = fWidth / rectF.height();
        if (fHeight < fHeight4) {
            fHeight = fHeight4;
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            matrix.setTranslate(rectF2.left, rectF2.top);
        }
        if (i == 90) {
            matrix.preRotate(90.0f);
            if (i2 == 1) {
                matrix.preScale(-1.0f, 1.0f);
            } else if (i2 == 2) {
                matrix.preScale(1.0f, -1.0f);
            }
            matrix.preTranslate(BitmapDescriptorFactory.HUE_RED, -rectF2.width());
        } else if (i == 180) {
            matrix.preRotate(180.0f);
            if (i2 == 1) {
                matrix.preScale(-1.0f, 1.0f);
            } else if (i2 == 2) {
                matrix.preScale(1.0f, -1.0f);
            }
            matrix.preTranslate(-rectF2.width(), -rectF2.height());
        } else if (i == 270) {
            matrix.preRotate(270.0f);
            if (i2 == 1) {
                matrix.preScale(-1.0f, 1.0f);
            } else if (i2 == 2) {
                matrix.preScale(1.0f, -1.0f);
            }
            matrix.preTranslate(-rectF2.height(), BitmapDescriptorFactory.HUE_RED);
        }
        if (z) {
            f = (-rectF.left) * fHeight;
            f2 = (-rectF.top) * fHeight;
        } else {
            f = rectF2.left - (rectF.left * fHeight);
            f2 = rectF2.top - (rectF.top * fHeight);
        }
        if (z2) {
            fHeight2 = rectF2.width();
            fHeight3 = rectF.width();
        } else {
            fHeight2 = rectF2.height();
            fHeight3 = rectF.height();
        }
        float f3 = (fHeight2 - (fHeight3 * fHeight)) / 2.0f;
        if (z2) {
            f += f3;
        } else {
            f2 += f3;
        }
        matrix.preScale(fHeight, fHeight);
        if (z) {
            matrix.preTranslate(f, f2);
        }
    }

    public static void setScrollViewEdgeEffectColor(HorizontalScrollView horizontalScrollView, int i) throws NoSuchFieldException, SecurityException {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            horizontalScrollView.setEdgeEffectColor(i);
            return;
        }
        if (i2 >= 21) {
            try {
                Field declaredField = HorizontalScrollView.class.getDeclaredField("mEdgeGlowLeft");
                declaredField.setAccessible(true);
                EdgeEffect edgeEffect = (EdgeEffect) declaredField.get(horizontalScrollView);
                if (edgeEffect != null) {
                    edgeEffect.setColor(i);
                }
                Field declaredField2 = HorizontalScrollView.class.getDeclaredField("mEdgeGlowRight");
                declaredField2.setAccessible(true);
                EdgeEffect edgeEffect2 = (EdgeEffect) declaredField2.get(horizontalScrollView);
                if (edgeEffect2 != null) {
                    edgeEffect2.setColor(i);
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    public static void setScrollViewEdgeEffectColor(ScrollView scrollView, int i) throws NoSuchFieldException, SecurityException {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            scrollView.setTopEdgeEffectColor(i);
            scrollView.setBottomEdgeEffectColor(i);
            return;
        }
        if (i2 >= 21) {
            try {
                Field declaredField = ScrollView.class.getDeclaredField("mEdgeGlowTop");
                declaredField.setAccessible(true);
                EdgeEffect edgeEffect = (EdgeEffect) declaredField.get(scrollView);
                if (edgeEffect != null) {
                    edgeEffect.setColor(i);
                }
                Field declaredField2 = ScrollView.class.getDeclaredField("mEdgeGlowBottom");
                declaredField2.setAccessible(true);
                EdgeEffect edgeEffect2 = (EdgeEffect) declaredField2.get(scrollView);
                if (edgeEffect2 != null) {
                    edgeEffect2.setColor(i);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void setViewPagerEdgeEffectColor(ViewPager viewPager, int i) throws NoSuchFieldException, SecurityException {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Field declaredField = ViewPager.class.getDeclaredField("mLeftEdge");
                declaredField.setAccessible(true);
                EdgeEffect edgeEffect = (EdgeEffect) declaredField.get(viewPager);
                if (edgeEffect != null) {
                    edgeEffect.setColor(i);
                }
                Field declaredField2 = ViewPager.class.getDeclaredField("mRightEdge");
                declaredField2.setAccessible(true);
                EdgeEffect edgeEffect2 = (EdgeEffect) declaredField2.get(viewPager);
                if (edgeEffect2 != null) {
                    edgeEffect2.setColor(i);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void setWaitingForCall(boolean z) {
        synchronized (callLock) {
            try {
                try {
                    if (z) {
                        if (callReceiver == null) {
                            IntentFilter intentFilter = new IntentFilter("android.intent.action.PHONE_STATE");
                            if (Build.VERSION.SDK_INT >= 33) {
                                Context context = ApplicationLoader.applicationContext;
                                CallReceiver callReceiver2 = new CallReceiver();
                                callReceiver = callReceiver2;
                                context.registerReceiver(callReceiver2, intentFilter, 4);
                            } else {
                                Context context2 = ApplicationLoader.applicationContext;
                                CallReceiver callReceiver3 = new CallReceiver();
                                callReceiver = callReceiver3;
                                context2.registerReceiver(callReceiver3, intentFilter);
                            }
                        }
                    } else if (callReceiver != null) {
                        ApplicationLoader.applicationContext.unregisterReceiver(callReceiver);
                        callReceiver = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception unused) {
            }
            waitingForCall = z;
        }
    }

    public static void setWaitingForSms(boolean z) {
        synchronized (smsLock) {
            try {
                waitingForSms = z;
                if (z) {
                    try {
                        SmsRetriever.getClient(ApplicationLoader.applicationContext).startSmsRetriever().addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda47
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                AndroidUtilities.lambda$setWaitingForSms$11((Void) obj);
                            }
                        });
                    } catch (Throwable th) {
                        FileLog.e(th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void shakeView(final View view) {
        if (view == null) {
            return;
        }
        int i = R.id.shake_animation;
        Object tag = view.getTag(i);
        if (tag instanceof ValueAnimator) {
            ((ValueAnimator) tag).cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda30
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AndroidUtilities.lambda$shakeView$12(view, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.messenger.AndroidUtilities.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
        });
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.start();
        view.setTag(i, valueAnimatorOfFloat);
    }

    public static void shakeViewSpring(View view) {
        shakeViewSpring(view, 10.0f, null);
    }

    public static void shakeViewSpring(View view, float f) {
        shakeViewSpring(view, f, null);
    }

    public static void shakeViewSpring(final View view, float f, final Runnable runnable) {
        if (view == null) {
            return;
        }
        int iDp = dp(f);
        int i = R.id.spring_tag;
        if (view.getTag(i) != null) {
            ((SpringAnimation) view.getTag(i)).cancel();
        }
        int i2 = R.id.spring_was_translation_x_tag;
        Float f2 = (Float) view.getTag(i2);
        if (f2 != null) {
            view.setTranslationX(f2.floatValue());
        }
        view.setTag(i2, Float.valueOf(view.getTranslationX()));
        final float translationX = view.getTranslationX();
        SpringAnimation springAnimation = (SpringAnimation) ((SpringAnimation) new SpringAnimation(view, DynamicAnimation.TRANSLATION_X, translationX).setSpring(new SpringForce(translationX).setStiffness(600.0f)).setStartVelocity((-iDp) * 100)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda32
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
                AndroidUtilities.lambda$shakeViewSpring$13(runnable, view, translationX, dynamicAnimation, z, f3, f4);
            }
        });
        view.setTag(i, springAnimation);
        springAnimation.start();
    }

    public static void shakeViewSpring(View view, Runnable runnable) {
        shakeViewSpring(view, 10.0f, runnable);
    }

    public static boolean shouldEnableAnimation() {
        int i = Build.VERSION.SDK_INT;
        return i < 26 || i >= 28 || (!((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).isPowerSaveMode() && Settings.Global.getFloat(ApplicationLoader.applicationContext.getContentResolver(), "animator_duration_scale", 1.0f) > BitmapDescriptorFactory.HUE_RED);
    }

    public static boolean shouldShowClipboardToast() {
        int i = Build.VERSION.SDK_INT;
        return (i < 31 || !OneUIUtilities.hasBuiltInClipboardToasts()) && i < 32;
    }

    public static boolean shouldShowUrlInAlert(String str) {
        try {
            return checkHostForPunycode(Uri.parse(str).getHost());
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    public static boolean showKeyboard(View view) {
        if (view == null) {
            return false;
        }
        try {
            return ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
        } catch (Exception e) {
            FileLog.e(e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void showProxyAlert(final Activity activity, final String str, final String str2, final String str3, final String str4, final String str5) {
        String str6;
        String string;
        BottomSheet.Builder builder = new BottomSheet.Builder(activity);
        final Runnable dismissRunnable = builder.getDismissRunnable();
        builder.setApplyTopPadding(false);
        builder.setApplyBottomPadding(false);
        LinearLayout linearLayout = new LinearLayout(activity);
        builder.setCustomView(linearLayout);
        linearLayout.setOrientation(1);
        int i = 3;
        int i2 = 5;
        if (!TextUtils.isEmpty(str5)) {
            TextView textView = new TextView(activity);
            textView.setText(LocaleController.getString(R.string.UseProxyTelegramInfo2));
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextGray4));
            textView.setTextSize(1, 14.0f);
            textView.setGravity(49);
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, (LocaleController.isRTL ? 5 : 3) | 48, 17, 8, 17, 8));
            View view = new View(activity);
            view.setBackgroundColor(Theme.getColor(Theme.key_divider));
            linearLayout.addView(view, new LinearLayout.LayoutParams(-1, 1));
        }
        int i3 = 0;
        while (i3 < 6) {
            if (i3 == 0) {
                string = LocaleController.getString("UseProxyAddress", R.string.UseProxyAddress);
                str6 = str;
            } else if (i3 == 1) {
                string = LocaleController.getString("UseProxyPort", R.string.UseProxyPort);
                str6 = "" + str2;
            } else if (i3 == 2) {
                string = LocaleController.getString("UseProxySecret", R.string.UseProxySecret);
                str6 = str5;
            } else if (i3 == i) {
                string = LocaleController.getString("UseProxyUsername", R.string.UseProxyUsername);
                str6 = str3;
            } else if (i3 == 4) {
                string = LocaleController.getString("UseProxyPassword", R.string.UseProxyPassword);
                str6 = str4;
            } else if (i3 == i2) {
                String string2 = LocaleController.getString(R.string.ProxyBottomSheetChecking);
                string = LocaleController.getString(R.string.ProxyStatus);
                str6 = string2;
            } else {
                str6 = null;
                string = null;
            }
            if (!TextUtils.isEmpty(str6)) {
                final AtomicReference atomicReference = new AtomicReference();
                final TextDetailSettingsCell textDetailSettingsCell = new TextDetailSettingsCell(activity) { // from class: org.telegram.messenger.AndroidUtilities.11
                    @Override // android.view.ViewGroup, android.view.View
                    protected void onAttachedToWindow() {
                        super.onAttachedToWindow();
                        if (atomicReference.get() != null) {
                            ((EllipsizeSpanAnimator) atomicReference.get()).onAttachedToWindow();
                        }
                    }

                    @Override // android.view.ViewGroup, android.view.View
                    protected void onDetachedFromWindow() {
                        super.onDetachedFromWindow();
                        if (atomicReference.get() != null) {
                            ((EllipsizeSpanAnimator) atomicReference.get()).onDetachedFromWindow();
                        }
                    }
                };
                String str7 = str6;
                if (i3 == i2) {
                    SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str6);
                    EllipsizeSpanAnimator ellipsizeSpanAnimator = new EllipsizeSpanAnimator(textDetailSettingsCell);
                    ellipsizeSpanAnimator.addView(textDetailSettingsCell);
                    SpannableString spannableString = new SpannableString("...");
                    ellipsizeSpanAnimator.wrap(spannableString, 0);
                    spannableStringBuilderValueOf.append((CharSequence) spannableString);
                    atomicReference.set(ellipsizeSpanAnimator);
                    str7 = spannableStringBuilderValueOf;
                }
                textDetailSettingsCell.setTextAndValue(str7, string, true);
                textDetailSettingsCell.getTextView().setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                textDetailSettingsCell.getValueTextView().setTextColor(Theme.getColor(Theme.key_dialogTextGray3));
                linearLayout.addView(textDetailSettingsCell, LayoutHelper.createLinear(-1, -2));
                if (i3 == 5) {
                    try {
                        ConnectionsManager.getInstance(UserConfig.selectedAccount).checkProxy(str, Integer.parseInt(str2), str3, str4, str5, new RequestTimeDelegate() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda38
                            @Override // org.telegram.tgnet.RequestTimeDelegate
                            public final void run(long j) {
                                AndroidUtilities.lambda$showProxyAlert$17(textDetailSettingsCell, j);
                            }
                        });
                    } catch (NumberFormatException unused) {
                        textDetailSettingsCell.getTextView().setText(LocaleController.getString(R.string.Unavailable));
                        textDetailSettingsCell.getTextView().setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                    }
                }
            }
            i3++;
            i = 3;
            i2 = 5;
        }
        PickerBottomLayout pickerBottomLayout = new PickerBottomLayout(activity, false);
        pickerBottomLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
        linearLayout.addView(pickerBottomLayout, LayoutHelper.createFrame(-1, 48, 83));
        pickerBottomLayout.cancelButton.setPadding(dp(18.0f), 0, dp(18.0f), 0);
        TextView textView2 = pickerBottomLayout.cancelButton;
        int i4 = Theme.key_dialogTextBlue2;
        textView2.setTextColor(Theme.getColor(i4));
        pickerBottomLayout.cancelButton.setText(LocaleController.getString(R.string.Cancel).toUpperCase());
        pickerBottomLayout.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda39
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                dismissRunnable.run();
            }
        });
        pickerBottomLayout.doneButtonTextView.setTextColor(Theme.getColor(i4));
        pickerBottomLayout.doneButton.setPadding(dp(18.0f), 0, dp(18.0f), 0);
        pickerBottomLayout.doneButtonBadgeTextView.setVisibility(8);
        pickerBottomLayout.doneButtonTextView.setText(LocaleController.getString(R.string.ConnectingConnectProxy).toUpperCase());
        pickerBottomLayout.doneButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtilities.lambda$showProxyAlert$19(str, str2, str5, str4, str3, activity, dismissRunnable, view2);
            }
        });
        builder.show();
    }

    private static void snapshotTextureViews(int i, int i2, int[] iArr, Canvas canvas, View view) {
        if (view instanceof TextureView) {
            TextureView textureView = (TextureView) view;
            textureView.getLocationInWindow(iArr);
            Bitmap bitmap = textureView.getBitmap();
            if (bitmap != null) {
                canvas.save();
                canvas.drawBitmap(bitmap, iArr[0] - i, iArr[1] - i2, (Paint) null);
                canvas.restore();
                bitmap.recycle();
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                snapshotTextureViews(i, i2, iArr, canvas, viewGroup.getChildAt(i3));
            }
        }
    }

    public static Bitmap snapshotView(View view) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.draw(canvas);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        snapshotTextureViews(iArr[0], iArr[1], iArr, canvas, view);
        return bitmapCreateBitmap;
    }

    public static int[] toIntArray(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    public static String translitSafe(String str) {
        if (str != null) {
            try {
                str = str.toLowerCase();
            } catch (Exception unused) {
                return "";
            }
        }
        String translitString = LocaleController.getInstance().getTranslitString(str, false);
        return translitString == null ? "" : translitString;
    }

    public static CharSequence trim(CharSequence charSequence, int[] iArr) {
        if (charSequence == null) {
            return null;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) <= ' ') {
            i++;
        }
        while (i < length && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        if (iArr != null) {
            iArr[0] = i;
        }
        return (i > 0 || length < charSequence.length()) ? charSequence.subSequence(i, length) : charSequence;
    }

    public static void unlockOrientation(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            int i = prevOrientation;
            if (i != -10) {
                activity.setRequestedOrientation(i);
                prevOrientation = -10;
            }
        } catch (Exception e) {
            FileLog.e(e);
        }
    }

    public static void updateImageViewImageAnimated(ImageView imageView, int i) {
        updateImageViewImageAnimated(imageView, ContextCompat.getDrawable(imageView.getContext(), i));
    }

    public static void updateImageViewImageAnimated(final ImageView imageView, final Drawable drawable) {
        if (imageView.getDrawable() == drawable) {
            return;
        }
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.messenger.AndroidUtilities$$ExternalSyntheticLambda51
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AndroidUtilities.lambda$updateImageViewImageAnimated$22(imageView, atomicBoolean, drawable, valueAnimator);
            }
        });
        duration.start();
    }

    public static void updateViewLayout(WindowManager windowManager, View view, ViewGroup.LayoutParams layoutParams) {
        if (windowManager == null || view == null || view.getParent() == null) {
            return;
        }
        windowManager.updateViewLayout(view, layoutParams);
    }

    public static void updateViewShow(View view, boolean z) {
        updateViewShow(view, z, true, true);
    }

    public static void updateViewShow(View view, boolean z, boolean z2, float f, boolean z3, Runnable runnable) {
        ViewPropertyAnimator viewPropertyAnimatorWithEndAction;
        if (view == null) {
            return;
        }
        if (view.getParent() == null) {
            z3 = false;
        }
        view.animate().setListener(null).cancel();
        float fDp = BitmapDescriptorFactory.HUE_RED;
        if (!z3) {
            view.setVisibility(z ? 0 : 8);
            view.setTag(z ? 1 : null);
            view.setAlpha(1.0f);
            view.setScaleX((!z2 || z) ? 1.0f : 0.5f);
            view.setScaleY((!z2 || z) ? 1.0f : 0.5f);
            if (f != BitmapDescriptorFactory.HUE_RED) {
                if (!z) {
                    fDp = dp(-16.0f) * f;
                }
                view.setTranslationY(fDp);
            }
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (z) {
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                view.setScaleX(z2 ? 0.5f : 1.0f);
                view.setScaleY(z2 ? 0.5f : 1.0f);
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    view.setTranslationY(dp(-16.0f) * f);
                }
            }
            viewPropertyAnimatorWithEndAction = view.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).withEndAction(runnable);
            if (f != BitmapDescriptorFactory.HUE_RED) {
                viewPropertyAnimatorWithEndAction.translationY(BitmapDescriptorFactory.HUE_RED);
            }
        } else {
            viewPropertyAnimatorWithEndAction = view.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(z2 ? 0.5f : 1.0f).scaleX(z2 ? 0.5f : 1.0f).setListener(new HideViewAfterAnimation(view)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).withEndAction(runnable);
            if (f != BitmapDescriptorFactory.HUE_RED) {
                viewPropertyAnimatorWithEndAction.translationY(dp(-16.0f) * f);
            }
        }
        viewPropertyAnimatorWithEndAction.start();
    }

    public static void updateViewShow(View view, boolean z, boolean z2, boolean z3) {
        updateViewShow(view, z, z2, BitmapDescriptorFactory.HUE_RED, z3, null);
    }

    public static void updateViewShow(View view, boolean z, boolean z2, boolean z3, Runnable runnable) {
        updateViewShow(view, z, z2, BitmapDescriptorFactory.HUE_RED, z3, runnable);
    }

    public static void updateViewVisibilityAnimated(View view, boolean z) {
        updateViewVisibilityAnimated(view, z, 1.0f, true, true);
    }

    public static void updateViewVisibilityAnimated(View view, boolean z, float f, boolean z2) {
        updateViewVisibilityAnimated(view, z, f, true, z2);
    }

    public static void updateViewVisibilityAnimated(View view, boolean z, float f, boolean z2, float f2, boolean z3) {
        if (view == null) {
            return;
        }
        if (view.getParent() == null) {
            z3 = false;
        }
        if (!z3) {
            view.animate().setListener(null).cancel();
            view.setVisibility(z ? 0 : z2 ? 8 : 4);
            view.setTag(z ? 1 : null);
            view.setAlpha(f2);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            return;
        }
        if (!z || view.getTag() != null) {
            if (z || view.getTag() == null) {
                return;
            }
            view.animate().setListener(null).cancel();
            view.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(f).scaleX(f).setListener(new HideViewAfterAnimation(view, z2)).setDuration(150L).start();
            view.setTag(null);
            return;
        }
        view.animate().setListener(null).cancel();
        if (view.getVisibility() != 0) {
            view.setVisibility(0);
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            view.setScaleX(f);
            view.setScaleY(f);
        }
        view.animate().alpha(f2).scaleY(1.0f).scaleX(1.0f).setDuration(150L).start();
        view.setTag(1);
    }

    public static void updateViewVisibilityAnimated(View view, boolean z, float f, boolean z2, boolean z3) {
        updateViewVisibilityAnimated(view, z, f, z2, 1.0f, z3);
    }

    public static void updateVisibleRow(RecyclerListView recyclerListView, int i) {
        RecyclerView.Adapter adapter;
        RecyclerView.ViewHolder childViewHolder;
        if (recyclerListView == null || (adapter = recyclerListView.getAdapter()) == null) {
            return;
        }
        for (int i2 = 0; i2 < recyclerListView.getChildCount(); i2++) {
            View childAt = recyclerListView.getChildAt(i2);
            int childAdapterPosition = recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0 && (childViewHolder = recyclerListView.getChildViewHolder(childAt)) != null && !childViewHolder.shouldIgnore() && childViewHolder.getAdapterPosition() == i) {
                adapter.onBindViewHolder(childViewHolder, childAdapterPosition);
            }
        }
    }

    public static void updateVisibleRows(RecyclerListView recyclerListView) {
        RecyclerView.Adapter adapter;
        RecyclerView.ViewHolder childViewHolder;
        if (recyclerListView == null || (adapter = recyclerListView.getAdapter()) == null) {
            return;
        }
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            View childAt = recyclerListView.getChildAt(i);
            int childAdapterPosition = recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0 && (childViewHolder = recyclerListView.getChildViewHolder(childAt)) != null && !childViewHolder.shouldIgnore()) {
                adapter.onBindViewHolder(childViewHolder, childAdapterPosition);
            }
        }
    }

    public static void vibrate(View view) {
        if (view != null) {
            try {
                if (view.getContext() != null && Build.VERSION.SDK_INT >= 26 && ((Vibrator) view.getContext().getSystemService("vibrator")).hasAmplitudeControl()) {
                    view.performHapticFeedback(3, 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void vibrateCursor(View view) {
        if (view != null) {
            try {
                if (view.getContext() != null && Build.VERSION.SDK_INT >= 26 && ((Vibrator) view.getContext().getSystemService("vibrator")).hasAmplitudeControl()) {
                    view.performHapticFeedback(9, 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static CharSequence withLearnMore(CharSequence charSequence, final Runnable runnable) {
        SpannableString spannableString = new SpannableString(LocaleController.getString(R.string.LearnMoreArrow));
        spannableString.setSpan(new ClickableSpan() { // from class: org.telegram.messenger.AndroidUtilities.13
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setUnderlineText(false);
                textPaint.setColor(textPaint.linkColor);
            }
        }, 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.append((CharSequence) spannableString);
        return replaceArrows(spannableStringBuilder, true);
    }
}

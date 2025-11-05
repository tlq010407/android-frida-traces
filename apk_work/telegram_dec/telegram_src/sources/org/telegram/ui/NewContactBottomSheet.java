package org.telegram.ui;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.Comparator$CC;
import j$.util.function.Function;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedPhoneNumberEditText;
import org.telegram.ui.Components.ContextProgressView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.OutlineEditText;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.CountrySelectActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class NewContactBottomSheet extends BottomSheet implements AdapterView.OnItemSelectedListener {
    int classGuid;
    private View codeDividerView;
    private AnimatedPhoneNumberEditText codeField;
    private HashMap codesMap;
    private LinearLayout contentLayout;
    private ArrayList countriesArray;
    private String countryCodeForHint;
    private TextView countryFlag;
    private TextView doneButton;
    private FrameLayout doneButtonContainer;
    private boolean donePressed;
    private ContextProgressView editDoneItemProgress;
    private OutlineEditText firstNameField;
    private boolean ignoreOnPhoneChange;
    private boolean ignoreOnTextChange;
    private boolean ignoreSelection;
    private String initialFirstName;
    private String initialLastName;
    private String initialPhoneNumber;
    private boolean initialPhoneNumberWithCountryCode;
    private OutlineEditText lastNameField;
    BaseFragment parentFragment;
    private AnimatedPhoneNumberEditText phoneField;
    private HashMap phoneFormatMap;
    private OutlineTextContainerView phoneOutlineView;
    private TextView plusTextView;
    private RadialProgressView progressView;
    private int wasCountryHintIndex;

    /* renamed from: org.telegram.ui.NewContactBottomSheet$1, reason: invalid class name */
    class AnonymousClass1 extends TextView {
        final NotificationCenter.NotificationCenterDelegate delegate;

        AnonymousClass1(Context context) {
            super(context);
            this.delegate = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.NewContactBottomSheet$1$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                    this.f$0.lambda$$0(i, i2, objArr);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$0(int i, int i2, Object[] objArr) {
            invalidate();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this.delegate, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this.delegate, NotificationCenter.emojiLoaded);
        }
    }

    /* renamed from: org.telegram.ui.NewContactBottomSheet$2, reason: invalid class name */
    class AnonymousClass2 implements CountrySelectActivity.CountrySelectActivityDelegate {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectCountry$0() {
            AndroidUtilities.showKeyboard(NewContactBottomSheet.this.phoneField);
        }

        @Override // org.telegram.ui.CountrySelectActivity.CountrySelectActivityDelegate
        public void didSelectCountry(CountrySelectActivity.Country country) {
            NewContactBottomSheet.this.selectCountry(country);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didSelectCountry$0();
                }
            }, 300L);
            NewContactBottomSheet.this.phoneField.requestFocus();
            NewContactBottomSheet.this.phoneField.setSelection(NewContactBottomSheet.this.phoneField.length());
        }
    }

    public NewContactBottomSheet(BaseFragment baseFragment, Context context) {
        super(context, true);
        this.countriesArray = new ArrayList();
        this.codesMap = new HashMap();
        this.phoneFormatMap = new HashMap();
        fixNavigationBar();
        this.waitingKeyboard = true;
        this.smoothKeyboardAnimationEnabled = true;
        this.classGuid = ConnectionsManager.generateClassGuid();
        this.parentFragment = baseFragment;
        setCustomView(createView(getContext()));
        setTitle(LocaleController.getString(R.string.NewContactTitle), true);
    }

    private void doOnDone() {
        BaseFragment baseFragment;
        if (this.donePressed || (baseFragment = this.parentFragment) == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (this.firstNameField.getEditText().length() == 0) {
            Vibrator vibrator = (Vibrator) this.parentFragment.getParentActivity().getSystemService("vibrator");
            if (vibrator != null) {
                vibrator.vibrate(200L);
            }
            AndroidUtilities.shakeView(this.firstNameField);
            return;
        }
        if (this.codeField.length() == 0) {
            Vibrator vibrator2 = (Vibrator) this.parentFragment.getParentActivity().getSystemService("vibrator");
            if (vibrator2 != null) {
                vibrator2.vibrate(200L);
            }
            AndroidUtilities.shakeView(this.codeField);
            return;
        }
        if (this.phoneField.length() == 0) {
            Vibrator vibrator3 = (Vibrator) this.parentFragment.getParentActivity().getSystemService("vibrator");
            if (vibrator3 != null) {
                vibrator3.vibrate(200L);
            }
            AndroidUtilities.shakeView(this.phoneField);
            return;
        }
        this.donePressed = true;
        showEditDoneProgress(true, true);
        final TLRPC.TL_contacts_importContacts tL_contacts_importContacts = new TLRPC.TL_contacts_importContacts();
        final TLRPC.TL_inputPhoneContact tL_inputPhoneContact = new TLRPC.TL_inputPhoneContact();
        tL_inputPhoneContact.first_name = this.firstNameField.getEditText().getText().toString();
        tL_inputPhoneContact.last_name = this.lastNameField.getEditText().getText().toString();
        tL_inputPhoneContact.phone = "+" + this.codeField.getText().toString() + this.phoneField.getText().toString();
        tL_contacts_importContacts.contacts.add(tL_inputPhoneContact);
        ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_importContacts, new RequestDelegate() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$doOnDone$9(tL_inputPhoneContact, tL_contacts_importContacts, tLObject, tL_error);
            }
        }, 2), this.classGuid);
    }

    public static String getPhoneNumber(Context context, TLRPC.User user, String str, boolean z) {
        StringBuilder sb;
        HashMap map = new HashMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open("countries.txt")));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(";");
                map.put(strArrSplit[0], strArrSplit[2]);
            }
            bufferedReader.close();
        } catch (Exception e) {
            FileLog.e(e);
        }
        if (str.startsWith("+")) {
            return str;
        }
        if (!z && user != null && !TextUtils.isEmpty(user.phone)) {
            String str2 = user.phone;
            for (int i = 4; i >= 1; i--) {
                String strSubstring = str2.substring(0, i);
                if (((String) map.get(strSubstring)) != null) {
                    sb = new StringBuilder();
                    sb.append("+");
                    sb.append(strSubstring);
                }
            }
            return str;
        }
        sb = new StringBuilder();
        sb.append("+");
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0090 A[PHI: r7
      0x0090: PHI (r7v3 int) = (r7v2 int), (r7v4 int) binds: [B:20:0x006d, B:31:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void invalidateCountryHint() {
        int i;
        int i2;
        String str = this.countryCodeForHint;
        String strReplace = this.phoneField.getText() != null ? this.phoneField.getText().toString().replace(" ", "") : "";
        if (this.phoneFormatMap.get(str) == null || ((List) this.phoneFormatMap.get(str)).isEmpty()) {
            if (this.wasCountryHintIndex != -1) {
                int selectionStart = this.phoneField.getSelectionStart();
                int selectionEnd = this.phoneField.getSelectionEnd();
                this.phoneField.setHintText((String) null);
                this.phoneField.setSelection(selectionStart, selectionEnd);
                this.wasCountryHintIndex = -1;
                return;
            }
            return;
        }
        List list = (List) this.phoneFormatMap.get(str);
        if (strReplace.isEmpty()) {
            i = -1;
        } else {
            i = 0;
            while (i < list.size()) {
                if (strReplace.startsWith(((String) list.get(i)).replace(" ", "").replace("X", "").replace("0", ""))) {
                    break;
                } else {
                    i++;
                }
            }
            i = -1;
        }
        if (i == -1) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                String str2 = (String) list.get(i3);
                if (str2.startsWith("X") || str2.startsWith("0")) {
                    i = i3;
                    break;
                }
            }
            i2 = i != -1 ? i : 0;
        }
        if (this.wasCountryHintIndex != i2) {
            String str3 = (String) ((List) this.phoneFormatMap.get(str)).get(i2);
            int selectionStart2 = this.phoneField.getSelectionStart();
            int selectionEnd2 = this.phoneField.getSelectionEnd();
            this.phoneField.setHintText(str3 != null ? str3.replace('X', '0') : null);
            this.phoneField.setSelection(selectionStart2, selectionEnd2);
            this.wasCountryHintIndex = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$1(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.lastNameField.requestFocus();
        this.lastNameField.getEditText().setSelection(this.lastNameField.getEditText().length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.codeField.requestFocus();
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.codeField;
        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        CountrySelectActivity countrySelectActivity = new CountrySelectActivity(true);
        countrySelectActivity.setCountrySelectActivityDelegate(new AnonymousClass2());
        this.parentFragment.showAsSheet(countrySelectActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.phoneField.requestFocus();
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.doneButtonContainer.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        doOnDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$11() {
        AndroidUtilities.hideKeyboard(this.contentLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$8(TLRPC.TL_contacts_importedContacts tL_contacts_importedContacts, TLRPC.TL_inputPhoneContact tL_inputPhoneContact, TLRPC.TL_error tL_error, TLRPC.TL_contacts_importContacts tL_contacts_importContacts) {
        this.donePressed = false;
        if (tL_contacts_importedContacts == null) {
            showEditDoneProgress(false, true);
            AlertsCreator.processError(this.currentAccount, tL_error, this.parentFragment, tL_contacts_importContacts, new Object[0]);
        } else if (!tL_contacts_importedContacts.users.isEmpty()) {
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_importedContacts.users, false);
            MessagesController.getInstance(this.currentAccount).openChatOrProfileWith((TLRPC.User) tL_contacts_importedContacts.users.get(0), null, this.parentFragment, 1, false);
            lambda$new$0();
        } else {
            if (this.parentFragment.getParentActivity() == null) {
                return;
            }
            showEditDoneProgress(false, true);
            AlertsCreator.createContactInviteDialog(this.parentFragment, tL_inputPhoneContact.first_name, tL_inputPhoneContact.last_name, tL_inputPhoneContact.phone);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$9(final TLRPC.TL_inputPhoneContact tL_inputPhoneContact, final TLRPC.TL_contacts_importContacts tL_contacts_importContacts, TLObject tLObject, final TLRPC.TL_error tL_error) {
        final TLRPC.TL_contacts_importedContacts tL_contacts_importedContacts = (TLRPC.TL_contacts_importedContacts) tLObject;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doOnDone$8(tL_contacts_importedContacts, tL_inputPhoneContact, tL_error, tL_contacts_importContacts);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$10() {
        AndroidUtilities.showKeyboard(this.firstNameField.getEditText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountryButtonText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.countryFlag.animate();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            viewPropertyAnimatorAnimate.setInterpolator(cubicBezierInterpolator).translationY(AndroidUtilities.dp(30.0f)).setDuration(150L);
            this.plusTextView.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.dp(30.0f)).setDuration(150L);
            this.codeField.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.dp(30.0f)).setDuration(150L);
            return;
        }
        this.countryFlag.animate().setInterpolator(AndroidUtilities.overshootInterpolator).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(350L).start();
        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = this.plusTextView.animate();
        CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.DEFAULT;
        viewPropertyAnimatorAnimate2.setInterpolator(cubicBezierInterpolator2).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        this.codeField.animate().setInterpolator(cubicBezierInterpolator2).translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        this.countryFlag.setText(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountryHint(String str, CountrySelectActivity.Country country) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String languageFlag = LocaleController.getLanguageFlag(country.shortname);
        if (languageFlag != null) {
            spannableStringBuilder.append((CharSequence) languageFlag);
        }
        setCountryButtonText(Emoji.replaceEmoji(spannableStringBuilder, this.countryFlag.getPaint().getFontMetricsInt(), false));
        this.countryCodeForHint = str;
        this.wasCountryHintIndex = -1;
        invalidateCountryHint();
    }

    private void showEditDoneProgress(boolean z, boolean z2) {
        AndroidUtilities.updateViewVisibilityAnimated(this.doneButton, !z, 0.5f, z2);
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, z, 0.5f, z2);
    }

    public View createView(Context context) throws IOException {
        String str;
        CountrySelectActivity.Country country;
        TelephonyManager telephonyManager;
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText;
        String strSubstring;
        ContextProgressView contextProgressView = new ContextProgressView(context, 1);
        this.editDoneItemProgress = contextProgressView;
        contextProgressView.setVisibility(4);
        ScrollView scrollView = new ScrollView(context);
        LinearLayout linearLayout = new LinearLayout(context);
        this.contentLayout = linearLayout;
        linearLayout.setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f), 0);
        this.contentLayout.setOrientation(1);
        scrollView.addView(this.contentLayout, LayoutHelper.createScroll(-1, -2, 51));
        this.contentLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return NewContactBottomSheet.lambda$createView$0(view, motionEvent);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.contentLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        OutlineEditText outlineEditText = new OutlineEditText(context);
        this.firstNameField = outlineEditText;
        outlineEditText.getEditText().setInputType(49152);
        this.firstNameField.getEditText().setImeOptions(5);
        this.firstNameField.setHint(LocaleController.getString(R.string.FirstName));
        if (this.initialFirstName != null) {
            this.firstNameField.getEditText().setText(this.initialFirstName);
            this.initialFirstName = null;
        }
        frameLayout.addView(this.firstNameField, LayoutHelper.createFrame(-1, 58.0f, 51, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.firstNameField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$1(textView, i, keyEvent);
            }
        });
        OutlineEditText outlineEditText2 = new OutlineEditText(context);
        this.lastNameField = outlineEditText2;
        outlineEditText2.setBackground(null);
        this.lastNameField.getEditText().setInputType(49152);
        this.lastNameField.getEditText().setImeOptions(5);
        this.lastNameField.setHint(LocaleController.getString(R.string.LastName));
        if (this.initialLastName != null) {
            this.lastNameField.getEditText().setText(this.initialLastName);
            this.initialLastName = null;
        }
        frameLayout.addView(this.lastNameField, LayoutHelper.createFrame(-1, 58.0f, 51, BitmapDescriptorFactory.HUE_RED, 68.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.lastNameField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda4
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i, keyEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        this.phoneOutlineView = outlineTextContainerView;
        outlineTextContainerView.addView(linearLayout2, LayoutHelper.createFrame(-1, -2.0f, 16, 4.0f, 8.0f, 16.0f, 8.0f));
        OutlineTextContainerView outlineTextContainerView2 = this.phoneOutlineView;
        int i = R.string.PhoneNumber;
        outlineTextContainerView2.setText(LocaleController.getString(i));
        this.contentLayout.addView(this.phoneOutlineView, LayoutHelper.createLinear(-1, 58, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED, 8.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context);
        this.countryFlag = anonymousClass1;
        anonymousClass1.setTextSize(1, 16.0f);
        this.countryFlag.setFocusable(false);
        this.countryFlag.setGravity(17);
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(view);
            }
        });
        frameLayout2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(6.0f), 0, Theme.getColor(Theme.key_listSelector)));
        frameLayout2.addView(this.countryFlag, LayoutHelper.createFrame(-1, -2, 16));
        linearLayout2.addView(frameLayout2, LayoutHelper.createLinear(42, -1));
        TextView textView = new TextView(context);
        this.plusTextView = textView;
        textView.setText("+");
        this.plusTextView.setTextSize(1, 16.0f);
        this.plusTextView.setFocusable(false);
        linearLayout2.addView(this.plusTextView, LayoutHelper.createLinear(-2, -2));
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText2 = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.NewContactBottomSheet.3
            @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i2, Rect rect) {
                super.onFocusChanged(z, i2, rect);
                NewContactBottomSheet.this.phoneOutlineView.animateSelection((z || NewContactBottomSheet.this.phoneField.isFocused()) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            }
        };
        this.codeField = animatedPhoneNumberEditText2;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        animatedPhoneNumberEditText2.setTextColor(Theme.getColor(i2));
        this.codeField.setInputType(3);
        this.codeField.setCursorSize(AndroidUtilities.dp(20.0f));
        this.codeField.setCursorWidth(1.5f);
        this.codeField.setPadding(AndroidUtilities.dp(10.0f), 0, 0, 0);
        this.codeField.setTextSize(1, 16.0f);
        this.codeField.setMaxLines(1);
        this.codeField.setGravity(19);
        this.codeField.setImeOptions(268435461);
        this.codeField.setBackground(null);
        this.codeField.setContentDescription(LocaleController.getString(R.string.LoginAccessibilityCountryCode));
        linearLayout2.addView(this.codeField, LayoutHelper.createLinear(55, 36, -9.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        this.codeField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.NewContactBottomSheet.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String str2;
                boolean z;
                CountrySelectActivity.Country country2;
                CountrySelectActivity.Country country3;
                if (NewContactBottomSheet.this.ignoreOnTextChange) {
                    return;
                }
                NewContactBottomSheet.this.ignoreOnTextChange = true;
                String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(NewContactBottomSheet.this.codeField.getText().toString());
                NewContactBottomSheet.this.codeField.setText(strStripExceptNumbers);
                if (strStripExceptNumbers.length() == 0) {
                    NewContactBottomSheet.this.setCountryButtonText(null);
                    NewContactBottomSheet.this.phoneField.setHintText((String) null);
                } else {
                    int i3 = 4;
                    if (strStripExceptNumbers.length() > 4) {
                        while (true) {
                            if (i3 < 1) {
                                str2 = null;
                                z = false;
                                break;
                            }
                            String strSubstring2 = strStripExceptNumbers.substring(0, i3);
                            List list = (List) NewContactBottomSheet.this.codesMap.get(strSubstring2);
                            if (list == null) {
                                country3 = null;
                            } else if (list.size() > 1) {
                                String string = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_" + strSubstring2, null);
                                country3 = (CountrySelectActivity.Country) list.get(list.size() - 1);
                                if (string != null) {
                                    Iterator it = NewContactBottomSheet.this.countriesArray.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        CountrySelectActivity.Country country4 = (CountrySelectActivity.Country) it.next();
                                        if (Objects.equals(country4.shortname, string)) {
                                            country3 = country4;
                                            break;
                                        }
                                    }
                                }
                            } else {
                                country3 = (CountrySelectActivity.Country) list.get(0);
                            }
                            if (country3 != null) {
                                String str3 = strStripExceptNumbers.substring(i3) + NewContactBottomSheet.this.phoneField.getText().toString();
                                NewContactBottomSheet.this.codeField.setText(strSubstring2);
                                z = true;
                                str2 = str3;
                                strStripExceptNumbers = strSubstring2;
                                break;
                            }
                            i3--;
                        }
                        if (!z) {
                            str2 = strStripExceptNumbers.substring(1) + NewContactBottomSheet.this.phoneField.getText().toString();
                            AnimatedPhoneNumberEditText animatedPhoneNumberEditText3 = NewContactBottomSheet.this.codeField;
                            strStripExceptNumbers = strStripExceptNumbers.substring(0, 1);
                            animatedPhoneNumberEditText3.setText(strStripExceptNumbers);
                        }
                    } else {
                        str2 = null;
                        z = false;
                    }
                    Iterator it2 = NewContactBottomSheet.this.countriesArray.iterator();
                    CountrySelectActivity.Country country5 = null;
                    int i4 = 0;
                    while (it2.hasNext()) {
                        CountrySelectActivity.Country country6 = (CountrySelectActivity.Country) it2.next();
                        if (country6.code.startsWith(strStripExceptNumbers)) {
                            i4++;
                            if (country6.code.equals(strStripExceptNumbers)) {
                                country5 = country6;
                            }
                        }
                    }
                    if (i4 == 1 && country5 != null && str2 == null) {
                        str2 = strStripExceptNumbers.substring(country5.code.length()) + NewContactBottomSheet.this.phoneField.getText().toString();
                        AnimatedPhoneNumberEditText animatedPhoneNumberEditText4 = NewContactBottomSheet.this.codeField;
                        String str4 = country5.code;
                        animatedPhoneNumberEditText4.setText(str4);
                        strStripExceptNumbers = str4;
                    }
                    List list2 = (List) NewContactBottomSheet.this.codesMap.get(strStripExceptNumbers);
                    if (list2 == null) {
                        country2 = null;
                    } else if (list2.size() > 1) {
                        String string2 = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_" + strStripExceptNumbers, null);
                        country2 = (CountrySelectActivity.Country) list2.get(list2.size() - 1);
                        if (string2 != null) {
                            Iterator it3 = NewContactBottomSheet.this.countriesArray.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    break;
                                }
                                CountrySelectActivity.Country country7 = (CountrySelectActivity.Country) it3.next();
                                if (Objects.equals(country7.shortname, string2)) {
                                    country2 = country7;
                                    break;
                                }
                            }
                        }
                    } else {
                        country2 = (CountrySelectActivity.Country) list2.get(0);
                    }
                    if (country2 != null) {
                        NewContactBottomSheet.this.ignoreSelection = true;
                        NewContactBottomSheet.this.setCountryHint(strStripExceptNumbers, country2);
                    } else {
                        NewContactBottomSheet.this.setCountryButtonText(null);
                        NewContactBottomSheet.this.phoneField.setHintText((String) null);
                    }
                    if (!z) {
                        NewContactBottomSheet.this.codeField.setSelection(NewContactBottomSheet.this.codeField.getText().length());
                    }
                    if (str2 != null && str2.length() != 0) {
                        NewContactBottomSheet.this.phoneField.requestFocus();
                        NewContactBottomSheet.this.phoneField.setText(str2);
                        NewContactBottomSheet.this.phoneField.setSelection(NewContactBottomSheet.this.phoneField.length());
                    }
                }
                NewContactBottomSheet.this.ignoreOnTextChange = false;
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }
        });
        this.codeField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda6
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$4(textView2, i3, keyEvent);
            }
        });
        this.codeDividerView = new View(context);
        LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(0, -1, 4.0f, 8.0f, 12.0f, 8.0f);
        layoutParamsCreateLinear.width = Math.max(2, AndroidUtilities.dp(0.5f));
        linearLayout2.addView(this.codeDividerView, layoutParamsCreateLinear);
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText3 = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.NewContactBottomSheet.5
            @Override // org.telegram.ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i3, Rect rect) {
                super.onFocusChanged(z, i3, rect);
                NewContactBottomSheet.this.phoneOutlineView.animateSelection((z || NewContactBottomSheet.this.codeField.isFocused()) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            }

            @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
            public boolean onKeyDown(int i3, KeyEvent keyEvent) {
                if (i3 == 67 && NewContactBottomSheet.this.phoneField.length() == 0) {
                    NewContactBottomSheet.this.codeField.requestFocus();
                    NewContactBottomSheet.this.codeField.setSelection(NewContactBottomSheet.this.codeField.length());
                    NewContactBottomSheet.this.codeField.dispatchKeyEvent(keyEvent);
                }
                return super.onKeyDown(i3, keyEvent);
            }
        };
        this.phoneField = animatedPhoneNumberEditText3;
        animatedPhoneNumberEditText3.setTextColor(Theme.getColor(i2));
        this.phoneField.setInputType(3);
        this.phoneField.setPadding(0, 0, 0, 0);
        this.phoneField.setCursorSize(AndroidUtilities.dp(20.0f));
        this.phoneField.setCursorWidth(1.5f);
        this.phoneField.setTextSize(1, 16.0f);
        this.phoneField.setMaxLines(1);
        this.phoneField.setGravity(19);
        this.phoneField.setImeOptions(268435461);
        this.phoneField.setBackground(null);
        this.phoneField.setContentDescription(LocaleController.getString(i));
        linearLayout2.addView(this.phoneField, LayoutHelper.createFrame(-1, 36.0f));
        this.phoneField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.NewContactBottomSheet.6
            private int actionPosition;
            private int characterAction = -1;

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int i3;
                int i4;
                if (NewContactBottomSheet.this.ignoreOnPhoneChange) {
                    return;
                }
                int selectionStart = NewContactBottomSheet.this.phoneField.getSelectionStart();
                String string = NewContactBottomSheet.this.phoneField.getText().toString();
                if (this.characterAction == 3) {
                    string = string.substring(0, this.actionPosition) + string.substring(this.actionPosition + 1);
                    selectionStart--;
                }
                StringBuilder sb = new StringBuilder(string.length());
                int i5 = 0;
                while (i5 < string.length()) {
                    int i6 = i5 + 1;
                    String strSubstring2 = string.substring(i5, i6);
                    if ("0123456789".contains(strSubstring2)) {
                        sb.append(strSubstring2);
                    }
                    i5 = i6;
                }
                NewContactBottomSheet.this.ignoreOnPhoneChange = true;
                String hintText = NewContactBottomSheet.this.phoneField.getHintText();
                if (hintText != null) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= sb.length()) {
                            break;
                        }
                        if (i7 < hintText.length()) {
                            if (hintText.charAt(i7) == ' ') {
                                sb.insert(i7, ' ');
                                i7++;
                                if (selectionStart == i7 && (i4 = this.characterAction) != 2 && i4 != 3) {
                                    selectionStart++;
                                }
                            }
                            i7++;
                        } else {
                            sb.insert(i7, ' ');
                            if (selectionStart == i7 + 1 && (i3 = this.characterAction) != 2 && i3 != 3) {
                                selectionStart++;
                            }
                        }
                    }
                }
                editable.replace(0, editable.length(), sb);
                if (selectionStart >= 0) {
                    NewContactBottomSheet.this.phoneField.setSelection(Math.min(selectionStart, NewContactBottomSheet.this.phoneField.length()));
                }
                NewContactBottomSheet.this.phoneField.onTextChange();
                NewContactBottomSheet.this.ignoreOnPhoneChange = false;
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                int i6;
                if (i4 == 0 && i5 == 1) {
                    this.characterAction = 1;
                    return;
                }
                if (i4 != 1 || i5 != 0) {
                    i6 = -1;
                } else {
                    if (charSequence.charAt(i3) == ' ' && i3 > 0) {
                        this.characterAction = 3;
                        this.actionPosition = i3 - 1;
                        return;
                    }
                    i6 = 2;
                }
                this.characterAction = i6;
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }
        });
        this.phoneField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$5(textView2, i3, keyEvent);
            }
        });
        HashMap map = new HashMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(ApplicationLoader.applicationContext.getResources().getAssets().open("countries.txt")));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(";");
                CountrySelectActivity.Country country2 = new CountrySelectActivity.Country();
                country2.name = strArrSplit[2];
                country2.code = strArrSplit[0];
                country2.shortname = strArrSplit[1];
                this.countriesArray.add(0, country2);
                List list = (List) this.codesMap.get(strArrSplit[0]);
                if (list == null) {
                    HashMap map2 = this.codesMap;
                    String str2 = strArrSplit[0];
                    ArrayList arrayList = new ArrayList();
                    map2.put(str2, arrayList);
                    list = arrayList;
                }
                list.add(country2);
                if (strArrSplit.length > 3) {
                    this.phoneFormatMap.put(strArrSplit[0], Collections.singletonList(strArrSplit[3]));
                }
                map.put(strArrSplit[1], strArrSplit[2]);
            }
            bufferedReader.close();
        } catch (Exception e) {
            FileLog.e(e);
        }
        Collections.sort(this.countriesArray, Comparator$CC.comparing(new Function() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda8
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return ((CountrySelectActivity.Country) obj).name;
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }));
        if (TextUtils.isEmpty(this.initialPhoneNumber)) {
            try {
                telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
            } catch (Exception e2) {
                FileLog.e(e2);
            }
            String upperCase = telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase() : null;
            if (upperCase != null && (str = (String) map.get(upperCase)) != null) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.countriesArray.size()) {
                        country = null;
                        break;
                    }
                    if (Objects.equals(((CountrySelectActivity.Country) this.countriesArray.get(i3)).name, str)) {
                        country = (CountrySelectActivity.Country) this.countriesArray.get(i3);
                        break;
                    }
                    i3++;
                }
                if (country != null) {
                    this.codeField.setText(country.code);
                }
            }
            if (this.codeField.length() == 0) {
                this.phoneField.setHintText((String) null);
            }
        } else {
            TLRPC.User currentUser = this.parentFragment.getUserConfig().getCurrentUser();
            if (this.initialPhoneNumber.startsWith("+")) {
                animatedPhoneNumberEditText = this.codeField;
                strSubstring = this.initialPhoneNumber.substring(1);
            } else {
                if (this.initialPhoneNumberWithCountryCode || currentUser == null || TextUtils.isEmpty(currentUser.phone)) {
                    animatedPhoneNumberEditText = this.codeField;
                } else {
                    String str3 = currentUser.phone;
                    int i4 = 4;
                    while (true) {
                        if (i4 < 1) {
                            break;
                        }
                        String strSubstring2 = str3.substring(0, i4);
                        if (((List) this.codesMap.get(strSubstring2)) != null) {
                            this.codeField.setText(strSubstring2);
                            break;
                        }
                        i4--;
                    }
                    animatedPhoneNumberEditText = this.phoneField;
                }
                strSubstring = this.initialPhoneNumber;
            }
            animatedPhoneNumberEditText.setText(strSubstring);
            this.initialPhoneNumber = null;
        }
        this.doneButtonContainer = new FrameLayout(getContext());
        TextView textView2 = new TextView(context);
        this.doneButton = textView2;
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        this.doneButton.setGravity(17);
        this.doneButton.setLines(1);
        this.doneButton.setSingleLine(true);
        this.doneButton.setText(LocaleController.getString(R.string.CreateContact));
        TextView textView3 = this.doneButton;
        BaseFragment baseFragment = this.parentFragment;
        int i5 = Theme.key_featuredStickers_buttonText;
        textView3.setTextColor(baseFragment.getThemedColor(i5));
        this.doneButton.setTextSize(1, 15.0f);
        this.doneButton.setTypeface(AndroidUtilities.bold());
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.progressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(20.0f));
        this.progressView.setProgressColor(this.parentFragment.getThemedColor(i5));
        this.doneButtonContainer.addView(this.doneButton, LayoutHelper.createFrame(-1, -1.0f));
        this.doneButtonContainer.addView(this.progressView, LayoutHelper.createFrame(40, 40, 17));
        this.contentLayout.addView(this.doneButtonContainer, LayoutHelper.createLinear(-1, 48, 0, 0, 16, 0, 16));
        AndroidUtilities.updateViewVisibilityAnimated(this.doneButton, true, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 1.0f, false);
        this.doneButtonContainer.setBackground(Theme.AdaptiveRipple.filledRect(this.parentFragment.getThemedColor(Theme.key_featuredStickers_addButton), 6.0f));
        this.doneButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$7(view);
            }
        });
        this.plusTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.codeDividerView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputField));
        return scrollView;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$11();
            }
        }, 50L);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        OutlineEditText outlineEditText = this.firstNameField;
        int i = ThemeDescription.FLAG_TEXTCOLOR;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(outlineEditText, i, null, null, null, null, i2));
        OutlineEditText outlineEditText2 = this.firstNameField;
        int i3 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(outlineEditText2, i3, null, null, null, null, i4));
        OutlineEditText outlineEditText3 = this.firstNameField;
        int i5 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i6 = Theme.key_windowBackgroundWhiteInputField;
        arrayList.add(new ThemeDescription(outlineEditText3, i5, null, null, null, null, i6));
        OutlineEditText outlineEditText4 = this.firstNameField;
        int i7 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i8 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        arrayList.add(new ThemeDescription(outlineEditText4, i7, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.editDoneItemProgress, 0, null, null, null, null, Theme.key_contextProgressInner2));
        arrayList.add(new ThemeDescription(this.editDoneItemProgress, 0, null, null, null, null, Theme.key_contextProgressOuter2));
        return arrayList;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (this.ignoreSelection) {
            this.ignoreSelection = false;
            return;
        }
        this.ignoreOnTextChange = true;
        this.codeField.setText(((CountrySelectActivity.Country) this.countriesArray.get(i)).code);
        this.ignoreOnTextChange = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }

    public void selectCountry(CountrySelectActivity.Country country) {
        this.ignoreOnTextChange = true;
        String str = country.code;
        this.codeField.setText(str);
        setCountryHint(str, country);
        this.ignoreOnTextChange = false;
    }

    public void setInitialName(String str, String str2) {
        OutlineEditText outlineEditText = this.firstNameField;
        if (outlineEditText != null) {
            outlineEditText.getEditText().setText(str);
        } else {
            this.initialFirstName = str;
        }
        OutlineEditText outlineEditText2 = this.lastNameField;
        if (outlineEditText2 != null) {
            outlineEditText2.getEditText().setText(str2);
        } else {
            this.initialLastName = str2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00af, code lost:
    
        r5.initialPhoneNumber = r5.initialPhoneNumber.substring(1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NewContactBottomSheet setInitialPhoneNumber(String str, boolean z) {
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText;
        String strSubstring;
        this.initialPhoneNumber = str;
        this.initialPhoneNumberWithCountryCode = z;
        if (!TextUtils.isEmpty(str)) {
            TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
            if (this.initialPhoneNumber.startsWith("+")) {
                animatedPhoneNumberEditText = this.codeField;
                strSubstring = this.initialPhoneNumber.substring(1);
            } else {
                if (this.initialPhoneNumberWithCountryCode || currentUser == null || TextUtils.isEmpty(currentUser.phone)) {
                    animatedPhoneNumberEditText = this.codeField;
                } else {
                    String str2 = currentUser.phone;
                    int i = 4;
                    while (true) {
                        if (i >= 1) {
                            List list = (List) this.codesMap.get(str2.substring(0, i));
                            if (list == null || list.size() <= 0) {
                                i--;
                            } else {
                                String str3 = ((CountrySelectActivity.Country) list.get(0)).code;
                                this.codeField.setText(str3);
                                if (str3.endsWith("0") && this.initialPhoneNumber.startsWith("0")) {
                                }
                            }
                        } else if (Build.VERSION.SDK_INT >= 23) {
                            Context context = ApplicationLoader.applicationContext;
                            String upperCase = context != null ? ((TelephonyManager) context.getSystemService(TelephonyManager.class)).getSimCountryIso().toUpperCase(Locale.US) : Locale.getDefault().getCountry();
                            this.codeField.setText(upperCase);
                            if (upperCase.endsWith("0") && this.initialPhoneNumber.startsWith("0")) {
                            }
                        }
                    }
                    animatedPhoneNumberEditText = this.phoneField;
                }
                strSubstring = this.initialPhoneNumber;
            }
            animatedPhoneNumberEditText.setText(strSubstring);
            this.initialPhoneNumber = null;
        }
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.firstNameField.getEditText().requestFocus();
        this.firstNameField.getEditText().setSelection(this.firstNameField.getEditText().length());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$10();
            }
        }, 50L);
    }
}

package org.telegram.ui.bots;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots$botVerifierSettings;
import org.telegram.tgnet.tl.TL_bots$setCustomVerification;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EditTextSuggestionsFix;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.TopicsFragment;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class BotVerifySheet {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRemoveVerify$6(boolean[] zArr, TLObject tLObject, Utilities.Callback callback) {
        zArr[0] = false;
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            callback.run(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRemoveVerify$7(final boolean[] zArr, final Utilities.Callback callback, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                BotVerifySheet.lambda$openRemoveVerify$6(zArr, tLObject, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRemoveVerify$8(final boolean[] zArr, int i, long j, long j2, final Utilities.Callback callback, AlertDialog alertDialog, int i2) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        TL_bots$setCustomVerification tL_bots$setCustomVerification = new TL_bots$setCustomVerification();
        tL_bots$setCustomVerification.enabled = false;
        tL_bots$setCustomVerification.flags |= 1;
        tL_bots$setCustomVerification.bot = MessagesController.getInstance(i).getInputUser(j);
        tL_bots$setCustomVerification.peer = MessagesController.getInstance(i).getInputPeer(j2);
        ConnectionsManager.getInstance(i).sendRequest(tL_bots$setCustomVerification, new RequestDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BotVerifySheet.lambda$openRemoveVerify$7(zArr, callback, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openSheet$2(OutlineTextContainerView outlineTextContainerView, EditTextBoldCursor editTextBoldCursor, View view, boolean z) {
        outlineTextContainerView.animateSelection(z, !TextUtils.isEmpty(editTextBoldCursor.getText()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openSheet$3(ButtonWithCounterView buttonWithCounterView, TLObject tLObject, BottomSheet bottomSheet, Utilities.Callback callback) {
        buttonWithCounterView.setLoading(false);
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            bottomSheet.lambda$new$0();
            callback.run(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openSheet$4(final ButtonWithCounterView buttonWithCounterView, final BottomSheet bottomSheet, final Utilities.Callback callback, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                BotVerifySheet.lambda$openSheet$3(buttonWithCounterView, tLObject, bottomSheet, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openSheet$5(final ButtonWithCounterView buttonWithCounterView, TL_bots$botVerifierSettings tL_bots$botVerifierSettings, EditTextBoldCursor editTextBoldCursor, int i, OutlineTextContainerView outlineTextContainerView, int i2, long j, long j2, final BottomSheet bottomSheet, final Utilities.Callback callback, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        if (tL_bots$botVerifierSettings.can_modify_custom_description && editTextBoldCursor.getText().length() > i) {
            outlineTextContainerView.animateError(1.0f);
            AndroidUtilities.shakeViewSpring(outlineTextContainerView, -6.0f);
            return;
        }
        buttonWithCounterView.setLoading(true);
        TL_bots$setCustomVerification tL_bots$setCustomVerification = new TL_bots$setCustomVerification();
        tL_bots$setCustomVerification.enabled = true;
        tL_bots$setCustomVerification.flags = 1 | tL_bots$setCustomVerification.flags;
        tL_bots$setCustomVerification.bot = MessagesController.getInstance(i2).getInputUser(j);
        tL_bots$setCustomVerification.peer = MessagesController.getInstance(i2).getInputPeer(j2);
        tL_bots$setCustomVerification.custom_description = tL_bots$botVerifierSettings.can_modify_custom_description ? editTextBoldCursor.getText().toString() : tL_bots$botVerifierSettings.custom_description;
        if (!TextUtils.isEmpty(tL_bots$setCustomVerification.custom_description)) {
            tL_bots$setCustomVerification.flags |= 4;
        }
        ConnectionsManager.getInstance(i2).sendRequest(tL_bots$setCustomVerification, new RequestDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                BotVerifySheet.lambda$openSheet$4(buttonWithCounterView, bottomSheet, callback, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$openVerify$0(TopicsFragment topicsFragment, DialogsActivity dialogsActivity, long j, int i, Boolean bool) {
        String forcedFirstName;
        TLRPC.Chat chat;
        if (topicsFragment != null) {
            topicsFragment.lambda$onBackPressed$354();
            dialogsActivity.removeSelfFromStack();
        } else {
            dialogsActivity.lambda$onBackPressed$354();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            forcedFirstName = UserObject.getForcedFirstName(user);
            chat = user;
        } else {
            TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            if (chat2 == null) {
                forcedFirstName = "";
                chat = chat2;
            } else {
                forcedFirstName = chat2.title;
                chat = chat2;
            }
        }
        BulletinFactory.of(safeLastFragment).createUsersBulletin(chat, AndroidUtilities.replaceTags(LocaleController.formatString(bool.booleanValue() ? R.string.BotSentRevokeVerifyRequest : R.string.BotSentVerifyRequest, forcedFirstName))).show(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$openVerify$1(final DialogsActivity dialogsActivity, final int i, long j, TL_bots$botVerifierSettings tL_bots$botVerifierSettings, DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, final TopicsFragment topicsFragment) {
        if (arrayList.isEmpty()) {
            return false;
        }
        final long j2 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        openSheet(dialogsActivity.getContext(), i, j, j2, tL_bots$botVerifierSettings, new Utilities.Callback() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BotVerifySheet.lambda$openVerify$0(topicsFragment, dialogsActivity, j2, i, (Boolean) obj);
            }
        });
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void openRemoveVerify(Context context, final int i, final long j, final long j2, TL_bots$botVerifierSettings tL_bots$botVerifierSettings, final Utilities.Callback callback) {
        String forcedFirstName;
        TLRPC.Chat chat;
        if (context == null) {
            return;
        }
        if (j2 >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j2));
            forcedFirstName = UserObject.getForcedFirstName(user);
            chat = user;
        } else {
            TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-j2));
            if (chat2 == null) {
                forcedFirstName = "";
                chat = chat2;
            } else {
                forcedFirstName = chat2.title;
                chat = chat2;
            }
        }
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_groupcreate_spanBackground)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(28.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo((TLObject) chat);
        backupImageView.setForUserOrChat(chat, avatarDrawable);
        frameLayout2.addView(backupImageView, LayoutHelper.createFrame(28, 28, 51));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setEmojiColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedBackground), PorterDuff.Mode.SRC_IN));
        backupImageView2.setAnimatedEmojiDrawable(AnimatedEmojiDrawable.make(i, 3, tL_bots$botVerifierSettings.icon));
        frameLayout2.addView(backupImageView2, LayoutHelper.createFrame(20, 20.0f, 19, 34.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(13);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(forcedFirstName);
        simpleTextView.setWidthWrapContent(true);
        frameLayout2.addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 57.0f, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-2, -2.0f, 17, 16.0f, BitmapDescriptorFactory.HUE_RED, 16.0f, BitmapDescriptorFactory.HUE_RED));
        final boolean[] zArr = new boolean[1];
        new AlertDialog.Builder(context).setTitle(LocaleController.getString(R.string.BotRemoveVerificationTitle)).setMessage(LocaleController.getString(j2 >= 0 ? R.string.BotRemoveVerificationText : R.string.BotRemoveVerificationChatText)).setView(frameLayout).setNegativeButton(LocaleController.getString(R.string.Cancel), null).setPositiveButton(LocaleController.getString(R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                BotVerifySheet.lambda$openRemoveVerify$8(zArr, i, j, j2, callback, alertDialog, i2);
            }
        }).makeRed(-1).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void openSheet(Context context, final int i, final long j, final long j2, final TL_bots$botVerifierSettings tL_bots$botVerifierSettings, final Utilities.Callback callback) {
        TLRPC.Chat chat;
        String str;
        TLRPC.Chat chat2;
        TLRPC.User user;
        ViewGroup.LayoutParams layoutParamsCreateFrame;
        View view;
        if (context == null) {
            return;
        }
        MessagesController.getInstance(i).getUser(Long.valueOf(j));
        if (j2 >= 0) {
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(j2));
            String forcedFirstName = UserObject.getForcedFirstName(user2);
            if (user2.bot_verification_icon == tL_bots$botVerifierSettings.icon) {
                openRemoveVerify(context, i, j, j2, tL_bots$botVerifierSettings, callback);
                return;
            }
            str = forcedFirstName;
            chat = null;
            chat2 = user2;
            user = user2;
        } else {
            TLRPC.Chat chat3 = MessagesController.getInstance(i).getChat(Long.valueOf(-j2));
            String str2 = chat3 == null ? "" : chat3.title;
            if (chat3.bot_verification_icon == tL_bots$botVerifierSettings.icon) {
                openRemoveVerify(context, i, j, j2, tL_bots$botVerifierSettings, callback);
                return;
            }
            chat = chat3;
            str = str2;
            chat2 = chat;
            user = null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_groupcreate_spanBackground)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(28.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo((TLObject) chat2);
        backupImageView.setForUserOrChat(chat2, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(28, 28, 51));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setEmojiColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedBackground), PorterDuff.Mode.SRC_IN));
        backupImageView2.setAnimatedEmojiDrawable(AnimatedEmojiDrawable.make(i, 3, tL_bots$botVerifierSettings.icon));
        frameLayout.addView(backupImageView2, LayoutHelper.createFrame(20, 20.0f, 19, 34.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(13);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(str);
        simpleTextView.setWidthWrapContent(true);
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 57.0f, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-2, -2, 1, 16, 0, 16, 0));
        TextView textView = new TextView(context);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        textView.setText(LocaleController.getString(UserObject.isBot(user) ? R.string.BotVerifyBotTitle : user != null ? R.string.BotVerifyUserTitle : ChatObject.isChannelAndNotMegaGroup(chat) ? R.string.BotVerifyChannelTitle : R.string.BotVerifyGroupTitle));
        textView.setTypeface(AndroidUtilities.bold());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 21.0f, 24.0f, 8.33f));
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(i2));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        NotificationCenter.listenEmojiLoading(textView2);
        textView2.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.BotVerifyText, str)), textView2.getPaint().getFontMetricsInt(), false));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 24.0f, BitmapDescriptorFactory.HUE_RED, 24.0f, 22.0f));
        final int i3 = MessagesController.getInstance(i).botVerificationDescriptionLengthLimit;
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        final OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        outlineTextContainerView.setForceForceUseCenter(true);
        outlineTextContainerView.setText(LocaleController.getString(R.string.BotVerifyDescription));
        outlineTextContainerView.setLeftPadding(AndroidUtilities.dp(2.0f));
        editTextBoldCursor.setTextColor(Theme.getColor(i2));
        editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setMaxLines(15);
        editTextBoldCursor.setInputType(180225);
        editTextBoldCursor.setTypeface(Typeface.DEFAULT);
        editTextBoldCursor.setSelectAllOnFocus(true);
        editTextBoldCursor.setHighlightColor(Theme.getColor(Theme.key_chat_inTextSelectionHighlight));
        editTextBoldCursor.setHandlesColor(Theme.getColor(Theme.key_chat_TextSelectionCursor));
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                BotVerifySheet.lambda$openSheet$2(outlineTextContainerView, editTextBoldCursor, view2, z);
            }
        });
        outlineTextContainerView.attachEditText(editTextBoldCursor);
        outlineTextContainerView.addView(editTextBoldCursor, LayoutHelper.createFrame(-1, -2.0f, 48, 12.0f, 4.0f, 12.0f, 4.0f));
        int i4 = -1;
        linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2));
        editTextBoldCursor.addTextChangedListener(new EditTextSuggestionsFix());
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.bots.BotVerifySheet.1
            boolean ignoreEditText;

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CharSequence text = editTextBoldCursor.getText();
                if (!this.ignoreEditText) {
                    int length = text.length();
                    int i5 = i3;
                    if (length > i5) {
                        this.ignoreEditText = true;
                        EditTextBoldCursor editTextBoldCursor2 = editTextBoldCursor;
                        text = text.subSequence(0, i5);
                        editTextBoldCursor2.setText(text);
                        EditTextBoldCursor editTextBoldCursor3 = editTextBoldCursor;
                        editTextBoldCursor3.setSelection(editTextBoldCursor3.length());
                        this.ignoreEditText = false;
                    }
                }
                outlineTextContainerView.animateSelection(editTextBoldCursor.isFocused(), !TextUtils.isEmpty(text));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }
        });
        if (!TextUtils.isEmpty(tL_bots$botVerifierSettings.custom_description)) {
            editTextBoldCursor.setText(tL_bots$botVerifierSettings.custom_description);
            if (!tL_bots$botVerifierSettings.can_modify_custom_description) {
                editTextBoldCursor.setEnabled(false);
                editTextBoldCursor.setFocusable(false);
                editTextBoldCursor.setFocusableInTouchMode(false);
            }
        } else if (!tL_bots$botVerifierSettings.can_modify_custom_description) {
            outlineTextContainerView.setVisibility(8);
        }
        if (tL_bots$botVerifierSettings.can_modify_custom_description) {
            TextView textView3 = new TextView(context);
            textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
            textView3.setTextSize(1, 12.0f);
            textView3.setText(LocaleController.getString(j2 >= 0 ? R.string.BotVerifyDescriptionInfo : R.string.BotVerifyDescriptionInfoChat));
            textView3.setPadding(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(27.0f));
            i4 = -1;
            layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2.0f);
            view = textView3;
        } else {
            View view2 = new View(context);
            layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 12.0f);
            view = view2;
        }
        linearLayout.addView(view, layoutParamsCreateFrame);
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
        buttonWithCounterView.setText(textView.getText(), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(i4, 48));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                BotVerifySheet.lambda$openSheet$5(buttonWithCounterView, tL_bots$botVerifierSettings, editTextBoldCursor, i3, outlineTextContainerView, i, j, j2, bottomSheetCreate, callback, view3);
            }
        });
        bottomSheetCreate.smoothKeyboardAnimationEnabled = true;
        bottomSheetCreate.smoothKeyboardByBottom = true;
        bottomSheetCreate.show();
    }

    public static void openVerify(final int i, final long j, final TL_bots$botVerifierSettings tL_bots$botVerifierSettings) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 16);
        bundle.putBoolean("resetDelegate", false);
        final DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setCurrentAccount(i);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, TopicsFragment topicsFragment) {
                return BotVerifySheet.lambda$openVerify$1(dialogsActivity, i, j, tL_bots$botVerifierSettings, dialogsActivity2, arrayList, charSequence, z, z2, i2, topicsFragment);
            }
        });
        safeLastFragment.presentFragment(dialogsActivity);
    }
}

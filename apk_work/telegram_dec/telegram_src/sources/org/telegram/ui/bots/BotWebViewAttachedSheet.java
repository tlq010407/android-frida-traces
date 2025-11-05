package org.telegram.ui.bots;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots$BotInfo;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.SimpleFloatPropertyCompat;
import org.telegram.ui.LaunchActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class BotWebViewAttachedSheet implements NotificationCenter.NotificationCenterDelegate, BaseFragment.AttachedSheet, BottomSheetTabsOverlay.Sheet {
    private static final SimpleFloatPropertyCompat ACTION_BAR_TRANSITION_PROGRESS_VALUE = new SimpleFloatPropertyCompat("actionBarTransitionProgress", new SimpleFloatPropertyCompat.Getter() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda0
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Getter
        public final float get(Object obj) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
            return BotWebViewAttachedSheet.lambda$static$1(null);
        }
    }, new SimpleFloatPropertyCompat.Setter() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda1
        @Override // org.telegram.ui.Components.SimpleFloatPropertyCompat.Setter
        public final void set(Object obj, float f) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
            BotWebViewAttachedSheet.lambda$static$2(null, f);
        }
    }).setMultiplier(100.0f);

    public static boolean hasPrivacyCommand(TLRPC.UserFull userFull) {
        TL_bots$BotInfo tL_bots$BotInfo;
        if (userFull == null || (tL_bots$BotInfo = userFull.bot_info) == null) {
            return false;
        }
        if (tL_bots$BotInfo.privacy_policy_url != null) {
            return true;
        }
        Iterator it = tL_bots$BotInfo.commands.iterator();
        while (it.hasNext()) {
            if ("privacy".equals(((TLRPC.TL_botCommand) it.next()).command)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openPrivacy$37(int i, long j) {
        SendMessagesHelper.getInstance(i).sendMessage(SendMessagesHelper.SendMessageParams.of("/privacy", j, null, null, null, false, null, null, null, true, 0, null, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$1(BotWebViewAttachedSheet botWebViewAttachedSheet) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$2(BotWebViewAttachedSheet botWebViewAttachedSheet, float f) {
        throw null;
    }

    public static boolean openPrivacy(final int i, final long j) {
        TL_bots$BotInfo tL_bots$BotInfo;
        TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
        if (userFull == null || (tL_bots$BotInfo = userFull.bot_info) == null) {
            return false;
        }
        String string = tL_bots$BotInfo.privacy_policy_url;
        if (string == null && !hasPrivacyCommand(userFull)) {
            string = LocaleController.getString(R.string.BotDefaultPrivacyPolicy);
        }
        if (string != null) {
            Browser.openUrl(ApplicationLoader.applicationContext, string);
            return false;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return false;
        }
        if (!(safeLastFragment instanceof ChatActivity) || ((ChatActivity) safeLastFragment).getDialogId() != j) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotWebViewAttachedSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewAttachedSheet.lambda$openPrivacy$37(i, j);
            }
        }, 150L);
        return true;
    }
}

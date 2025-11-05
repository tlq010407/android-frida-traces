package org.telegram.ui;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.Collection;
import j$.util.function.Function;
import j$.util.function.Predicate;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.voip.ConferenceCall;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_phone$getGroupCall;
import org.telegram.tgnet.tl.TL_phone$groupCall;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarsImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public abstract class GroupCallSheet {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$0(AlertDialog alertDialog, Browser.Progress progress, TLObject tLObject, int i, Context context, long j, TLRPC.InputGroupCall inputGroupCall, TLRPC.TL_error tL_error) {
        BaseFragment safeLastFragment;
        ConferenceCall conferenceCall;
        TLRPC.GroupCall groupCall;
        LaunchActivity launchActivity;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (progress != null) {
            progress.end();
        }
        if (tLObject instanceof TL_phone$groupCall) {
            TL_phone$groupCall tL_phone$groupCall = (TL_phone$groupCall) tLObject;
            MessagesController.getInstance(i).putUsers(tL_phone$groupCall.users, false);
            MessagesController.getInstance(i).putChats(tL_phone$groupCall.chats, false);
            if (VoIPService.getSharedInstance() == null || (conferenceCall = VoIPService.getSharedInstance().conference) == null || (groupCall = conferenceCall.groupCall) == null || tL_phone$groupCall.call.id != groupCall.id || (launchActivity = LaunchActivity.instance) == null) {
                show(context, i, j, inputGroupCall, tL_phone$groupCall.call, tL_phone$groupCall.participants);
                return;
            } else {
                GroupCallActivity.create(launchActivity, AccountInstance.getInstance(VoIPService.getSharedInstance().getAccount()), null, null, false, null);
                return;
            }
        }
        if (tL_error == null || !"GROUPCALL_INVALID".equalsIgnoreCase(tL_error.text)) {
            if (tL_error == null || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
                return;
            }
            BulletinFactory.of(safeLastFragment).showForError(tL_error);
            return;
        }
        BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment2 != null) {
            BulletinFactory.of(safeLastFragment2).createSimpleBulletin(R.raw.error, LocaleController.getString(R.string.LinkIsNoActive)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$1(final AlertDialog alertDialog, final Browser.Progress progress, final int i, final Context context, final long j, final TLRPC.InputGroupCall inputGroupCall, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallSheet.lambda$show$0(alertDialog, progress, tLObject, i, context, j, inputGroupCall, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$2(int i, int i2) {
        ConnectionsManager.getInstance(i).cancelRequest(i2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$show$3(TLRPC.GroupCallParticipant groupCallParticipant) {
        return Long.valueOf(DialogObject.getPeerDialogId(groupCallParticipant.peer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$show$4(int i, long j, Long l) {
        return (l.longValue() == UserConfig.getInstance(i).getClientUserId() || l.longValue() == j) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$5(BottomSheet bottomSheet, Context context, int i, TLRPC.InputGroupCall inputGroupCall, View view) {
        bottomSheet.lambda$new$0();
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity == null) {
            return;
        }
        VoIPHelper.joinConference(activityFindActivity, i, inputGroupCall, false, null);
    }

    public static void show(Context context, int i, long j, String str, Browser.Progress progress) {
        TLRPC.TL_inputGroupCallSlug tL_inputGroupCallSlug = new TLRPC.TL_inputGroupCallSlug();
        tL_inputGroupCallSlug.slug = str;
        show(context, i, j, tL_inputGroupCallSlug, progress);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void show(final Context context, final int i, final long j, final TLRPC.InputGroupCall inputGroupCall, final Browser.Progress progress) {
        AlertDialog alertDialog;
        ConferenceCall conferenceCall;
        if (VoIPService.getSharedInstance() != null && (conferenceCall = VoIPService.getSharedInstance().conference) != null) {
            if (inputGroupCall instanceof TLRPC.TL_inputGroupCall) {
                TLRPC.GroupCall groupCall = conferenceCall.groupCall;
                if (groupCall == null || inputGroupCall.id != groupCall.id) {
                    TLRPC.InputGroupCall inputGroupCall2 = conferenceCall.inputGroupCall;
                    if ((inputGroupCall2 instanceof TLRPC.TL_inputGroupCall) && inputGroupCall.id == inputGroupCall2.id) {
                        LaunchActivity launchActivity = LaunchActivity.instance;
                        if (launchActivity != null) {
                            GroupCallActivity.create(launchActivity, AccountInstance.getInstance(VoIPService.getSharedInstance().getAccount()), null, null, false, null);
                            return;
                        }
                    }
                }
            } else if (inputGroupCall instanceof TLRPC.TL_inputGroupCallSlug) {
                TLRPC.InputGroupCall inputGroupCall3 = conferenceCall.inputGroupCall;
                if ((inputGroupCall3 instanceof TLRPC.TL_inputGroupCallSlug) && TextUtils.equals(inputGroupCall3.slug, inputGroupCall.slug)) {
                }
            }
        }
        if (progress == null) {
            alertDialog = new AlertDialog(context, 3);
            alertDialog.showDelayed(300L);
        } else {
            alertDialog = null;
        }
        final AlertDialog alertDialog2 = alertDialog;
        TL_phone$getGroupCall tL_phone$getGroupCall = new TL_phone$getGroupCall();
        tL_phone$getGroupCall.call = inputGroupCall;
        tL_phone$getGroupCall.limit = 10;
        final int iSendRequest = ConnectionsManager.getInstance(i).sendRequest(tL_phone$getGroupCall, new RequestDelegate() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                GroupCallSheet.lambda$show$1(alertDialog2, progress, i, context, j, inputGroupCall, tLObject, tL_error);
            }
        });
        if (progress != null) {
            progress.onCancel(new Runnable() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GroupCallSheet.lambda$show$2(i, iSendRequest);
                }
            });
            progress.init();
        }
    }

    public static void show(final Context context, final int i, final long j, final TLRPC.InputGroupCall inputGroupCall, TLRPC.GroupCall groupCall, ArrayList arrayList) {
        DarkThemeResourceProvider darkThemeResourceProvider = new DarkThemeResourceProvider();
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, darkThemeResourceProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, darkThemeResourceProvider)));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.filled_calls_users);
        frameLayout.addView(imageView, LayoutHelper.createFrame(56, 56, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(80, 80, 1, 2, 21, 2, 13));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView = TextHelper.makeLinkTextView(context, 20.0f, i2, true, darkThemeResourceProvider);
        linksTextViewMakeLinkTextView.setText(LocaleController.getString(R.string.GroupCallLinkTitle));
        linksTextViewMakeLinkTextView.setGravity(17);
        linearLayout.addView(linksTextViewMakeLinkTextView, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 4));
        List list = (List) Collection.EL.stream(arrayList).map(new Function() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda3
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return GroupCallSheet.lambda$show$3((TLRPC.GroupCallParticipant) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }).filter(new Predicate() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda4
            @Override // j$.util.function.Predicate
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate.CC.$default$and(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // j$.util.function.Predicate
            public /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate.CC.$default$or(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final boolean test(Object obj) {
                return GroupCallSheet.lambda$show$4(i, j, (Long) obj);
            }
        }).collect(Collectors.toList());
        boolean z = !list.isEmpty();
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView2 = TextHelper.makeLinkTextView(context, 14.0f, i2, false, darkThemeResourceProvider);
        linksTextViewMakeLinkTextView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(R.string.GroupCallLinkText)));
        linksTextViewMakeLinkTextView2.setGravity(17);
        linksTextViewMakeLinkTextView2.setMaxWidth(HintView2.cutInFancyHalf(linksTextViewMakeLinkTextView2.getText(), linksTextViewMakeLinkTextView2.getPaint()));
        linearLayout.addView(linksTextViewMakeLinkTextView2, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 23));
        if (z) {
            View view = new View(context);
            view.setBackgroundColor(-14012362);
            linearLayout.addView(view, LayoutHelper.createLinear(-1, 0.66f, 7, 0, 0, 0, 0));
            AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
            avatarsImageView.setCentered(true);
            avatarsImageView.setSize(AndroidUtilities.dp(38.0f));
            int iMin = Math.min(3, list.size());
            avatarsImageView.setCount(iMin);
            for (int i3 = 0; i3 < iMin; i3++) {
                avatarsImageView.setObject(i3, i, MessagesController.getInstance(i).getUser((Long) list.get(i3)));
            }
            avatarsImageView.commitTransition(false);
            linearLayout.addView(avatarsImageView, LayoutHelper.createLinear(-1, 58, 2.0f, 11.0f, 5.0f, BitmapDescriptorFactory.HUE_RED));
            LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView3 = TextHelper.makeLinkTextView(context, 14.0f, Theme.key_windowBackgroundWhiteBlackText, false, darkThemeResourceProvider);
            linksTextViewMakeLinkTextView3.setGravity(17);
            linksTextViewMakeLinkTextView3.setText(AndroidUtilities.replaceTags(list.size() == 1 ? LocaleController.formatString(R.string.GroupCallLinkText2One, DialogObject.getShortName(i, ((Long) list.get(0)).longValue())) : list.size() == 2 ? LocaleController.formatString(R.string.GroupCallLinkText2Two, DialogObject.getShortName(i, ((Long) list.get(0)).longValue()), DialogObject.getShortName(i, ((Long) list.get(1)).longValue())) : LocaleController.formatPluralStringComma("GroupCallLinkText2Many", arrayList.size() - 2, DialogObject.getShortName(i, ((Long) list.get(0)).longValue()), DialogObject.getShortName(i, ((Long) list.get(1)).longValue()))));
            linksTextViewMakeLinkTextView3.setMaxWidth(HintView2.cutInFancyHalf(linksTextViewMakeLinkTextView3.getText(), linksTextViewMakeLinkTextView3.getPaint()));
            linearLayout.addView(linksTextViewMakeLinkTextView3, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 25));
        }
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, darkThemeResourceProvider);
        buttonWithCounterView.setText(LocaleController.getString(R.string.GroupCallLinkJoin), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 2.0f, BitmapDescriptorFactory.HUE_RED, 2.0f, BitmapDescriptorFactory.HUE_RED));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.GroupCallSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GroupCallSheet.lambda$show$5(bottomSheetCreate, context, i, inputGroupCall, view2);
            }
        });
        bottomSheetCreate.fixNavigationBar();
        bottomSheetCreate.show();
    }
}

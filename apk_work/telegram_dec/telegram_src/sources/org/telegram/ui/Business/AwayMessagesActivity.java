package org.telegram.ui.Business;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account$BusinessAwayMessageSchedule;
import org.telegram.tgnet.tl.TL_account$TL_businessAwayMessage;
import org.telegram.tgnet.tl.TL_account$TL_businessAwayMessageScheduleAlways;
import org.telegram.tgnet.tl.TL_account$TL_businessAwayMessageScheduleCustom;
import org.telegram.tgnet.tl.TL_account$TL_businessAwayMessageScheduleOutsideWorkHours;
import org.telegram.tgnet.tl.TL_account$TL_inputBusinessAwayMessage;
import org.telegram.tgnet.tl.TL_account$updateBusinessAwayMessage;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CircularProgressDrawable;
import org.telegram.ui.Components.CrossfadeDrawable;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class AwayMessagesActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private int currentScheduleCustomEnd;
    private int currentScheduleCustomStart;
    public TL_account$TL_businessAwayMessage currentValue;
    public int currentValueScheduleType;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    public boolean enabled;
    public boolean exclude;
    private boolean hasHours;
    private UniversalRecyclerView listView;
    public boolean offline_only;
    private BusinessRecipientsHelper recipientsHelper;
    public int schedule;
    public int scheduleCustomEnd;
    public int scheduleCustomStart;
    private int shiftDp = -4;
    private boolean valueSet;

    private void checkDone(boolean z) {
        if (this.doneButton == null) {
            return;
        }
        boolean zHasChanges = hasChanges();
        this.doneButton.setEnabled(zHasChanges);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            ViewPropertyAnimator viewPropertyAnimatorScaleX = this.doneButton.animate().alpha(zHasChanges ? 1.0f : BitmapDescriptorFactory.HUE_RED).scaleX(zHasChanges ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            if (zHasChanges) {
                f = 1.0f;
            }
            viewPropertyAnimatorScaleX.scaleY(f).setDuration(180L).start();
            return;
        }
        this.doneButton.setAlpha(zHasChanges ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.doneButton.setScaleX(zHasChanges ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        ActionBarMenuItem actionBarMenuItem = this.doneButton;
        if (zHasChanges) {
            f = 1.0f;
        }
        actionBarMenuItem.setScaleY(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(R.string.BusinessAwayInfo), "RestrictedEmoji", "💤"));
        arrayList.add(UItem.asCheck(1, LocaleController.getString(R.string.BusinessAwaySend)).setChecked(this.enabled));
        arrayList.add(UItem.asShadow(null));
        if (this.enabled) {
            QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply("away");
            arrayList.add(quickReplyFindReply != null ? UItem.asLargeQuickReply(quickReplyFindReply) : UItem.asButton(2, R.drawable.msg2_chats_add, LocaleController.getString(R.string.BusinessAwayCreate)).accent());
            arrayList.add(UItem.asShadow(null));
            int i = R.string.BusinessAwaySchedule;
            arrayList.add(UItem.asHeader(LocaleController.getString(i)));
            arrayList.add(UItem.asRadio(3, LocaleController.getString(R.string.BusinessAwayScheduleAlways)).setChecked(this.schedule == 0));
            if (this.hasHours) {
                arrayList.add(UItem.asRadio(4, LocaleController.getString(R.string.BusinessAwayScheduleOutsideHours)).setChecked(this.schedule == 1));
            }
            arrayList.add(UItem.asRadio(5, LocaleController.getString(R.string.BusinessAwayScheduleCustom)).setChecked(this.schedule == 2));
            if (this.schedule == 2) {
                arrayList.add(UItem.asShadow(null));
                arrayList.add(UItem.asHeader(LocaleController.getString(i)));
                arrayList.add(UItem.asButton(8, LocaleController.getString(R.string.BusinessAwayScheduleCustomStart), LocaleController.formatShortDateTime(this.scheduleCustomStart)));
                arrayList.add(UItem.asButton(9, LocaleController.getString(R.string.BusinessAwayScheduleCustomEnd), LocaleController.formatShortDateTime(this.scheduleCustomEnd)));
            }
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCheck(10, LocaleController.getString(R.string.BusinessAwayOnlyOffline)).setChecked(this.offline_only));
            arrayList.add(UItem.asShadow(LocaleController.getString(R.string.BusinessAwayOnlyOfflineInfo)));
            arrayList.add(UItem.asHeader(LocaleController.getString(R.string.BusinessRecipients)));
            arrayList.add(UItem.asRadio(6, LocaleController.getString(R.string.BusinessChatsAllPrivateExcept)).setChecked(this.exclude));
            arrayList.add(UItem.asRadio(7, LocaleController.getString(R.string.BusinessChatsOnlySelected)).setChecked(true ^ this.exclude));
            arrayList.add(UItem.asShadow(null));
            this.recipientsHelper.fillItems(arrayList);
            arrayList.add(UItem.asShadow(null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        this.listView.adapter.update(true);
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$3(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$4(AlertDialog alertDialog, int i) {
        lambda$onBackPressed$354();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$5(View view, boolean z, int i) {
        this.scheduleCustomStart = i;
        ((TextCell) view).setValue(LocaleController.formatShortDateTime(i), true);
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$6(View view, boolean z, int i) {
        this.scheduleCustomEnd = i;
        ((TextCell) view).setValue(LocaleController.formatShortDateTime(i), true);
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$1(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            this.doneButtonDrawable.animateToProgress(BitmapDescriptorFactory.HUE_RED);
            BulletinFactory.showError(tL_error);
        } else if (!(tLObject instanceof TLRPC.TL_boolFalse)) {
            lambda$onBackPressed$354();
        } else {
            this.doneButtonDrawable.animateToProgress(BitmapDescriptorFactory.HUE_RED);
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(R.string.UnknownError)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$2(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$1(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, final View view, int i, float f, float f2) {
        Context context;
        String string;
        String string2;
        long j;
        AlertsCreator.ScheduleDatePickerDelegate scheduleDatePickerDelegate;
        if (this.recipientsHelper.onClick(uItem)) {
            return;
        }
        int i2 = uItem.id;
        if (i2 == 2 || uItem.viewType == 17) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", getUserConfig().getClientUserId());
            bundle.putInt("chatMode", 5);
            bundle.putString("quick_reply", "away");
            presentFragment(new ChatActivity(bundle));
            return;
        }
        if (i2 == 1) {
            this.enabled = !this.enabled;
        } else if (i2 == 6) {
            BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
            this.exclude = true;
            businessRecipientsHelper.setExclude(true);
        } else if (i2 == 7) {
            BusinessRecipientsHelper businessRecipientsHelper2 = this.recipientsHelper;
            this.exclude = false;
            businessRecipientsHelper2.setExclude(false);
        } else if (i2 == 3) {
            this.schedule = 0;
        } else if (i2 == 4) {
            this.schedule = 1;
        } else {
            if (i2 != 5) {
                if (i2 == 8) {
                    context = getContext();
                    string = LocaleController.getString(R.string.BusinessAwayScheduleCustomStartTitle);
                    string2 = LocaleController.getString(R.string.BusinessAwayScheduleCustomSetButton);
                    j = this.scheduleCustomStart;
                    scheduleDatePickerDelegate = new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda6
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i3) {
                            this.f$0.lambda$onClick$5(view, z, i3);
                        }
                    };
                } else {
                    if (i2 != 9) {
                        if (i2 == 10) {
                            boolean z = !this.offline_only;
                            this.offline_only = z;
                            ((TextCheckCell) view).setChecked(z);
                            checkDone(true);
                        }
                        return;
                    }
                    context = getContext();
                    string = LocaleController.getString(R.string.BusinessAwayScheduleCustomEndTitle);
                    string2 = LocaleController.getString(R.string.BusinessAwayScheduleCustomSetButton);
                    j = this.scheduleCustomEnd;
                    scheduleDatePickerDelegate = new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda7
                        @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z2, int i3) {
                            this.f$0.lambda$onClick$6(view, z2, i3);
                        }
                    };
                }
                AlertsCreator.createDatePickerDialog(context, string, string2, j, scheduleDatePickerDelegate);
                return;
            }
            this.schedule = 2;
        }
        this.listView.adapter.update(true);
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void processDone() {
        TL_account$TL_inputBusinessAwayMessage tL_account$TL_inputBusinessAwayMessage;
        TL_account$BusinessAwayMessageSchedule tL_account$TL_businessAwayMessageScheduleOutsideWorkHours;
        if (this.doneButtonDrawable.getProgress() > BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (!hasChanges()) {
            lambda$onBackPressed$354();
            return;
        }
        QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply("away");
        boolean z = this.enabled;
        if (z && quickReplyFindReply == null) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            View viewFindViewByItemId = this.listView.findViewByItemId(2);
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(viewFindViewByItemId, i);
            UniversalRecyclerView universalRecyclerView = this.listView;
            universalRecyclerView.smoothScrollToPosition(universalRecyclerView.findPositionByItemId(2));
            return;
        }
        if (!z || this.recipientsHelper.validate(this.listView)) {
            this.doneButtonDrawable.animateToProgress(1.0f);
            TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
            TL_account$updateBusinessAwayMessage tL_account$updateBusinessAwayMessage = new TL_account$updateBusinessAwayMessage();
            if (this.enabled) {
                TL_account$TL_inputBusinessAwayMessage tL_account$TL_inputBusinessAwayMessage2 = new TL_account$TL_inputBusinessAwayMessage();
                tL_account$updateBusinessAwayMessage.message = tL_account$TL_inputBusinessAwayMessage2;
                tL_account$TL_inputBusinessAwayMessage2.offline_only = this.offline_only;
                tL_account$TL_inputBusinessAwayMessage2.shortcut_id = quickReplyFindReply.id;
                tL_account$TL_inputBusinessAwayMessage2.recipients = this.recipientsHelper.getInputValue();
                int i2 = this.schedule;
                if (i2 == 0) {
                    tL_account$TL_inputBusinessAwayMessage = tL_account$updateBusinessAwayMessage.message;
                    tL_account$TL_businessAwayMessageScheduleOutsideWorkHours = new TL_account$TL_businessAwayMessageScheduleAlways();
                } else if (i2 == 1) {
                    tL_account$TL_inputBusinessAwayMessage = tL_account$updateBusinessAwayMessage.message;
                    tL_account$TL_businessAwayMessageScheduleOutsideWorkHours = new TL_account$TL_businessAwayMessageScheduleOutsideWorkHours();
                } else {
                    if (i2 == 2) {
                        TL_account$TL_businessAwayMessageScheduleCustom tL_account$TL_businessAwayMessageScheduleCustom = new TL_account$TL_businessAwayMessageScheduleCustom();
                        tL_account$TL_businessAwayMessageScheduleCustom.start_date = this.scheduleCustomStart;
                        tL_account$TL_businessAwayMessageScheduleCustom.end_date = this.scheduleCustomEnd;
                        tL_account$updateBusinessAwayMessage.message.schedule = tL_account$TL_businessAwayMessageScheduleCustom;
                    }
                    tL_account$updateBusinessAwayMessage.flags |= 1;
                    if (userFull != null) {
                        userFull.flags2 |= 8;
                        TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage = new TL_account$TL_businessAwayMessage();
                        userFull.business_away_message = tL_account$TL_businessAwayMessage;
                        tL_account$TL_businessAwayMessage.offline_only = this.offline_only;
                        tL_account$TL_businessAwayMessage.shortcut_id = quickReplyFindReply.id;
                        tL_account$TL_businessAwayMessage.recipients = this.recipientsHelper.getValue();
                        userFull.business_away_message.schedule = tL_account$updateBusinessAwayMessage.message.schedule;
                    }
                }
                tL_account$TL_inputBusinessAwayMessage.schedule = tL_account$TL_businessAwayMessageScheduleOutsideWorkHours;
                tL_account$updateBusinessAwayMessage.flags |= 1;
                if (userFull != null) {
                }
            } else if (userFull != null) {
                userFull.flags2 &= -9;
                userFull.business_away_message = null;
            }
            getConnectionsManager().sendRequest(tL_account$updateBusinessAwayMessage, new RequestDelegate() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$processDone$2(tLObject, tL_error);
                }
            });
            getMessagesStorage().updateUserInfo(userFull, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setValue() {
        UniversalAdapter universalAdapter;
        if (this.valueSet) {
            return;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        if (userFull == null) {
            getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, getClassGuid());
            return;
        }
        TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage = userFull.business_away_message;
        this.currentValue = tL_account$TL_businessAwayMessage;
        this.hasHours = userFull.business_work_hours != null;
        this.enabled = tL_account$TL_businessAwayMessage != null;
        this.exclude = tL_account$TL_businessAwayMessage != null ? tL_account$TL_businessAwayMessage.recipients.exclude_selected : true;
        this.offline_only = tL_account$TL_businessAwayMessage != null ? tL_account$TL_businessAwayMessage.offline_only : true;
        BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
        if (businessRecipientsHelper != null) {
            businessRecipientsHelper.setValue(tL_account$TL_businessAwayMessage == null ? null : tL_account$TL_businessAwayMessage.recipients);
        }
        TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage2 = this.currentValue;
        if (tL_account$TL_businessAwayMessage2 != null) {
            TL_account$BusinessAwayMessageSchedule tL_account$BusinessAwayMessageSchedule = tL_account$TL_businessAwayMessage2.schedule;
            if (tL_account$BusinessAwayMessageSchedule instanceof TL_account$TL_businessAwayMessageScheduleCustom) {
                this.currentValueScheduleType = 2;
                this.schedule = 2;
                TL_account$TL_businessAwayMessageScheduleCustom tL_account$TL_businessAwayMessageScheduleCustom = (TL_account$TL_businessAwayMessageScheduleCustom) tL_account$BusinessAwayMessageSchedule;
                int i = tL_account$TL_businessAwayMessageScheduleCustom.start_date;
                this.currentScheduleCustomStart = i;
                this.scheduleCustomStart = i;
                int i2 = tL_account$TL_businessAwayMessageScheduleCustom.end_date;
                this.currentScheduleCustomEnd = i2;
                this.scheduleCustomEnd = i2;
            } else {
                this.scheduleCustomStart = getConnectionsManager().getCurrentTime();
                this.scheduleCustomEnd = getConnectionsManager().getCurrentTime() + RemoteMessageConst.DEFAULT_TTL;
                TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage3 = this.currentValue;
                if ((tL_account$TL_businessAwayMessage3 == null || !(tL_account$TL_businessAwayMessage3.schedule instanceof TL_account$TL_businessAwayMessageScheduleAlways)) && tL_account$TL_businessAwayMessage3 != null && (tL_account$TL_businessAwayMessage3.schedule instanceof TL_account$TL_businessAwayMessageScheduleOutsideWorkHours)) {
                    this.currentValueScheduleType = 1;
                    this.schedule = 1;
                } else {
                    this.currentValueScheduleType = 0;
                    this.schedule = 0;
                }
            }
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        checkDone(true);
        this.valueSet = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(R.string.BusinessAway));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.AwayMessagesActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (AwayMessagesActivity.this.onBackPressed()) {
                        AwayMessagesActivity.this.lambda$onBackPressed$354();
                    }
                } else if (i == 1) {
                    AwayMessagesActivity.this.processDone();
                }
            }
        });
        Drawable drawableMutate = context.getResources().getDrawable(R.drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.dp(56.0f), LocaleController.getString(R.string.Done));
        checkDone(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        BusinessRecipientsHelper businessRecipientsHelper = new BusinessRecipientsHelper(this, new Runnable() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$0();
            }
        });
        this.recipientsHelper = businessRecipientsHelper;
        businessRecipientsHelper.setExclude(this.exclude);
        BusinessRecipientsHelper businessRecipientsHelper2 = this.recipientsHelper;
        if (businessRecipientsHelper2 != null) {
            TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage = this.currentValue;
            businessRecipientsHelper2.setValue(tL_account$TL_businessAwayMessage == null ? null : tL_account$TL_businessAwayMessage.recipients);
        }
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        frameLayout.addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1.0f));
        setValue();
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i != NotificationCenter.quickRepliesUpdated) {
            if (i == NotificationCenter.userInfoDidLoad) {
                setValue();
            }
        } else {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
                universalAdapter.update(true);
            }
            checkDone(true);
        }
    }

    public boolean hasChanges() {
        if (!this.valueSet) {
            return false;
        }
        boolean z = this.enabled;
        TL_account$TL_businessAwayMessage tL_account$TL_businessAwayMessage = this.currentValue;
        if (z != (tL_account$TL_businessAwayMessage != null)) {
            return true;
        }
        if (z && tL_account$TL_businessAwayMessage != null) {
            if (tL_account$TL_businessAwayMessage.recipients.exclude_selected != this.exclude) {
                return true;
            }
            BusinessRecipientsHelper businessRecipientsHelper = this.recipientsHelper;
            if (businessRecipientsHelper != null && businessRecipientsHelper.hasChanges()) {
                return true;
            }
            int i = this.currentValueScheduleType;
            int i2 = this.schedule;
            if (i != i2 || this.currentValue.offline_only != this.offline_only) {
                return true;
            }
            if (i2 == 2 && (this.currentScheduleCustomStart != this.scheduleCustomStart || this.currentScheduleCustomEnd != this.scheduleCustomEnd)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (!hasChanges()) {
            return super.onBackPressed();
        }
        if (!this.enabled) {
            processDone();
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(R.string.UnsavedChanges));
        builder.setMessage(LocaleController.getString(R.string.BusinessAwayUnsavedChanges));
        builder.setPositiveButton(LocaleController.getString(R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onBackPressed$3(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.AwayMessagesActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onBackPressed$4(alertDialog, i);
            }
        });
        showDialog(builder.create());
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.quickRepliesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        QuickRepliesController.getInstance(this.currentAccount).load();
        setValue();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.quickRepliesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        super.onFragmentDestroy();
    }
}

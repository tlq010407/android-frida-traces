package org.telegram.ui.Components.Premium.boosts;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars$TL_starsGiveawayOption;
import org.telegram.tgnet.tl.TL_stars$TL_starsGiveawayWinnersOption;
import org.telegram.tgnet.tl.TL_stories$PrepaidGiveaway;
import org.telegram.tgnet.tl.TL_stories$TL_prepaidStarsGiveaway;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet;
import org.telegram.ui.Components.Premium.boosts.adapters.BoostAdapter;
import org.telegram.ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.ui.Components.Premium.boosts.cells.AddChannelCell;
import org.telegram.ui.Components.Premium.boosts.cells.BaseCell;
import org.telegram.ui.Components.Premium.boosts.cells.BoostTypeCell;
import org.telegram.ui.Components.Premium.boosts.cells.ChatCell;
import org.telegram.ui.Components.Premium.boosts.cells.DateEndCell;
import org.telegram.ui.Components.Premium.boosts.cells.DurationCell;
import org.telegram.ui.Components.Premium.boosts.cells.EnterPrizeCell;
import org.telegram.ui.Components.Premium.boosts.cells.ParticipantsTypeCell;
import org.telegram.ui.Components.Premium.boosts.cells.StarGiveawayOptionCell;
import org.telegram.ui.Components.Premium.boosts.cells.SwitcherCell;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class BoostViaGiftsBottomSheet extends BottomSheetWithRecyclerListView implements SelectorBottomSheet.SelectedObjectsListener, NotificationCenter.NotificationCenterDelegate {
    private ActionBtnCell actionBtn;
    private ActionListener actionListener;
    private BoostAdapter adapter;
    private String additionalPrize;
    private final TLRPC.Chat currentChat;
    private final List giftCodeOptions;
    private final Runnable hideKeyboardRunnable;
    private boolean isAdditionalPrizeSelected;
    private boolean isShowWinnersSelected;
    private final ArrayList items;
    private Runnable onCloseClick;
    private final TL_stories$PrepaidGiveaway prepaidGiveaway;
    private int selectedBoostSubType;
    private int selectedBoostType;
    private final List selectedChats;
    private final List selectedCountries;
    private long selectedEndDate;
    private int selectedMonths;
    private int selectedParticipantsType;
    private int selectedSliderIndex;
    private long selectedStars;
    private int selectedStarsSliderIndex;
    private final List selectedUsers;
    private final List sliderStarsValues;
    private final List sliderValues;
    private boolean starOptionsExpanded;
    private final List starsNotExtended;
    private int top;

    public interface ActionListener {
        void onAddChat(List list);

        void onSelectCountries(List list);

        void onSelectUser(List list);
    }

    public BoostViaGiftsBottomSheet(final BaseFragment baseFragment, boolean z, boolean z2, final long j, final TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway) {
        int i;
        List listAsList;
        List listAsList2;
        super(baseFragment, z, z2);
        ArrayList arrayList = new ArrayList();
        this.items = arrayList;
        if (BoostRepository.isGoogleBillingAvailable()) {
            listAsList = Arrays.asList(1, 3, 5, 7, 10, 25, 50);
            i = 7;
        } else {
            i = 7;
            listAsList = Arrays.asList(1, 3, 5, 7, 10, 25, 50, 100);
        }
        this.sliderValues = listAsList;
        if (BoostRepository.isGoogleBillingAvailable()) {
            Integer[] numArr = new Integer[i];
            numArr[0] = 1;
            numArr[1] = 3;
            numArr[2] = 5;
            numArr[3] = 7;
            numArr[4] = 10;
            numArr[5] = 25;
            numArr[6] = 50;
            listAsList2 = Arrays.asList(numArr);
        } else {
            listAsList2 = Arrays.asList(1, 3, 5, 7, 10, 25, 50, 100);
        }
        this.sliderStarsValues = listAsList2;
        this.starsNotExtended = Arrays.asList(750, 10000, 50000);
        this.selectedChats = new ArrayList();
        this.selectedUsers = new ArrayList();
        this.selectedCountries = new ArrayList();
        this.giftCodeOptions = new ArrayList();
        this.selectedBoostType = BoostTypeCell.TYPE_PREMIUM;
        this.selectedBoostSubType = BoostTypeCell.TYPE_GIVEAWAY;
        this.selectedParticipantsType = ParticipantsTypeCell.TYPE_ALL;
        this.selectedMonths = 12;
        this.selectedEndDate = BoostDialogs.getThreeDaysAfterToday();
        this.selectedSliderIndex = 2;
        this.selectedStarsSliderIndex = 2;
        this.additionalPrize = "";
        this.isShowWinnersSelected = true;
        this.hideKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.prepaidGiveaway = tL_stories$PrepaidGiveaway;
        this.topPadding = 0.15f;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        this.useBackgroundTopPadding = false;
        this.backgroundPaddingLeft = 0;
        updateTitle();
        ((ViewGroup.MarginLayoutParams) this.actionBar.getLayoutParams()).leftMargin = 0;
        ((ViewGroup.MarginLayoutParams) this.actionBar.getLayoutParams()).rightMargin = 0;
        if (tL_stories$PrepaidGiveaway instanceof TL_stories$TL_prepaidStarsGiveaway) {
            this.selectedBoostType = BoostTypeCell.TYPE_STARS;
        }
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.dp(68.0f));
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    AndroidUtilities.hideKeyboard(recyclerView);
                }
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$2(baseFragment, view, i3);
            }
        });
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        this.currentChat = chat;
        this.adapter.setItems(chat, arrayList, this.recyclerListView, new SlideChooseView.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public final void onOptionSelected(int i3) {
                this.f$0.lambda$new$3(i3);
            }

            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public /* synthetic */ void onTouchEnd() {
                SlideChooseView.Callback.CC.$default$onTouchEnd(this);
            }
        }, new ChatCell.ChatDeleteListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.Premium.boosts.cells.ChatCell.ChatDeleteListener
            public final void onChatDeleted(TLRPC.Chat chat2) {
                this.f$0.lambda$new$4(chat2);
            }
        }, new EnterPrizeCell.AfterTextChangedListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.Premium.boosts.cells.EnterPrizeCell.AfterTextChangedListener
            public final void afterTextChanged(String str) {
                this.f$0.lambda$new$5(str);
            }
        });
        updateRows(false, false);
        ActionBtnCell actionBtnCell = new ActionBtnCell(getContext(), this.resourcesProvider);
        this.actionBtn = actionBtnCell;
        actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$20(tL_stories$PrepaidGiveaway, j, baseFragment, view);
            }
        });
        updateActionButton(false);
        this.containerView.addView(this.actionBtn, LayoutHelper.createFrame(-1, 68.0f, 80, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        loadOptions();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starGiveawayOptionsLoaded);
    }

    private List getPerUserStarsValues() {
        return getPerUserStarsValues(this.selectedStars);
    }

    private List getPerUserStarsValues(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TL_stars$TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption(j);
        if (selectedStarsOption != null) {
            for (int i = 0; i < selectedStarsOption.winners.size(); i++) {
                TL_stars$TL_starsGiveawayWinnersOption tL_stars$TL_starsGiveawayWinnersOption = (TL_stars$TL_starsGiveawayWinnersOption) selectedStarsOption.winners.get(i);
                if (!arrayList.contains(Integer.valueOf(tL_stars$TL_starsGiveawayWinnersOption.users))) {
                    arrayList.add(Integer.valueOf(tL_stars$TL_starsGiveawayWinnersOption.users));
                    arrayList2.add(Long.valueOf(tL_stars$TL_starsGiveawayWinnersOption.per_user_stars));
                }
            }
        }
        return arrayList2;
    }

    private long getSelectedPerUserStars() {
        List perUserStarsValues = getPerUserStarsValues();
        int i = this.selectedStarsSliderIndex;
        if (i < 0 || i >= perUserStarsValues.size()) {
            this.selectedStarsSliderIndex = 0;
        }
        if (this.selectedStarsSliderIndex >= perUserStarsValues.size()) {
            return 1L;
        }
        return ((Long) perUserStarsValues.get(this.selectedStarsSliderIndex)).longValue();
    }

    private long getSelectedPerUserStars(long j) {
        List perUserStarsValues = getPerUserStarsValues(j);
        return perUserStarsValues.isEmpty() ? Math.round(j / getSelectedPerUserStars()) : ((Long) perUserStarsValues.get(Utilities.clamp(this.selectedStarsSliderIndex, perUserStarsValues.size() - 1, 0))).longValue();
    }

    private int getSelectedSliderValue() {
        List sliderValues;
        int i;
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            sliderValues = this.sliderValues;
            i = this.selectedSliderIndex;
        } else {
            sliderValues = getSliderValues();
            int i2 = this.selectedStarsSliderIndex;
            if (i2 < 0 || i2 >= sliderValues.size()) {
                this.selectedStarsSliderIndex = 0;
            }
            if (this.selectedStarsSliderIndex >= sliderValues.size()) {
                return 0;
            }
            i = this.selectedStarsSliderIndex;
        }
        return ((Integer) sliderValues.get(i)).intValue();
    }

    private int getSelectedSliderValueWithBoosts() {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            return ((Integer) this.sliderValues.get(this.selectedSliderIndex)).intValue() * BoostRepository.giveawayBoostsPerPremium();
        }
        TL_stars$TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
        return selectedStarsOption != null ? selectedStarsOption.yearly_boosts : getSelectedSliderValue() * BoostRepository.giveawayBoostsPerPremium();
    }

    private List getSliderValues() {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            return this.sliderValues;
        }
        ArrayList arrayList = new ArrayList();
        TL_stars$TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
        if (selectedStarsOption != null) {
            for (int i = 0; i < selectedStarsOption.winners.size(); i++) {
                TL_stars$TL_starsGiveawayWinnersOption tL_stars$TL_starsGiveawayWinnersOption = (TL_stars$TL_starsGiveawayWinnersOption) selectedStarsOption.winners.get(i);
                if (!arrayList.contains(Integer.valueOf(tL_stars$TL_starsGiveawayWinnersOption.users))) {
                    arrayList.add(Integer.valueOf(tL_stars$TL_starsGiveawayWinnersOption.users));
                }
            }
        }
        return arrayList;
    }

    private List getStarsOptions() {
        ArrayList giveawayOptions = StarsController.getInstance(this.currentAccount).getGiveawayOptions();
        ArrayList arrayList = new ArrayList();
        if (giveawayOptions != null) {
            for (int i = 0; i < giveawayOptions.size(); i++) {
                TL_stars$TL_starsGiveawayOption tL_stars$TL_starsGiveawayOption = (TL_stars$TL_starsGiveawayOption) giveawayOptions.get(i);
                if (tL_stars$TL_starsGiveawayOption != null && !arrayList.contains(Long.valueOf(tL_stars$TL_starsGiveawayOption.stars))) {
                    arrayList.add(Long.valueOf(tL_stars$TL_starsGiveawayOption.stars));
                }
            }
        }
        return arrayList;
    }

    private boolean isGiveaway() {
        return this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY;
    }

    private boolean isPreparedGiveaway() {
        return this.prepaidGiveaway != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOptions$21(List list) {
        this.giftCodeOptions.clear();
        this.giftCodeOptions.addAll(list);
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        AndroidUtilities.hideKeyboard(this.recyclerListView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean z, int i) {
        this.selectedEndDate = i * 1000;
        updateRows(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway, final TL_stories$TL_prepaidStarsGiveaway tL_stories$TL_prepaidStarsGiveaway, final long j, final long j2) {
        int iPrepareServerDate = BoostRepository.prepareServerDate(this.selectedEndDate);
        boolean z = this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW;
        this.actionBtn.updateLoading(true);
        BoostRepository.launchPreparedGiveaway(tL_stories$PrepaidGiveaway, this.selectedChats, this.selectedCountries, this.currentChat, iPrepareServerDate, z, this.isShowWinnersSelected, this.isAdditionalPrizeSelected, tL_stories$PrepaidGiveaway.quantity, this.additionalPrize, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$8(tL_stories$TL_prepaidStarsGiveaway, j, j2, tL_stories$PrepaidGiveaway, (Void) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$9((TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$11(ChatActivity chatActivity, TL_stars$TL_starsGiveawayOption tL_stars$TL_starsGiveawayOption) {
        BulletinFactory.of(chatActivity).createSimpleBulletin(R.raw.stars_send, LocaleController.getString(R.string.StarsGiveawaySentPopup), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) tL_stars$TL_starsGiveawayOption.stars))).setDuration(5000).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(final TL_stars$TL_starsGiveawayOption tL_stars$TL_starsGiveawayOption, Boolean bool, String str) {
        this.actionBtn.button.setLoading(false);
        if (getContext() == null) {
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        FireworksOverlay fireworksOverlay = LaunchActivity.instance.getFireworksOverlay();
        if (safeLastFragment == null) {
            return;
        }
        if (!bool.booleanValue()) {
            if (str != null) {
                lambda$new$0();
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(R.raw.error, LocaleController.formatString(R.string.UnknownErrorCode, str)).show();
                return;
            }
            return;
        }
        lambda$new$0();
        final ChatActivity chatActivityOf = ChatActivity.of(-this.currentChat.id);
        safeLastFragment.presentFragment(chatActivityOf);
        safeLastFragment.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                BoostViaGiftsBottomSheet.lambda$new$11(chatActivityOf, tL_stars$TL_starsGiveawayOption);
            }
        });
        if (fireworksOverlay != null) {
            fireworksOverlay.start(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13() {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(Void r3) {
        lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$13();
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption) {
        this.selectedSliderIndex = this.sliderValues.indexOf(Integer.valueOf(tL_premiumGiftCodeOption.users));
        updateRows(true, true);
        updateActionButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17() {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(Void r3) {
        lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$17();
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(BaseFragment baseFragment, View view, int i) {
        ActionListener actionListener;
        if (view instanceof SwitcherCell) {
            SwitcherCell switcherCell = (SwitcherCell) view;
            int type = switcherCell.getType();
            boolean z = !switcherCell.isChecked();
            switcherCell.setChecked(z);
            if (type == SwitcherCell.TYPE_WINNERS) {
                this.isShowWinnersSelected = z;
                updateRows(false, false);
            } else if (type == SwitcherCell.TYPE_ADDITION_PRIZE) {
                switcherCell.setDivider(z);
                this.isAdditionalPrizeSelected = z;
                updateRows(false, false);
                this.adapter.notifyAdditionalPrizeItem(z);
                this.adapter.notifyAllVisibleTextDividers();
                if (this.isAdditionalPrizeSelected) {
                    AndroidUtilities.cancelRunOnUIThread(this.hideKeyboardRunnable);
                } else {
                    AndroidUtilities.runOnUIThread(this.hideKeyboardRunnable, 250L);
                }
            }
        }
        if (view instanceof BaseCell) {
            if (view instanceof BoostTypeCell) {
                int selectedType = ((BoostTypeCell) view).getSelectedType();
                if (selectedType == BoostTypeCell.TYPE_PREMIUM || selectedType == BoostTypeCell.TYPE_STARS) {
                    if (selectedType == BoostTypeCell.TYPE_PREMIUM && this.selectedBoostType == selectedType) {
                        ActionListener actionListener2 = this.actionListener;
                        if (actionListener2 != null) {
                            actionListener2.onSelectUser(this.selectedUsers);
                            return;
                        }
                        return;
                    }
                    this.selectedBoostType = selectedType;
                } else if (selectedType == BoostTypeCell.TYPE_SPECIFIC_USERS) {
                    ActionListener actionListener3 = this.actionListener;
                    if (actionListener3 != null) {
                        actionListener3.onSelectUser(this.selectedUsers);
                    }
                } else {
                    this.selectedBoostSubType = selectedType;
                }
                updateRows(true, true);
                updateActionButton(true);
                updateTitle();
            } else {
                ((BaseCell) view).markChecked(this.recyclerListView);
            }
        }
        if (view instanceof ParticipantsTypeCell) {
            int selectedType2 = ((ParticipantsTypeCell) view).getSelectedType();
            if (this.selectedParticipantsType == selectedType2 && (actionListener = this.actionListener) != null) {
                actionListener.onSelectCountries(this.selectedCountries);
            }
            this.selectedParticipantsType = selectedType2;
            updateRows(false, false);
            return;
        }
        if (view instanceof DurationCell) {
            this.selectedMonths = ((TLRPC.TL_premiumGiftCodeOption) ((DurationCell) view).getGifCode()).months;
            updateRows(false, false);
            this.adapter.notifyAllVisibleTextDividers();
            return;
        }
        if (view instanceof DateEndCell) {
            BoostDialogs.showDatePicker(baseFragment.getContext(), this.selectedEndDate, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z2, int i2) {
                    this.f$0.lambda$new$1(z2, i2);
                }
            }, this.resourcesProvider);
            return;
        }
        if (view instanceof AddChannelCell) {
            ActionListener actionListener4 = this.actionListener;
            if (actionListener4 != null) {
                actionListener4.onAddChat(this.selectedChats);
                return;
            }
            return;
        }
        if (!(view instanceof StarGiveawayOptionCell)) {
            if (view instanceof StarsIntroActivity.ExpandView) {
                this.starOptionsExpanded = true;
                updateRows(true, true);
                return;
            }
            return;
        }
        TL_stars$TL_starsGiveawayOption option = ((StarGiveawayOptionCell) view).getOption();
        if (option != null) {
            this.selectedStars = option.stars;
            updateRows(true, true);
            updateActionButton(true);
            updateTitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$20(final TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway, final long j, BaseFragment baseFragment, View view) {
        if (this.actionBtn.isLoading()) {
            return;
        }
        if (isPreparedGiveaway()) {
            final TL_stories$TL_prepaidStarsGiveaway tL_stories$TL_prepaidStarsGiveaway = tL_stories$PrepaidGiveaway instanceof TL_stories$TL_prepaidStarsGiveaway ? (TL_stories$TL_prepaidStarsGiveaway) tL_stories$PrepaidGiveaway : null;
            final long j2 = tL_stories$TL_prepaidStarsGiveaway != null ? tL_stories$TL_prepaidStarsGiveaway.stars : 0L;
            BoostDialogs.showStartGiveawayDialog(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$10(tL_stories$PrepaidGiveaway, tL_stories$TL_prepaidStarsGiveaway, j, j2);
                }
            });
            return;
        }
        if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
            Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
            if (activityFindActivity == null) {
                activityFindActivity = LaunchActivity.instance;
            }
            Activity activity = activityFindActivity;
            if (activity == null || activity.isFinishing()) {
                return;
            }
            final TL_stars$TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
            int selectedSliderValue = getSelectedSliderValue();
            if (selectedStarsOption == null) {
                return;
            }
            this.actionBtn.button.setLoading(true);
            StarsController.getInstance(this.currentAccount).buyGiveaway(activity, this.currentChat, this.selectedChats, selectedStarsOption, selectedSliderValue, this.selectedCountries, BoostRepository.prepareServerDate(this.selectedEndDate), this.isShowWinnersSelected, this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW, this.isAdditionalPrizeSelected, this.additionalPrize, new Utilities.Callback2() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$12(selectedStarsOption, (Boolean) obj, (String) obj2);
                }
            });
            return;
        }
        if (this.selectedBoostSubType == BoostTypeCell.TYPE_SPECIFIC_USERS) {
            List listFilterGiftOptions = BoostRepository.filterGiftOptions(this.giftCodeOptions, this.selectedUsers.size());
            for (int i = 0; i < listFilterGiftOptions.size(); i++) {
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions.get(i);
                if (tL_premiumGiftCodeOption.months == this.selectedMonths && this.selectedUsers.size() > 0) {
                    if (BoostRepository.isGoogleBillingAvailable() && BoostDialogs.checkReduceUsers(getContext(), this.resourcesProvider, this.giftCodeOptions, tL_premiumGiftCodeOption)) {
                        return;
                    }
                    this.actionBtn.updateLoading(true);
                    BoostRepository.payGiftCode(this.selectedUsers, tL_premiumGiftCodeOption, this.currentChat, null, baseFragment, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$14((Void) obj);
                        }
                    }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$15((TLRPC.TL_error) obj);
                        }
                    });
                    return;
                }
            }
            return;
        }
        List listFilterGiftOptions2 = BoostRepository.filterGiftOptions(this.giftCodeOptions, getSelectedSliderValue());
        for (int i2 = 0; i2 < listFilterGiftOptions2.size(); i2++) {
            TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions2.get(i2);
            if (tL_premiumGiftCodeOption2.months == this.selectedMonths) {
                if (BoostRepository.isGoogleBillingAvailable() && BoostDialogs.checkReduceQuantity(this.sliderValues, getContext(), this.resourcesProvider, this.giftCodeOptions, tL_premiumGiftCodeOption2, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$16((TLRPC.TL_premiumGiftCodeOption) obj);
                    }
                })) {
                    return;
                }
                boolean z = this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW;
                int iPrepareServerDate = BoostRepository.prepareServerDate(this.selectedEndDate);
                this.actionBtn.updateLoading(true);
                BoostRepository.payGiveAway(this.selectedChats, this.selectedCountries, tL_premiumGiftCodeOption2, this.currentChat, iPrepareServerDate, z, baseFragment, this.isShowWinnersSelected, this.isAdditionalPrizeSelected, this.additionalPrize, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$18((Void) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$19((TLRPC.TL_error) obj);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(int i) {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            this.selectedSliderIndex = i;
        } else {
            this.selectedStarsSliderIndex = i;
        }
        this.actionBtn.updateCounter(getSelectedSliderValueWithBoosts());
        boolean z = this.selectedBoostType == BoostTypeCell.TYPE_STARS;
        updateRows(z, z);
        this.adapter.updateBoostCounter(getSelectedSliderValueWithBoosts());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.Chat chat) {
        this.selectedChats.remove(chat);
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(String str) {
        this.additionalPrize = str;
        updateRows(false, false);
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$6(ChatActivity chatActivity, long j) {
        BulletinFactory.of(chatActivity).createSimpleBulletin(R.raw.stars_topup, LocaleController.getString(R.string.StarsGiveawaySentPopup), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) j))).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway) {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.TRUE, tL_stories$PrepaidGiveaway);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(TL_stories$TL_prepaidStarsGiveaway tL_stories$TL_prepaidStarsGiveaway, long j, final long j2, final TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway, Void r7) {
        lambda$new$0();
        if (tL_stories$TL_prepaidStarsGiveaway == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$7(tL_stories$PrepaidGiveaway);
                }
            }, 220L);
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            final ChatActivity chatActivityOf = ChatActivity.of(j);
            chatActivityOf.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    BoostViaGiftsBottomSheet.lambda$new$6(chatActivityOf, j2);
                }
            });
            safeLastFragment.presentFragment(chatActivityOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$22(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$23(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$24() {
        PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(getBaseFragment(), this.currentAccount, null, this.resourcesProvider);
        premiumPreviewBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$22(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$23(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$25(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$26(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$27() {
        PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(getBaseFragment(), this.currentAccount, null, this.resourcesProvider);
        premiumPreviewBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$25(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$26(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.show();
    }

    private void loadOptions() {
        BoostRepository.loadGiftOptions(this.currentAccount, this.currentChat, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadOptions$21((List) obj);
            }
        });
    }

    private void updateActionButton(boolean z) {
        ActionBtnCell actionBtnCell;
        int iGiveawayBoostsPerPremium;
        if (!isPreparedGiveaway()) {
            if (this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
                this.actionBtn.setStartGiveAwayStyle(getSelectedSliderValueWithBoosts(), z);
                return;
            } else {
                this.actionBtn.setGiftPremiumStyle(this.selectedUsers.size() * BoostRepository.giveawayBoostsPerPremium(), z, this.selectedUsers.size() > 0);
                return;
            }
        }
        TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway = this.prepaidGiveaway;
        if (tL_stories$PrepaidGiveaway instanceof TL_stories$TL_prepaidStarsGiveaway) {
            actionBtnCell = this.actionBtn;
            iGiveawayBoostsPerPremium = tL_stories$PrepaidGiveaway.quantity;
        } else {
            actionBtnCell = this.actionBtn;
            iGiveawayBoostsPerPremium = tL_stories$PrepaidGiveaway.quantity * BoostRepository.giveawayBoostsPerPremium();
        }
        actionBtnCell.setStartGiveAwayStyle(iGiveawayBoostsPerPremium, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateRows(boolean z, boolean z2) {
        ArrayList arrayList;
        BoostAdapter.Item itemAsBoost;
        ArrayList arrayList2;
        ArrayList arrayList3;
        BoostAdapter.Item itemAsDivider;
        boolean z3;
        boolean z4;
        ArrayList arrayList4;
        TLRPC.Chat chat;
        int iGiveawayBoostsPerPremium;
        ArrayList arrayList5;
        CharSequence string;
        boolean z5;
        boolean z6;
        ArrayList arrayList6;
        String pluralString;
        ArrayList arrayList7;
        BoostAdapter.Item itemAsDivider2;
        boolean z7;
        ArrayList arrayList8;
        String pluralString2;
        ArrayList arrayList9;
        String pluralString3;
        BoostAdapter boostAdapter;
        boolean z8;
        boolean z9;
        ArrayList arrayList10;
        TLRPC.Chat chat2;
        int iGiveawayBoostsPerPremium2;
        ArrayList arrayList11;
        ArrayList arrayList12 = new ArrayList(this.items);
        this.items.clear();
        int i = 1;
        this.items.add(BoostAdapter.Item.asHeader(this.selectedBoostType == BoostTypeCell.TYPE_STARS));
        if (isPreparedGiveaway()) {
            arrayList = this.items;
            itemAsBoost = BoostAdapter.Item.asSingleBoost(this.prepaidGiveaway);
        } else {
            this.items.add(BoostAdapter.Item.asBoost(BoostTypeCell.TYPE_PREMIUM, this.selectedUsers.size(), null, this.selectedBoostType));
            arrayList = this.items;
            itemAsBoost = BoostAdapter.Item.asBoost(BoostTypeCell.TYPE_STARS, this.selectedUsers.size(), null, this.selectedBoostType);
        }
        arrayList.add(itemAsBoost);
        this.items.add(BoostAdapter.Item.asDivider());
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.currentChat);
        if (this.selectedBoostType != BoostTypeCell.TYPE_STARS) {
            arrayList2 = arrayList12;
            if (this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
                if (!isPreparedGiveaway()) {
                    this.items.add(BoostAdapter.Item.asSubTitleWithCounter(LocaleController.getString(R.string.BoostingQuantityPrizes), getSelectedSliderValueWithBoosts()));
                    this.items.add(BoostAdapter.Item.asSlider(this.sliderValues, this.selectedSliderIndex));
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingChooseHowMany), false));
                }
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingChannelsGroupsIncludedGiveaway)));
                if (isPreparedGiveaway()) {
                    TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway = this.prepaidGiveaway;
                    if (tL_stories$PrepaidGiveaway instanceof TL_stories$TL_prepaidStarsGiveaway) {
                        arrayList4 = this.items;
                        chat = this.currentChat;
                        iGiveawayBoostsPerPremium = tL_stories$PrepaidGiveaway.quantity;
                        z4 = false;
                    } else {
                        z4 = false;
                        arrayList4 = this.items;
                        chat = this.currentChat;
                        iGiveawayBoostsPerPremium = tL_stories$PrepaidGiveaway.quantity * BoostRepository.giveawayBoostsPerPremium();
                    }
                    arrayList4.add(BoostAdapter.Item.asChat(chat, z4, iGiveawayBoostsPerPremium));
                } else {
                    this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, getSelectedSliderValueWithBoosts()));
                }
                for (TLObject tLObject : this.selectedChats) {
                    if (tLObject instanceof TLRPC.Chat) {
                        z3 = true;
                        this.items.add(BoostAdapter.Item.asChat((TLRPC.Chat) tLObject, true, getSelectedSliderValueWithBoosts()));
                    } else {
                        z3 = true;
                    }
                    if (tLObject instanceof TLRPC.InputPeer) {
                        this.items.add(BoostAdapter.Item.asPeer((TLRPC.InputPeer) tLObject, z3, getSelectedSliderValueWithBoosts()));
                    }
                }
                if (this.selectedChats.size() < BoostRepository.giveawayAddPeersMax()) {
                    this.items.add(BoostAdapter.Item.asAddChannel());
                }
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingChooseChannelsGroupsNeedToJoin), false));
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingEligibleUsers)));
                this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_ALL, this.selectedParticipantsType, true, this.selectedCountries));
                this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_NEW, this.selectedParticipantsType, false, this.selectedCountries));
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(zIsChannelAndNotMegaGroup ? R.string.BoostingChooseLimitGiveaway : R.string.BoostingChooseLimitGiveawayGroups), false));
            }
            if (!isPreparedGiveaway()) {
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingDurationOfPremium)));
                List listFilterGiftOptions = BoostRepository.filterGiftOptions(this.giftCodeOptions, isGiveaway() ? getSelectedSliderValue() : this.selectedUsers.size());
                int i2 = 0;
                while (i2 < listFilterGiftOptions.size()) {
                    TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions.get(i2);
                    this.items.add(BoostAdapter.Item.asDuration(tL_premiumGiftCodeOption, tL_premiumGiftCodeOption.months, isGiveaway() ? getSelectedSliderValue() : this.selectedUsers.size(), tL_premiumGiftCodeOption.amount, this.selectedMonths, tL_premiumGiftCodeOption.currency, i2 != listFilterGiftOptions.size() - 1));
                    i2++;
                }
            }
            if (!isPreparedGiveaway()) {
                arrayList3 = this.items;
                itemAsDivider = BoostAdapter.Item.asDivider(AndroidUtilities.replaceSingleTag(LocaleController.getString(R.string.BoostingStoriesFeaturesAndTerms), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateRows$24();
                    }
                }, this.resourcesProvider), true);
            }
            if (this.selectedBoostType != BoostTypeCell.TYPE_STARS || this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
                ArrayList arrayList13 = this.items;
                String string2 = LocaleController.getString(R.string.BoostingGiveawayAdditionalPrizes);
                boolean z10 = this.isAdditionalPrizeSelected;
                arrayList13.add(BoostAdapter.Item.asSwitcher(string2, z10, z10, SwitcherCell.TYPE_ADDITION_PRIZE));
                if (this.isAdditionalPrizeSelected) {
                    arrayList5 = this.items;
                    string = LocaleController.getString(this.selectedBoostType == BoostTypeCell.TYPE_STARS ? R.string.BoostingStarsGiveawayAdditionPrizeHint : R.string.BoostingGiveawayAdditionPrizeHint);
                    z5 = false;
                } else {
                    int selectedSliderValue = isPreparedGiveaway() ? this.prepaidGiveaway.quantity : getSelectedSliderValue();
                    this.items.add(BoostAdapter.Item.asEnterPrize(selectedSliderValue));
                    String pluralString4 = LocaleController.formatPluralString("BoldMonths", this.selectedMonths, new Object[0]);
                    if (this.selectedBoostType != BoostTypeCell.TYPE_STARS) {
                        if (this.additionalPrize.isEmpty()) {
                            arrayList9 = this.items;
                            pluralString3 = LocaleController.formatPluralString("BoostingGiveawayAdditionPrizeCountHint", selectedSliderValue, pluralString4);
                        } else {
                            arrayList9 = this.items;
                            pluralString3 = LocaleController.formatPluralString("BoostingGiveawayAdditionPrizeCountNameHint", selectedSliderValue, this.additionalPrize, pluralString4);
                        }
                        arrayList9.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(pluralString3), false));
                    } else if (this.additionalPrize.isEmpty()) {
                        arrayList5 = this.items;
                        z5 = false;
                        string = AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingStarsGiveawayAdditionPrizeCountHint", (int) this.selectedStars, new Object[0]));
                    } else {
                        this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingStarsGiveawayAdditionPrizeCountNameHint", (int) this.selectedStars, Integer.valueOf(selectedSliderValue), this.additionalPrize)), false));
                    }
                    this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingDateWhenGiveawayEnds)));
                    this.items.add(BoostAdapter.Item.asDateEnd(this.selectedEndDate));
                    if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
                        if (isPreparedGiveaway()) {
                            z7 = false;
                            arrayList8 = this.items;
                            pluralString2 = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingStarsChooseRandom" : "BoostingStarsChooseRandomGroup", this.prepaidGiveaway.quantity, LocaleController.formatPluralString("BoostingStarsChooseRandomStars", (int) this.selectedStars, new Object[0]));
                        } else {
                            arrayList8 = this.items;
                            z7 = false;
                            pluralString2 = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingStarsChooseRandom" : "BoostingStarsChooseRandomGroup", getSelectedSliderValue(), LocaleController.formatPluralString("BoostingStarsChooseRandomStars", (int) this.selectedStars, new Object[0]));
                        }
                        arrayList8.add(BoostAdapter.Item.asDivider(pluralString2, z7));
                        z6 = false;
                    } else {
                        if (isPreparedGiveaway()) {
                            z6 = false;
                            arrayList6 = this.items;
                            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChooseRandom" : "BoostingChooseRandomGroup", this.prepaidGiveaway.quantity, new Object[0]);
                        } else {
                            arrayList6 = this.items;
                            z6 = false;
                            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChooseRandom" : "BoostingChooseRandomGroup", getSelectedSliderValue(), new Object[0]);
                        }
                        arrayList6.add(BoostAdapter.Item.asDivider(pluralString, z6));
                    }
                    this.items.add(BoostAdapter.Item.asSwitcher(LocaleController.getString(R.string.BoostingGiveawayShowWinners), this.isShowWinnersSelected, z6, SwitcherCell.TYPE_WINNERS));
                    if (isPreparedGiveaway()) {
                        arrayList7 = this.items;
                        StringBuilder sb = new StringBuilder();
                        sb.append(LocaleController.getString(R.string.BoostingGiveawayShowWinnersHint));
                        sb.append(this.selectedBoostType != BoostTypeCell.TYPE_STARS ? "\n\n" + LocaleController.getString(R.string.BoostingStoriesFeaturesAndTerms) : "");
                        itemAsDivider2 = BoostAdapter.Item.asDivider(AndroidUtilities.replaceSingleTag(sb.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$updateRows$27();
                            }
                        }, this.resourcesProvider), true);
                    } else {
                        arrayList7 = this.items;
                        itemAsDivider2 = BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingGiveawayShowWinnersHint), z6);
                    }
                    arrayList7.add(itemAsDivider2);
                }
                arrayList5.add(BoostAdapter.Item.asDivider(string, z5));
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingDateWhenGiveawayEnds)));
                this.items.add(BoostAdapter.Item.asDateEnd(this.selectedEndDate));
                if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
                }
                this.items.add(BoostAdapter.Item.asSwitcher(LocaleController.getString(R.string.BoostingGiveawayShowWinners), this.isShowWinnersSelected, z6, SwitcherCell.TYPE_WINNERS));
                if (isPreparedGiveaway()) {
                }
                arrayList7.add(itemAsDivider2);
            }
            boostAdapter = this.adapter;
            if (boostAdapter != null && z2) {
                if (z) {
                    boostAdapter.notifyDataSetChanged();
                    return;
                } else {
                    boostAdapter.setItems(arrayList2, this.items);
                    return;
                }
            }
            return;
        }
        if (isPreparedGiveaway()) {
            arrayList2 = arrayList12;
            TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway2 = this.prepaidGiveaway;
            if (tL_stories$PrepaidGiveaway2 instanceof TL_stories$TL_prepaidStarsGiveaway) {
                this.selectedStars = ((TL_stories$TL_prepaidStarsGiveaway) tL_stories$PrepaidGiveaway2).stars;
            }
        } else {
            BoostAdapter.Item itemAsSubTitleWithCounter = BoostAdapter.Item.asSubTitleWithCounter(LocaleController.getString(R.string.BoostingStarsOptions), getSelectedSliderValueWithBoosts());
            this.items.add(itemAsSubTitleWithCounter);
            List starsOptions = getStarsOptions();
            int i3 = 0;
            int i4 = 0;
            while (i3 < starsOptions.size()) {
                TL_stars$TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption(((Long) starsOptions.get(i3)).longValue());
                if (!selectedStarsOption.missingStorePrice) {
                    if (this.selectedStars == 0 && selectedStarsOption.isDefault) {
                        this.selectedStars = selectedStarsOption.stars;
                    }
                    if (!selectedStarsOption.extended || this.starOptionsExpanded) {
                        i4 += i;
                        arrayList11 = arrayList12;
                        this.items.add(BoostAdapter.Item.asOption(selectedStarsOption, this.starOptionsExpanded ? i3 : i3 + 2, getSelectedPerUserStars(selectedStarsOption.stars), this.selectedStars == selectedStarsOption.stars, true));
                    } else {
                        arrayList11 = arrayList12;
                    }
                }
                i3++;
                arrayList12 = arrayList11;
                i = 1;
            }
            arrayList2 = arrayList12;
            if (!this.starOptionsExpanded && i4 < starsOptions.size()) {
                this.items.add(BoostAdapter.Item.asExpandOptions());
            }
            if (i4 <= 0) {
                this.items.add(BoostAdapter.Item.asOption(null, 0, 1L, false, true));
                this.items.add(BoostAdapter.Item.asOption(null, 1, 1L, false, true));
                this.items.add(BoostAdapter.Item.asOption(null, 2, 1L, false, false));
            }
            itemAsSubTitleWithCounter.intValue = getSelectedSliderValueWithBoosts();
            this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingStarsOptionsInfo), false));
            List sliderValues = getSliderValues();
            int i5 = this.selectedStarsSliderIndex;
            if (i5 < 0 || i5 >= sliderValues.size()) {
                this.selectedStarsSliderIndex = 0;
            }
            if (sliderValues.size() > 1) {
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingStarsQuantityPrizes)));
                this.items.add(BoostAdapter.Item.asSlider(getSliderValues(), this.selectedStarsSliderIndex));
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingStarsQuantityPrizesInfo), false));
            }
        }
        this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingChannelsGroupsIncludedGiveaway)));
        if (isPreparedGiveaway()) {
            TL_stories$PrepaidGiveaway tL_stories$PrepaidGiveaway3 = this.prepaidGiveaway;
            if (tL_stories$PrepaidGiveaway3 instanceof TL_stories$TL_prepaidStarsGiveaway) {
                arrayList10 = this.items;
                chat2 = this.currentChat;
                iGiveawayBoostsPerPremium2 = tL_stories$PrepaidGiveaway3.quantity;
                z9 = false;
            } else {
                z9 = false;
                arrayList10 = this.items;
                chat2 = this.currentChat;
                iGiveawayBoostsPerPremium2 = tL_stories$PrepaidGiveaway3.quantity * BoostRepository.giveawayBoostsPerPremium();
            }
            arrayList10.add(BoostAdapter.Item.asChat(chat2, z9, iGiveawayBoostsPerPremium2));
        } else {
            this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, getSelectedSliderValueWithBoosts()));
        }
        for (TLObject tLObject2 : this.selectedChats) {
            if (tLObject2 instanceof TLRPC.Chat) {
                z8 = true;
                this.items.add(BoostAdapter.Item.asChat((TLRPC.Chat) tLObject2, true, getSelectedSliderValueWithBoosts()));
            } else {
                z8 = true;
            }
            if (tLObject2 instanceof TLRPC.InputPeer) {
                this.items.add(BoostAdapter.Item.asPeer((TLRPC.InputPeer) tLObject2, z8, getSelectedSliderValueWithBoosts()));
            }
        }
        if (this.selectedChats.size() < BoostRepository.giveawayAddPeersMax()) {
            this.items.add(BoostAdapter.Item.asAddChannel());
        }
        this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(R.string.BoostingChooseChannelsGroupsNeedToJoin), false));
        this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingEligibleUsers)));
        this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_ALL, this.selectedParticipantsType, true, this.selectedCountries));
        this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_NEW, this.selectedParticipantsType, false, this.selectedCountries));
        arrayList3 = this.items;
        itemAsDivider = BoostAdapter.Item.asDivider(LocaleController.getString(zIsChannelAndNotMegaGroup ? R.string.BoostingChooseLimitGiveaway : R.string.BoostingChooseLimitGiveawayGroups), false);
        arrayList3.add(itemAsDivider);
        if (this.selectedBoostType != BoostTypeCell.TYPE_STARS) {
            ArrayList arrayList132 = this.items;
            String string22 = LocaleController.getString(R.string.BoostingGiveawayAdditionalPrizes);
            boolean z102 = this.isAdditionalPrizeSelected;
            arrayList132.add(BoostAdapter.Item.asSwitcher(string22, z102, z102, SwitcherCell.TYPE_ADDITION_PRIZE));
            if (this.isAdditionalPrizeSelected) {
            }
            arrayList5.add(BoostAdapter.Item.asDivider(string, z5));
            this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(R.string.BoostingDateWhenGiveawayEnds)));
            this.items.add(BoostAdapter.Item.asDateEnd(this.selectedEndDate));
            if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
            }
            this.items.add(BoostAdapter.Item.asSwitcher(LocaleController.getString(R.string.BoostingGiveawayShowWinners), this.isShowWinnersSelected, z6, SwitcherCell.TYPE_WINNERS));
            if (isPreparedGiveaway()) {
            }
            arrayList7.add(itemAsDivider2);
        }
        boostAdapter = this.adapter;
        if (boostAdapter != null) {
            if (z) {
            }
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        BoostAdapter boostAdapter = new BoostAdapter(this.resourcesProvider);
        this.adapter = boostAdapter;
        return boostAdapter;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        RecyclerListView recyclerListView;
        if (i == NotificationCenter.starGiveawayOptionsLoaded && (recyclerListView = this.recyclerListView) != null && recyclerListView.isAttachedToWindow()) {
            updateRows(true, true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* renamed from: dismiss */
    public void lambda$new$0() {
        Runnable runnable = this.onCloseClick;
        if (runnable != null) {
            runnable.run();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiveawayOptionsLoaded);
    }

    public TL_stars$TL_starsGiveawayOption getSelectedStarsOption() {
        return getSelectedStarsOption(this.selectedStars);
    }

    public TL_stars$TL_starsGiveawayOption getSelectedStarsOption(long j) {
        ArrayList giveawayOptions = StarsController.getInstance(this.currentAccount).getGiveawayOptions();
        if (giveawayOptions == null) {
            return null;
        }
        for (int i = 0; i < giveawayOptions.size(); i++) {
            TL_stars$TL_starsGiveawayOption tL_stars$TL_starsGiveawayOption = (TL_stars$TL_starsGiveawayOption) giveawayOptions.get(i);
            if (tL_stars$TL_starsGiveawayOption != null && tL_stars$TL_starsGiveawayOption.stars == j) {
                return tL_stars$TL_starsGiveawayOption;
            }
        }
        return null;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return this.selectedBoostSubType == BoostTypeCell.TYPE_SPECIFIC_USERS ? LocaleController.getString(R.string.GiftPremium) : LocaleController.formatString("BoostingStartGiveaway", R.string.BoostingStartGiveaway, new Object[0]);
    }

    public int getTop() {
        return Math.max(-AndroidUtilities.dp(16.0f), this.top - (this.actionBar.getVisibility() == 0 ? AndroidUtilities.statusBarHeight + AndroidUtilities.dp(16.0f) : 0));
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected boolean needPaddingShadow() {
        return false;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onChatsSelected(List list, boolean z) {
        this.selectedChats.clear();
        this.selectedChats.addAll(list);
        updateRows(z, true);
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onCountrySelected(List list) {
        this.selectedCountries.clear();
        this.selectedCountries.addAll(list);
        updateRows(false, true);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected void onPreDraw(Canvas canvas, int i, float f) {
        this.top = i;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public /* synthetic */ void onShowToast(String str) {
        SelectorBottomSheet.SelectedObjectsListener.CC.$default$onShowToast(this, str);
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onUsersSelected(List list) {
        this.selectedUsers.clear();
        this.selectedUsers.addAll(list);
        this.selectedBoostSubType = list.isEmpty() ? BoostTypeCell.TYPE_GIVEAWAY : BoostTypeCell.TYPE_SPECIFIC_USERS;
        this.selectedSliderIndex = 0;
        updateRows(false, true);
        updateActionButton(true);
        updateTitle();
    }

    public void setActionListener(ActionListener actionListener) {
        this.actionListener = actionListener;
    }

    public void setOnCloseClick(Runnable runnable) {
        this.onCloseClick = runnable;
    }
}

package org.telegram.ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.CreationTextCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ManageChatTextCell;
import org.telegram.ui.Cells.ManageChatUserCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DotDividerSpan;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.InviteLinkBottomSheet;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkActionView;
import org.telegram.ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.TimerParticles;
import org.telegram.ui.LinkEditActivity;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.HintView2;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class ManageLinksActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private long adminId;
    private int adminsDividerRow;
    private int adminsEndRow;
    private int adminsHeaderRow;
    boolean adminsLoaded;
    private int adminsStartRow;
    private boolean canEdit;
    private int createLinkHelpRow;
    private int createNewLinkRow;
    private int creatorDividerRow;
    private int creatorRow;
    private TLRPC.Chat currentChat;
    private long currentChatId;
    boolean deletingRevokedLinks;
    private int dividerRow;
    boolean hasMore;
    private int helpRow;
    private TLRPC.ChatFull info;
    private TLRPC.TL_chatInviteExported invite;
    private InviteLinkBottomSheet inviteLinkBottomSheet;
    private int invitesCount;
    private boolean isChannel;
    private boolean isOpened;
    private boolean isPublic;
    private int lastDivider;
    Drawable linkIcon;
    Drawable linkIconRevenue;
    Drawable linkIconRevoked;
    private int linksEndRow;
    private int linksHeaderRow;
    private int linksInfoRow;
    boolean linksLoading;
    private int linksLoadingRow;
    private int linksStartRow;
    private RecyclerListView listView;
    private ListAdapter listViewAdapter;
    boolean loadAdmins;
    private int permanentLinkHeaderRow;
    private int permanentLinkRow;
    private RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
    private int revokeAllDivider;
    private int revokeAllRow;
    private int revokedDivider;
    private int revokedHeader;
    private int revokedLinksEndRow;
    private int revokedLinksStartRow;
    private int rowCount;
    long timeDif;
    private ArrayList invites = new ArrayList();
    private ArrayList revokedInvites = new ArrayList();
    private HashMap users = new HashMap();
    private ArrayList admins = new ArrayList();
    Runnable updateTimerRunnable = new Runnable() { // from class: org.telegram.ui.ManageLinksActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (ManageLinksActivity.this.listView == null) {
                return;
            }
            for (int i = 0; i < ManageLinksActivity.this.listView.getChildCount(); i++) {
                View childAt = ManageLinksActivity.this.listView.getChildAt(i);
                if (childAt instanceof LinkCell) {
                    LinkCell linkCell = (LinkCell) childAt;
                    if (linkCell.timerRunning) {
                        linkCell.setLink(linkCell.invite, linkCell.position);
                    }
                }
            }
            AndroidUtilities.runOnUIThread(this, 500L);
        }
    };
    boolean loadRevoked = false;
    private final LinkEditActivity.Callback linkEditActivityCallback = new AnonymousClass6();
    AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();

    /* renamed from: org.telegram.ui.ManageLinksActivity$6, reason: invalid class name */
    class AnonymousClass6 implements LinkEditActivity.Callback {
        AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLinkCreated$0(TLObject tLObject) {
            DiffCallback diffCallbackSaveListState = ManageLinksActivity.this.saveListState();
            ManageLinksActivity.this.invites.add(0, (TLRPC.TL_chatInviteExported) tLObject);
            if (ManageLinksActivity.this.info != null) {
                ManageLinksActivity.this.info.invitesCount++;
                ManageLinksActivity.this.getMessagesStorage().saveChatLinksCount(ManageLinksActivity.this.currentChatId, ManageLinksActivity.this.info.invitesCount);
            }
            ManageLinksActivity.this.updateRecyclerViewAnimated(diffCallbackSaveListState);
        }

        @Override // org.telegram.ui.LinkEditActivity.Callback
        public void onLinkCreated(final TLObject tLObject) {
            if (tLObject instanceof TLRPC.TL_chatInviteExported) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$6$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onLinkCreated$0(tLObject);
                    }
                }, 200L);
            }
        }

        @Override // org.telegram.ui.LinkEditActivity.Callback
        public void onLinkEdited(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLObject tLObject) {
            if (tLObject instanceof TLRPC.TL_messages_exportedChatInvite) {
                TLRPC.TL_chatInviteExported tL_chatInviteExported2 = (TLRPC.TL_chatInviteExported) ((TLRPC.TL_messages_exportedChatInvite) tLObject).invite;
                ManageLinksActivity.this.fixDate(tL_chatInviteExported2);
                for (int i = 0; i < ManageLinksActivity.this.invites.size(); i++) {
                    if (((TLRPC.TL_chatInviteExported) ManageLinksActivity.this.invites.get(i)).link.equals(tL_chatInviteExported.link)) {
                        if (!tL_chatInviteExported2.revoked) {
                            ManageLinksActivity.this.invites.set(i, tL_chatInviteExported2);
                            ManageLinksActivity.this.updateRows(true);
                            return;
                        } else {
                            DiffCallback diffCallbackSaveListState = ManageLinksActivity.this.saveListState();
                            ManageLinksActivity.this.invites.remove(i);
                            ManageLinksActivity.this.revokedInvites.add(0, tL_chatInviteExported2);
                            ManageLinksActivity.this.updateRecyclerViewAnimated(diffCallbackSaveListState);
                            return;
                        }
                    }
                }
            }
        }

        @Override // org.telegram.ui.LinkEditActivity.Callback
        public void onLinkRemoved(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
            for (int i = 0; i < ManageLinksActivity.this.revokedInvites.size(); i++) {
                if (((TLRPC.TL_chatInviteExported) ManageLinksActivity.this.revokedInvites.get(i)).link.equals(tL_chatInviteExported.link)) {
                    DiffCallback diffCallbackSaveListState = ManageLinksActivity.this.saveListState();
                    ManageLinksActivity.this.revokedInvites.remove(i);
                    ManageLinksActivity.this.updateRecyclerViewAnimated(diffCallbackSaveListState);
                    return;
                }
            }
        }

        @Override // org.telegram.ui.LinkEditActivity.Callback
        public void revokeLink(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
            ManageLinksActivity.this.revokeLink(tL_chatInviteExported);
        }
    }

    private class DiffCallback extends DiffUtil.Callback {
        SparseIntArray newPositionToItem;
        int oldAdminsEndRow;
        int oldAdminsStartRow;
        ArrayList oldLinks;
        int oldLinksEndRow;
        int oldLinksStartRow;
        SparseIntArray oldPositionToItem;
        ArrayList oldRevokedLinks;
        int oldRevokedLinksEndRow;
        int oldRevokedLinksStartRow;
        int oldRowCount;

        private DiffCallback() {
            this.oldPositionToItem = new SparseIntArray();
            this.newPositionToItem = new SparseIntArray();
            this.oldLinks = new ArrayList();
            this.oldRevokedLinks = new ArrayList();
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return areItemsTheSame(i, i2);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            ArrayList arrayList;
            int i3;
            if (((i < this.oldLinksStartRow || i >= this.oldLinksEndRow) && (i < this.oldRevokedLinksStartRow || i >= this.oldRevokedLinksEndRow)) || ((i2 < ManageLinksActivity.this.linksStartRow || i2 >= ManageLinksActivity.this.linksEndRow) && (i2 < ManageLinksActivity.this.revokedLinksStartRow || i2 >= ManageLinksActivity.this.revokedLinksEndRow))) {
                if (i >= this.oldAdminsStartRow && i < this.oldAdminsEndRow && i2 >= ManageLinksActivity.this.adminsStartRow && i2 < ManageLinksActivity.this.adminsEndRow) {
                    return i - this.oldAdminsStartRow == i2 - ManageLinksActivity.this.adminsStartRow;
                }
                int i4 = this.oldPositionToItem.get(i, -1);
                return i4 >= 0 && i4 == this.newPositionToItem.get(i2, -1);
            }
            if (i2 < ManageLinksActivity.this.linksStartRow || i2 >= ManageLinksActivity.this.linksEndRow) {
                arrayList = ManageLinksActivity.this.revokedInvites;
                i3 = ManageLinksActivity.this.revokedLinksStartRow;
            } else {
                arrayList = ManageLinksActivity.this.invites;
                i3 = ManageLinksActivity.this.linksStartRow;
            }
            TLRPC.TL_chatInviteExported tL_chatInviteExported = (TLRPC.TL_chatInviteExported) arrayList.get(i2 - i3);
            int i5 = this.oldLinksStartRow;
            return ((TLRPC.TL_chatInviteExported) ((i < i5 || i >= this.oldLinksEndRow) ? this.oldRevokedLinks.get(i - this.oldRevokedLinksStartRow) : this.oldLinks.get(i - i5))).link.equals(tL_chatInviteExported.link);
        }

        public void fillPositions(SparseIntArray sparseIntArray) {
            sparseIntArray.clear();
            put(1, ManageLinksActivity.this.helpRow, sparseIntArray);
            put(2, ManageLinksActivity.this.permanentLinkHeaderRow, sparseIntArray);
            put(3, ManageLinksActivity.this.permanentLinkRow, sparseIntArray);
            put(4, ManageLinksActivity.this.dividerRow, sparseIntArray);
            put(5, ManageLinksActivity.this.createNewLinkRow, sparseIntArray);
            put(6, ManageLinksActivity.this.revokedHeader, sparseIntArray);
            put(7, ManageLinksActivity.this.revokeAllRow, sparseIntArray);
            put(8, ManageLinksActivity.this.createLinkHelpRow, sparseIntArray);
            put(9, ManageLinksActivity.this.creatorRow, sparseIntArray);
            put(10, ManageLinksActivity.this.creatorDividerRow, sparseIntArray);
            put(11, ManageLinksActivity.this.adminsHeaderRow, sparseIntArray);
            put(12, ManageLinksActivity.this.linksHeaderRow, sparseIntArray);
            put(13, ManageLinksActivity.this.linksLoadingRow, sparseIntArray);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return ManageLinksActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldRowCount;
        }
    }

    private static class EmptyView extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
        private final int currentAccount;
        private BackupImageView stickerView;

        public EmptyView(Context context) {
            super(context);
            this.currentAccount = UserConfig.selectedAccount;
            setPadding(0, AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f));
            setOrientation(1);
            BackupImageView backupImageView = new BackupImageView(context);
            this.stickerView = backupImageView;
            addView(backupImageView, LayoutHelper.createLinear(104, 104, 49, 0, 2, 0, 0));
        }

        private void setSticker() {
            TLRPC.TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            if (stickerSetByName == null) {
                stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            }
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSetByName;
            if (tL_messages_stickerSet == null || tL_messages_stickerSet.documents.size() < 4) {
                MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, tL_messages_stickerSet == null);
            } else {
                TLRPC.Document document = (TLRPC.Document) tL_messages_stickerSet.documents.get(3);
                this.stickerView.setImage(ImageLocation.getForDocument(document), "104_104", "tgs", DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 1.0f), tL_messages_stickerSet);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.diceStickersDidLoad && AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME.equals((String) objArr[0])) {
                setSticker();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            setSticker();
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        }
    }

    public class HintInnerCell extends FrameLayout {
        private EmptyView emptyView;
        private TextView messageTextView;

        public HintInnerCell(Context context) {
            super(context);
            EmptyView emptyView = new EmptyView(context);
            this.emptyView = emptyView;
            addView(emptyView, LayoutHelper.createFrame(-2, -2.0f, 49, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            TextView textView = new TextView(context);
            this.messageTextView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_chats_message));
            this.messageTextView.setTextSize(1, 14.0f);
            this.messageTextView.setGravity(17);
            this.messageTextView.setText(LocaleController.getString(ManageLinksActivity.this.isChannel ? R.string.PrimaryLinkHelpChannel : R.string.PrimaryLinkHelp));
            addView(this.messageTextView, LayoutHelper.createFrame(-1, -2.0f, 51, 52.0f, 143.0f, 52.0f, 18.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LinkCell extends FrameLayout {
        int animateFromState;
        boolean animateHideExpiring;
        float animateToStateProgress;
        boolean drawDivider;
        TLRPC.TL_chatInviteExported invite;
        float lastDrawExpringProgress;
        int lastDrawingState;
        ImageView optionsView;
        Paint paint;
        Paint paint2;
        int position;
        private final LinearLayout priceLayout;
        private final TextView priceSubitleView;
        private final TextView priceTitleView;
        RectF rectF;
        private final TextView subtitleView;
        private final LinearLayout textLayout;
        private final TimerParticles timerParticles;
        boolean timerRunning;
        private final TextView titleView;

        public LinkCell(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.paint2 = new Paint(1);
            this.rectF = new RectF();
            this.animateToStateProgress = 1.0f;
            this.timerParticles = new TimerParticles();
            this.paint2.setStyle(Paint.Style.STROKE);
            this.paint2.setStrokeCap(Paint.Cap.ROUND);
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 16, 64.0f, BitmapDescriptorFactory.HUE_RED, 30.0f, BitmapDescriptorFactory.HUE_RED));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i));
            textView.setLines(1);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 13.0f);
            int i2 = Theme.key_windowBackgroundWhiteGrayText;
            textView2.setTextColor(Theme.getColor(i2));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 4.33f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            ImageView imageView = new ImageView(context);
            this.optionsView = imageView;
            imageView.setImageDrawable(ContextCompat.getDrawable(context, R.drawable.ic_ab_other));
            this.optionsView.setScaleType(ImageView.ScaleType.CENTER);
            this.optionsView.setColorFilter(Theme.getColor(Theme.key_stickers_menu));
            this.optionsView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$7(view);
                }
            });
            this.optionsView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 1));
            addView(this.optionsView, LayoutHelper.createFrame(48, 48.0f, 21, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            setWillNotDraw(false);
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.priceLayout = linearLayout2;
            linearLayout2.setOrientation(1);
            TextView textView3 = new TextView(context);
            this.priceTitleView = textView3;
            textView3.setTextSize(1, 16.0f);
            textView3.setTextColor(Theme.getColor(i));
            textView3.setLines(1);
            textView3.setEllipsize(truncateAt);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setGravity(5);
            linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, -2, 5));
            TextView textView4 = new TextView(context);
            this.priceSubitleView = textView4;
            textView4.setTextSize(1, 13.0f);
            textView4.setTextColor(Theme.getColor(i2));
            textView4.setGravity(5);
            linearLayout2.addView(textView4, LayoutHelper.createLinear(-1, -2, 5, 0, 1, 0, 0));
            addView(linearLayout2, LayoutHelper.createFrame(-2, -2.0f, 21, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 18.0f, BitmapDescriptorFactory.HUE_RED));
            linearLayout2.setVisibility(8);
        }

        private int getColor(int i, float f) {
            TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
            return (tL_chatInviteExported == null || tL_chatInviteExported.subscription_pricing == null) ? i == 3 ? Theme.getColor(Theme.key_chat_attachAudioBackground) : i == 1 ? f > 0.5f ? ColorUtils.blendARGB(Theme.getColor(Theme.key_chat_attachLocationBackground), Theme.getColor(Theme.key_chat_attachPollBackground), 1.0f - ((f - 0.5f) / 0.5f)) : ColorUtils.blendARGB(Theme.getColor(Theme.key_chat_attachPollBackground), Theme.getColor(Theme.key_chat_attachAudioBackground), 1.0f - (f / 0.5f)) : i == 2 ? Theme.getColor(Theme.key_chat_attachPollBackground) : i == 4 ? Theme.getColor(Theme.key_chats_unreadCounterMuted) : Theme.getColor(Theme.key_featuredStickers_addButton) : Theme.getColor(Theme.key_color_green);
        }

        private boolean hasProgress(int i) {
            return i == 2 || i == 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(TLRPC.TL_chatInviteExported tL_chatInviteExported, AlertDialog alertDialog, int i) {
            ManageLinksActivity.this.deleteLink(tL_chatInviteExported);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            final TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
            new AlertDialog.Builder(ManageLinksActivity.this.getParentActivity()).setTitle(LocaleController.getString(R.string.DeleteLink)).setMessage(LocaleController.getString(R.string.DeleteLinkHelp)).setPositiveButton(LocaleController.getString(R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$0(tL_chatInviteExported, alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(R.string.Cancel), null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2() {
            try {
                if (this.invite.link == null) {
                    return;
                }
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", this.invite.link));
                BulletinFactory.createCopyLinkBulletin(ManageLinksActivity.this).show();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3() {
            try {
                if (this.invite.link == null) {
                    return;
                }
                ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                Context context = getContext();
                String str = this.invite.link;
                manageLinksActivity.showDialog(new ShareAlert(context, null, str, false, str, false, ManageLinksActivity.this.getResourceProvider()) { // from class: org.telegram.ui.ManageLinksActivity.LinkCell.1
                    @Override // org.telegram.ui.Components.ShareAlert
                    protected void onSend(LongSparseArray longSparseArray, int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                        String string;
                        if (z) {
                            if (longSparseArray == null || longSparseArray.size() != 1) {
                                string = LocaleController.formatString(R.string.InvLinkToChats, LocaleController.formatPluralString("Chats", i, new Object[0]));
                            } else {
                                long j = ((TLRPC.Dialog) longSparseArray.valueAt(0)).id;
                                string = (j == 0 || j == ManageLinksActivity.this.getUserConfig().getClientUserId()) ? LocaleController.getString(R.string.InvLinkToSavedMessages) : LocaleController.formatString(R.string.InvLinkToUser, ManageLinksActivity.this.getMessagesController().getPeerName(j, true));
                            }
                            Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(ManageLinksActivity.this).createSimpleBulletin(R.raw.forward, AndroidUtilities.replaceTags(string));
                            bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
                            bulletinCreateSimpleBulletin.show(true);
                        }
                    }
                });
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4() {
            ManageLinksActivity.this.editLink(this.invite);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(TLRPC.TL_chatInviteExported tL_chatInviteExported, AlertDialog alertDialog, int i) {
            ManageLinksActivity.this.revokeLink(tL_chatInviteExported);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6() {
            final TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
            new AlertDialog.Builder(ManageLinksActivity.this.getParentActivity()).setMessage(LocaleController.getString(R.string.RevokeAlert)).setTitle(LocaleController.getString(R.string.RevokeLink)).setPositiveButton(LocaleController.getString(R.string.RevokeButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$5(tL_chatInviteExported, alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(R.string.Cancel), null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(View view) {
            if (this.invite == null) {
                return;
            }
            View view2 = ManageLinksActivity.this.fragmentView;
            if (view2 instanceof ViewGroup) {
                ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((ViewGroup) view2, this);
                if (this.invite.revoked) {
                    itemOptionsMakeOptions.add(R.drawable.msg_delete, (CharSequence) LocaleController.getString(R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$1();
                        }
                    });
                } else {
                    itemOptionsMakeOptions.add(R.drawable.msg_copy, LocaleController.getString(R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$2();
                        }
                    });
                    itemOptionsMakeOptions.add(R.drawable.msg_share, LocaleController.getString(R.string.ShareLink), new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$3();
                        }
                    });
                    itemOptionsMakeOptions.addIf(!this.invite.permanent && ManageLinksActivity.this.canEdit, R.drawable.msg_edit, LocaleController.getString(R.string.EditLink), new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$4();
                        }
                    });
                    itemOptionsMakeOptions.addIf(ManageLinksActivity.this.canEdit, R.drawable.msg_delete, (CharSequence) LocaleController.getString(R.string.RevokeLink), true, new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$LinkCell$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$6();
                        }
                    });
                }
                itemOptionsMakeOptions.show();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:62:0x0109  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            float f;
            float fMin;
            int i;
            Drawable drawable;
            if (this.invite == null) {
                return;
            }
            int iDp = AndroidUtilities.dp(32.0f);
            int measuredHeight = getMeasuredHeight() / 2;
            TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
            if (!tL_chatInviteExported.expired && !tL_chatInviteExported.revoked) {
                int i2 = tL_chatInviteExported.expire_date;
                if (i2 > 0 || tL_chatInviteExported.usage_limit > 0) {
                    if (i2 > 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() + (ManageLinksActivity.this.timeDif * 1000);
                        TLRPC.TL_chatInviteExported tL_chatInviteExported2 = this.invite;
                        long j = tL_chatInviteExported2.expire_date * 1000;
                        int i3 = tL_chatInviteExported2.start_date;
                        if (i3 <= 0) {
                            i3 = tL_chatInviteExported2.date;
                        }
                        long j2 = i3 * 1000;
                        f = 1.0f - ((jCurrentTimeMillis - j2) / (j - j2));
                    } else {
                        f = 1.0f;
                    }
                    int i4 = this.invite.usage_limit;
                    fMin = Math.min(f, i4 > 0 ? (i4 - r3.usage) / i4 : 1.0f);
                    if (fMin <= BitmapDescriptorFactory.HUE_RED) {
                        this.invite.expired = true;
                        AndroidUtilities.updateVisibleRows(ManageLinksActivity.this.listView);
                        i = 3;
                    } else {
                        i = 1;
                    }
                } else {
                    f = 1.0f;
                    fMin = BitmapDescriptorFactory.HUE_RED;
                    i = 0;
                }
            } else if (tL_chatInviteExported.revoked) {
                i = 4;
                f = 1.0f;
                fMin = BitmapDescriptorFactory.HUE_RED;
            } else {
                f = 1.0f;
                fMin = BitmapDescriptorFactory.HUE_RED;
                i = 3;
            }
            int i5 = this.lastDrawingState;
            if (i != i5 && i5 >= 0) {
                this.animateFromState = i5;
                this.animateToStateProgress = BitmapDescriptorFactory.HUE_RED;
                if (!hasProgress(i5) || hasProgress(i)) {
                    this.animateHideExpiring = false;
                } else {
                    this.animateHideExpiring = true;
                }
            }
            this.lastDrawingState = i;
            float f2 = this.animateToStateProgress;
            if (f2 != 1.0f) {
                float f3 = f2 + 0.064f;
                this.animateToStateProgress = f3;
                if (f3 >= 1.0f) {
                    this.animateToStateProgress = 1.0f;
                    this.animateHideExpiring = false;
                } else {
                    invalidate();
                }
            }
            int iBlendARGB = this.animateToStateProgress != 1.0f ? ColorUtils.blendARGB(getColor(this.animateFromState, fMin), getColor(i, fMin), this.animateToStateProgress) : getColor(i, fMin);
            this.paint.setColor(iBlendARGB);
            canvas.drawCircle(iDp, measuredHeight, AndroidUtilities.dp(32.0f) / 2.0f, this.paint);
            boolean z = this.animateHideExpiring;
            if (!z) {
                TLRPC.TL_chatInviteExported tL_chatInviteExported3 = this.invite;
                if (!tL_chatInviteExported3.expired && tL_chatInviteExported3.expire_date > 0 && !tL_chatInviteExported3.revoked) {
                    if (z) {
                        f = this.lastDrawExpringProgress;
                    }
                    float f4 = f;
                    this.paint2.setColor(iBlendARGB);
                    this.rectF.set(iDp - AndroidUtilities.dp(20.0f), measuredHeight - AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f) + iDp, AndroidUtilities.dp(20.0f) + measuredHeight);
                    if (this.animateToStateProgress == 1.0f || (hasProgress(this.animateFromState) && !this.animateHideExpiring)) {
                        float f5 = (-f4) * 360.0f;
                        canvas.drawArc(this.rectF, -90.0f, f5, false, this.paint2);
                        this.timerParticles.draw(canvas, this.paint2, this.rectF, f5, 1.0f);
                    } else {
                        canvas.save();
                        float f6 = this.animateHideExpiring ? 1.0f - this.animateToStateProgress : this.animateToStateProgress;
                        double d = 0.3f * f6;
                        Double.isNaN(d);
                        float f7 = (float) (d + 0.7d);
                        canvas.scale(f7, f7, this.rectF.centerX(), this.rectF.centerY());
                        float f8 = (-f4) * 360.0f;
                        canvas.drawArc(this.rectF, -90.0f, f8, false, this.paint2);
                        this.timerParticles.draw(canvas, this.paint2, this.rectF, f8, f6);
                        canvas.restore();
                    }
                    if (!((BaseFragment) ManageLinksActivity.this).isPaused) {
                        invalidate();
                    }
                    this.lastDrawExpringProgress = f4;
                }
            }
            TLRPC.TL_chatInviteExported tL_chatInviteExported4 = this.invite;
            if (tL_chatInviteExported4.subscription_pricing != null) {
                ManageLinksActivity.this.linkIconRevenue.setBounds(iDp - AndroidUtilities.dp(12.0f), measuredHeight - AndroidUtilities.dp(12.0f), iDp + AndroidUtilities.dp(12.0f), measuredHeight + AndroidUtilities.dp(12.0f));
                drawable = ManageLinksActivity.this.linkIconRevenue;
            } else if (tL_chatInviteExported4.revoked) {
                ManageLinksActivity.this.linkIconRevoked.setBounds(iDp - AndroidUtilities.dp(12.0f), measuredHeight - AndroidUtilities.dp(12.0f), iDp + AndroidUtilities.dp(12.0f), measuredHeight + AndroidUtilities.dp(12.0f));
                drawable = ManageLinksActivity.this.linkIconRevoked;
            } else {
                ManageLinksActivity.this.linkIcon.setBounds(iDp - AndroidUtilities.dp(12.0f), measuredHeight - AndroidUtilities.dp(12.0f), iDp + AndroidUtilities.dp(12.0f), measuredHeight + AndroidUtilities.dp(12.0f));
                drawable = ManageLinksActivity.this.linkIcon;
            }
            drawable.draw(canvas);
            if (this.drawDivider) {
                canvas.drawLine(AndroidUtilities.dp(70.0f), getMeasuredHeight() - 1, getMeasuredWidth() + AndroidUtilities.dp(23.0f), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(60.0f), 1073741824));
            this.paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
        }

        public void setLink(TLRPC.TL_chatInviteExported tL_chatInviteExported, int i) {
            TextView textView;
            String strSubstring;
            String str;
            String pluralString;
            SpannableStringBuilder spannableStringBuilder;
            String string;
            int i2;
            TextView textView2;
            String string2;
            this.timerRunning = false;
            TLRPC.TL_chatInviteExported tL_chatInviteExported2 = this.invite;
            if (tL_chatInviteExported2 == null || tL_chatInviteExported == null || !tL_chatInviteExported2.link.equals(tL_chatInviteExported.link)) {
                this.lastDrawingState = -1;
                this.animateToStateProgress = 1.0f;
            }
            this.invite = tL_chatInviteExported;
            this.position = i;
            if (tL_chatInviteExported == null) {
                return;
            }
            int iDp = AndroidUtilities.dp(30.0f);
            int i3 = 8;
            if (tL_chatInviteExported.subscription_pricing != null) {
                this.priceLayout.setVisibility(0);
                this.optionsView.setVisibility(8);
                this.priceTitleView.setText(StarsIntroActivity.replaceStarsWithPlain("⭐️ " + LocaleController.formatNumber(tL_chatInviteExported.subscription_pricing.amount, ','), 0.75f));
                int i4 = tL_chatInviteExported.subscription_pricing.period;
                if (i4 == 2592000) {
                    textView2 = this.priceSubitleView;
                    string2 = LocaleController.getString(R.string.StarsParticipantSubscriptionPerMonth);
                } else if (i4 == 300) {
                    textView2 = this.priceSubitleView;
                    string2 = "per 5 minutes";
                } else {
                    if (i4 == 60) {
                        textView2 = this.priceSubitleView;
                        string2 = "each minute";
                    }
                    iDp = AndroidUtilities.dp(28.0f) + ((int) Math.max(HintView2.measureCorrectly(this.priceTitleView.getText(), this.priceTitleView.getPaint()), HintView2.measureCorrectly(this.priceSubitleView.getText(), this.priceSubitleView.getPaint())));
                }
                textView2.setText(string2);
                iDp = AndroidUtilities.dp(28.0f) + ((int) Math.max(HintView2.measureCorrectly(this.priceTitleView.getText(), this.priceTitleView.getPaint()), HintView2.measureCorrectly(this.priceSubitleView.getText(), this.priceSubitleView.getPaint())));
            } else {
                this.priceLayout.setVisibility(8);
                this.optionsView.setVisibility(8);
            }
            ((ViewGroup.MarginLayoutParams) this.textLayout.getLayoutParams()).rightMargin = iDp;
            if (TextUtils.isEmpty(tL_chatInviteExported.title)) {
                if (tL_chatInviteExported.link.startsWith("https://t.me/+")) {
                    textView = this.titleView;
                    strSubstring = MessagesController.getInstance(((BaseFragment) ManageLinksActivity.this).currentAccount).linkPrefix + "/" + tL_chatInviteExported.link.substring(14);
                } else {
                    if (tL_chatInviteExported.link.startsWith("https://t.me/joinchat/")) {
                        textView = this.titleView;
                        str = tL_chatInviteExported.link;
                        i3 = 22;
                    } else if (tL_chatInviteExported.link.startsWith("https://")) {
                        textView = this.titleView;
                        str = tL_chatInviteExported.link;
                    } else {
                        textView = this.titleView;
                        strSubstring = tL_chatInviteExported.link;
                    }
                    strSubstring = str.substring(i3);
                }
                textView.setText(strSubstring);
            } else {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(tL_chatInviteExported.title);
                Emoji.replaceEmoji(spannableStringBuilder2, this.titleView.getPaint().getFontMetricsInt(), false);
                this.titleView.setText(spannableStringBuilder2);
            }
            int i5 = tL_chatInviteExported.usage;
            if (i5 == 0 && tL_chatInviteExported.usage_limit == 0 && tL_chatInviteExported.requested == 0) {
                pluralString = LocaleController.getString(tL_chatInviteExported.subscription_pricing != null ? R.string.NoOneSubscribed : R.string.NoOneJoined);
            } else {
                int i6 = tL_chatInviteExported.usage_limit;
                if (i6 > 0 && i5 == 0 && !tL_chatInviteExported.expired && !tL_chatInviteExported.revoked) {
                    pluralString = LocaleController.formatPluralString("CanJoin", i6, new Object[0]);
                } else if (i6 > 0 && tL_chatInviteExported.expired && tL_chatInviteExported.revoked) {
                    pluralString = LocaleController.formatPluralString("PeopleJoined", tL_chatInviteExported.usage, new Object[0]) + ", " + LocaleController.formatPluralString("PeopleJoinedRemaining", tL_chatInviteExported.usage_limit - tL_chatInviteExported.usage, new Object[0]);
                } else {
                    pluralString = i5 > 0 ? LocaleController.formatPluralString("PeopleJoined", i5, new Object[0]) : "";
                    if (tL_chatInviteExported.requested > 0) {
                        if (tL_chatInviteExported.usage > 0) {
                            pluralString = pluralString + ", ";
                        }
                        pluralString = pluralString + LocaleController.formatPluralString("JoinRequests", tL_chatInviteExported.requested, new Object[0]);
                    }
                }
            }
            if (tL_chatInviteExported.permanent && !tL_chatInviteExported.revoked) {
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(pluralString);
                DotDividerSpan dotDividerSpan = new DotDividerSpan();
                dotDividerSpan.setTopPadding(AndroidUtilities.dp(1.5f));
                spannableStringBuilder3.append((CharSequence) "  .  ").setSpan(dotDividerSpan, spannableStringBuilder3.length() - 3, spannableStringBuilder3.length() - 2, 0);
                spannableStringBuilder3.append((CharSequence) LocaleController.getString(R.string.Permanent));
                this.subtitleView.setText(spannableStringBuilder3);
                return;
            }
            if (tL_chatInviteExported.expired || tL_chatInviteExported.revoked) {
                if (tL_chatInviteExported.revoked && tL_chatInviteExported.usage == 0) {
                    pluralString = LocaleController.getString(tL_chatInviteExported.subscription_pricing != null ? R.string.NoOneSubscribed : R.string.NoOneJoined);
                }
                spannableStringBuilder = new SpannableStringBuilder(pluralString);
                DotDividerSpan dotDividerSpan2 = new DotDividerSpan();
                dotDividerSpan2.setTopPadding(AndroidUtilities.dp(1.5f));
                spannableStringBuilder.append((CharSequence) "  .  ").setSpan(dotDividerSpan2, spannableStringBuilder.length() - 3, spannableStringBuilder.length() - 2, 0);
                boolean z = tL_chatInviteExported.revoked;
                string = LocaleController.getString((z || (i2 = tL_chatInviteExported.usage_limit) <= 0 || tL_chatInviteExported.usage < i2) ? z ? R.string.Revoked : R.string.Expired : R.string.LinkLimitReached);
            } else {
                if (tL_chatInviteExported.expire_date <= 0) {
                    this.subtitleView.setText(pluralString);
                    return;
                }
                spannableStringBuilder = new SpannableStringBuilder(pluralString);
                DotDividerSpan dotDividerSpan3 = new DotDividerSpan();
                dotDividerSpan3.setTopPadding(AndroidUtilities.dp(1.5f));
                spannableStringBuilder.append((CharSequence) "  .  ").setSpan(dotDividerSpan3, spannableStringBuilder.length() - 3, spannableStringBuilder.length() - 2, 0);
                long jCurrentTimeMillis = (tL_chatInviteExported.expire_date * 1000) - (System.currentTimeMillis() + (ManageLinksActivity.this.timeDif * 1000));
                if (jCurrentTimeMillis < 0) {
                    jCurrentTimeMillis = 0;
                }
                if (jCurrentTimeMillis <= 86400000) {
                    long j = jCurrentTimeMillis / 1000;
                    int i7 = (int) (j % 60);
                    long j2 = j / 60;
                    int i8 = (int) (j2 % 60);
                    int i9 = (int) (j2 / 60);
                    Locale locale = Locale.ENGLISH;
                    spannableStringBuilder.append((CharSequence) String.format(locale, "%02d", Integer.valueOf(i9))).append((CharSequence) String.format(locale, ":%02d", Integer.valueOf(i8))).append((CharSequence) String.format(locale, ":%02d", Integer.valueOf(i7)));
                    this.timerRunning = true;
                    this.subtitleView.setText(spannableStringBuilder);
                }
                string = LocaleController.formatPluralString("DaysLeft", (int) (jCurrentTimeMillis / 86400000), new Object[0]);
            }
            spannableStringBuilder.append((CharSequence) string);
            this.subtitleView.setText(spannableStringBuilder);
        }
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ManageLinksActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ManageLinksActivity.this.helpRow) {
                return 0;
            }
            if (i == ManageLinksActivity.this.permanentLinkHeaderRow || i == ManageLinksActivity.this.revokedHeader || i == ManageLinksActivity.this.adminsHeaderRow || i == ManageLinksActivity.this.linksHeaderRow) {
                return 1;
            }
            if (i == ManageLinksActivity.this.permanentLinkRow) {
                return 2;
            }
            if (i == ManageLinksActivity.this.createNewLinkRow) {
                return 3;
            }
            if (i == ManageLinksActivity.this.dividerRow || i == ManageLinksActivity.this.revokedDivider || i == ManageLinksActivity.this.revokeAllDivider || i == ManageLinksActivity.this.creatorDividerRow || i == ManageLinksActivity.this.adminsDividerRow) {
                return 4;
            }
            if (i >= ManageLinksActivity.this.linksStartRow && i < ManageLinksActivity.this.linksEndRow) {
                return 5;
            }
            if (i >= ManageLinksActivity.this.revokedLinksStartRow && i < ManageLinksActivity.this.revokedLinksEndRow) {
                return 5;
            }
            if (i == ManageLinksActivity.this.linksLoadingRow) {
                return 6;
            }
            if (i == ManageLinksActivity.this.lastDivider) {
                return 7;
            }
            if (i == ManageLinksActivity.this.revokeAllRow) {
                return 8;
            }
            if (i == ManageLinksActivity.this.createLinkHelpRow) {
                return 9;
            }
            if (i == ManageLinksActivity.this.creatorRow) {
                return 10;
            }
            if (i < ManageLinksActivity.this.adminsStartRow || i >= ManageLinksActivity.this.adminsEndRow) {
                return i == ManageLinksActivity.this.linksInfoRow ? 11 : 1;
            }
            return 10;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (ManageLinksActivity.this.creatorRow == adapterPosition || ManageLinksActivity.this.createNewLinkRow == adapterPosition) {
                return true;
            }
            if (adapterPosition >= ManageLinksActivity.this.linksStartRow && adapterPosition < ManageLinksActivity.this.linksEndRow) {
                return true;
            }
            if ((adapterPosition < ManageLinksActivity.this.revokedLinksStartRow || adapterPosition >= ManageLinksActivity.this.revokedLinksEndRow) && adapterPosition != ManageLinksActivity.this.revokeAllRow) {
                return adapterPosition >= ManageLinksActivity.this.adminsStartRow && adapterPosition < ManageLinksActivity.this.adminsEndRow;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0108 A[PHI: r9
          0x0108: PHI (r9v15 org.telegram.ui.Cells.TextInfoPrivacyCell) = (r9v10 org.telegram.ui.Cells.TextInfoPrivacyCell), (r9v17 org.telegram.ui.Cells.TextInfoPrivacyCell) binds: [B:36:0x0106, B:19:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0113 A[PHI: r9
          0x0113: PHI (r9v13 org.telegram.ui.Cells.TextInfoPrivacyCell) = 
          (r9v10 org.telegram.ui.Cells.TextInfoPrivacyCell)
          (r9v10 org.telegram.ui.Cells.TextInfoPrivacyCell)
          (r9v10 org.telegram.ui.Cells.TextInfoPrivacyCell)
          (r9v17 org.telegram.ui.Cells.TextInfoPrivacyCell)
          (r9v17 org.telegram.ui.Cells.TextInfoPrivacyCell)
          (r9v17 org.telegram.ui.Cells.TextInfoPrivacyCell)
         binds: [B:32:0x00fc, B:34:0x0100, B:36:0x0106, B:15:0x0053, B:17:0x0057, B:19:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0161 A[PHI: r0
          0x0161: PHI (r0v29 org.telegram.tgnet.TLRPC$TL_chatInviteExported) = (r0v28 org.telegram.tgnet.TLRPC$TL_chatInviteExported), (r0v36 org.telegram.tgnet.TLRPC$TL_chatInviteExported) binds: [B:48:0x015f, B:45:0x0141] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws Resources.NotFoundException {
            int i2;
            TLRPC.TL_chatInviteExported tL_chatInviteExported;
            TextInfoPrivacyCell textInfoPrivacyCell;
            int i3;
            TLRPC.User user;
            int itemViewType = viewHolder.getItemViewType();
            boolean z = true;
            if (itemViewType == 1) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == ManageLinksActivity.this.permanentLinkHeaderRow) {
                    i2 = (ManageLinksActivity.this.isPublic && ManageLinksActivity.this.adminId == ManageLinksActivity.this.getAccountInstance().getUserConfig().clientUserId) ? R.string.PublicLink : ManageLinksActivity.this.adminId == ManageLinksActivity.this.getAccountInstance().getUserConfig().clientUserId ? R.string.ChannelInviteLinkTitle : R.string.PermanentLinkForThisAdmin;
                } else if (i == ManageLinksActivity.this.revokedHeader) {
                    i2 = R.string.RevokedLinks;
                } else if (i == ManageLinksActivity.this.linksHeaderRow) {
                    i2 = R.string.LinksCreatedByThisAdmin;
                } else if (i != ManageLinksActivity.this.adminsHeaderRow) {
                    return;
                } else {
                    i2 = R.string.LinksCreatedByOtherAdmins;
                }
                headerCell.setText(LocaleController.getString(i2));
                return;
            }
            if (itemViewType == 2) {
                LinkActionView linkActionView = (LinkActionView) viewHolder.itemView;
                linkActionView.setCanEdit(ManageLinksActivity.this.adminId == ManageLinksActivity.this.getAccountInstance().getUserConfig().clientUserId);
                if (ManageLinksActivity.this.isPublic && ManageLinksActivity.this.adminId == ManageLinksActivity.this.getAccountInstance().getUserConfig().clientUserId) {
                    if (ManageLinksActivity.this.info != null) {
                        linkActionView.setLink("https://t.me/" + ChatObject.getPublicUsername(ManageLinksActivity.this.currentChat));
                        linkActionView.setUsers(0, null);
                        linkActionView.hideRevokeOption(true);
                        return;
                    }
                    return;
                }
                linkActionView.hideRevokeOption(!ManageLinksActivity.this.canEdit);
                if (ManageLinksActivity.this.invite == null) {
                    linkActionView.setLink(null);
                    linkActionView.loadUsers(null, ManageLinksActivity.this.currentChatId);
                    return;
                } else {
                    TLRPC.TL_chatInviteExported tL_chatInviteExported2 = ManageLinksActivity.this.invite;
                    linkActionView.setLink(tL_chatInviteExported2.link);
                    linkActionView.loadUsers(tL_chatInviteExported2, ManageLinksActivity.this.currentChatId);
                    return;
                }
            }
            if (itemViewType == 3) {
                CreationTextCell creationTextCell = (CreationTextCell) viewHolder.itemView;
                Drawable drawable = this.mContext.getResources().getDrawable(R.drawable.poll_add_circle);
                Drawable drawable2 = this.mContext.getResources().getDrawable(R.drawable.poll_add_plus);
                int color = Theme.getColor(Theme.key_switchTrackChecked);
                PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), mode));
                creationTextCell.setTextAndIcon(LocaleController.getString(R.string.CreateNewLink), new CombinedDrawable(drawable, drawable2), !ManageLinksActivity.this.invites.isEmpty());
                return;
            }
            if (itemViewType == 5) {
                if (i < ManageLinksActivity.this.linksStartRow || i >= ManageLinksActivity.this.linksEndRow) {
                    tL_chatInviteExported = (TLRPC.TL_chatInviteExported) ManageLinksActivity.this.revokedInvites.get(i - ManageLinksActivity.this.revokedLinksStartRow);
                    if (i == ManageLinksActivity.this.revokedLinksEndRow - 1) {
                        z = false;
                    }
                } else {
                    tL_chatInviteExported = (TLRPC.TL_chatInviteExported) ManageLinksActivity.this.invites.get(i - ManageLinksActivity.this.linksStartRow);
                    if (i == ManageLinksActivity.this.linksEndRow - 1) {
                    }
                }
                LinkCell linkCell = (LinkCell) viewHolder.itemView;
                linkCell.setLink(tL_chatInviteExported, i - ManageLinksActivity.this.linksStartRow);
                linkCell.drawDivider = z;
                return;
            }
            switch (itemViewType) {
                case 9:
                    textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    TLRPC.ChatFull chatFull = ManageLinksActivity.this.getMessagesController().getChatFull(ManageLinksActivity.this.currentChatId);
                    int i4 = (chatFull != null && chatFull.paid_media_allowed && ChatObject.isChannelAndNotMegaGroup(ManageLinksActivity.this.getMessagesController().getChat(Long.valueOf(ManageLinksActivity.this.currentChatId)))) ? R.string.ChannelLinksInfoPaid : R.string.ChannelLinksInfo;
                    textInfoPrivacyCell.setText(LocaleController.getString(i4));
                    break;
                case 10:
                    ManageChatUserCell manageChatUserCell = (ManageChatUserCell) viewHolder.itemView;
                    if (i != ManageLinksActivity.this.creatorRow) {
                        TLRPC.TL_chatAdminWithInvites tL_chatAdminWithInvites = (TLRPC.TL_chatAdminWithInvites) ManageLinksActivity.this.admins.get(i - ManageLinksActivity.this.adminsStartRow);
                        TLRPC.User user2 = (TLRPC.User) ManageLinksActivity.this.users.get(Long.valueOf(tL_chatAdminWithInvites.admin_id));
                        i3 = tL_chatAdminWithInvites.invites_count;
                        if (i != ManageLinksActivity.this.adminsEndRow - 1) {
                            user = user2;
                            if (user == null) {
                                manageChatUserCell.setData(user, ContactsController.formatName(user.first_name, user.last_name), LocaleController.formatPluralString("InviteLinkCount", i3, new Object[0]), z);
                                break;
                            }
                        } else {
                            user = user2;
                        }
                    } else {
                        user = ManageLinksActivity.this.getMessagesController().getUser(Long.valueOf(ManageLinksActivity.this.adminId));
                        i3 = ManageLinksActivity.this.invitesCount;
                    }
                    z = false;
                    if (user == null) {
                    }
                    break;
                case 11:
                    textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawableByKey(this.mContext, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    if (i == ManageLinksActivity.this.linksInfoRow) {
                        TLRPC.ChatFull chatFull2 = ManageLinksActivity.this.getMessagesController().getChatFull(ManageLinksActivity.this.currentChatId);
                        TLRPC.Chat chat = ManageLinksActivity.this.getMessagesController().getChat(Long.valueOf(ManageLinksActivity.this.currentChatId));
                        if (chatFull2 == null || !chatFull2.paid_media_allowed || !ChatObject.isChannelAndNotMegaGroup(chat)) {
                        }
                        textInfoPrivacyCell.setText(LocaleController.getString(i4));
                        break;
                    }
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FlickerLoadingView flickerLoadingView;
            View shadowSectionCell;
            View shadowSectionCell2;
            View headerCell;
            switch (i) {
                case 1:
                    headerCell = new HeaderCell(this.mContext, 23);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = headerCell;
                    break;
                case 2:
                    Context context = this.mContext;
                    ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                    final LinkActionView linkActionView = new LinkActionView(context, manageLinksActivity, null, manageLinksActivity.currentChatId, true, ManageLinksActivity.this.isChannel);
                    linkActionView.setPermanent(true);
                    linkActionView.setDelegate(new LinkActionView.Delegate() { // from class: org.telegram.ui.ManageLinksActivity.ListAdapter.1
                        @Override // org.telegram.ui.Components.LinkActionView.Delegate
                        public /* synthetic */ void editLink() {
                            LinkActionView.Delegate.CC.$default$editLink(this);
                        }

                        @Override // org.telegram.ui.Components.LinkActionView.Delegate
                        public /* synthetic */ void removeLink() {
                            LinkActionView.Delegate.CC.$default$removeLink(this);
                        }

                        @Override // org.telegram.ui.Components.LinkActionView.Delegate
                        public void revokeLink() {
                            ManageLinksActivity.this.revokePermanent();
                        }

                        @Override // org.telegram.ui.Components.LinkActionView.Delegate
                        public void showUsersForPermanentLink() {
                            ManageLinksActivity manageLinksActivity2 = ManageLinksActivity.this;
                            Context context2 = linkActionView.getContext();
                            TLRPC.TL_chatInviteExported tL_chatInviteExported = ManageLinksActivity.this.invite;
                            TLRPC.ChatFull chatFull = ManageLinksActivity.this.info;
                            HashMap map = ManageLinksActivity.this.users;
                            ManageLinksActivity manageLinksActivity3 = ManageLinksActivity.this;
                            manageLinksActivity2.inviteLinkBottomSheet = new InviteLinkBottomSheet(context2, tL_chatInviteExported, chatFull, map, manageLinksActivity3, manageLinksActivity3.currentChatId, true, ManageLinksActivity.this.isChannel);
                            ManageLinksActivity.this.inviteLinkBottomSheet.show();
                        }
                    });
                    flickerLoadingView = linkActionView;
                    flickerLoadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = flickerLoadingView;
                    break;
                case 3:
                    headerCell = new CreationTextCell(this.mContext, 64, ((BaseFragment) ManageLinksActivity.this).resourceProvider);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = headerCell;
                    break;
                case 4:
                    shadowSectionCell = new ShadowSectionCell(this.mContext);
                    break;
                case 5:
                    shadowSectionCell = ManageLinksActivity.this.new LinkCell(this.mContext);
                    break;
                case 6:
                    FlickerLoadingView flickerLoadingView2 = new FlickerLoadingView(this.mContext);
                    flickerLoadingView2.setIsSingleCell(true);
                    flickerLoadingView2.setViewType(9);
                    flickerLoadingView2.showDate(false);
                    flickerLoadingView = flickerLoadingView2;
                    flickerLoadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = flickerLoadingView;
                    break;
                case 7:
                    shadowSectionCell2 = new ShadowSectionCell(this.mContext);
                    shadowSectionCell2.setBackground(Theme.getThemedDrawableByKey(this.mContext, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    shadowSectionCell = shadowSectionCell2;
                    break;
                case 8:
                    TextSettingsCell textSettingsCell = new TextSettingsCell(this.mContext);
                    textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    textSettingsCell.setText(LocaleController.getString(R.string.DeleteAllRevokedLinks), false);
                    textSettingsCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                    shadowSectionCell = textSettingsCell;
                    break;
                case 9:
                    shadowSectionCell2 = new TextInfoPrivacyCell(this.mContext);
                    shadowSectionCell2.setBackground(Theme.getThemedDrawableByKey(this.mContext, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    shadowSectionCell = shadowSectionCell2;
                    break;
                case 10:
                    headerCell = new ManageChatUserCell(this.mContext, 8, 6, false);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = headerCell;
                    break;
                case 11:
                    shadowSectionCell = new TextInfoPrivacyCell(this.mContext, ((BaseFragment) ManageLinksActivity.this).resourceProvider);
                    break;
                default:
                    View hintInnerCell = ManageLinksActivity.this.new HintInnerCell(this.mContext);
                    hintInnerCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, R.drawable.greydivider_bottom, Theme.key_windowBackgroundWhite));
                    shadowSectionCell = hintInnerCell;
                    break;
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }
    }

    public ManageLinksActivity(long j, long j2, int i) {
        boolean z = false;
        this.currentChatId = j;
        this.invitesCount = i;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
        this.currentChat = chat;
        this.isChannel = ChatObject.isChannel(chat) && !this.currentChat.megagroup;
        this.adminId = j2 == 0 ? getAccountInstance().getUserConfig().clientUserId : j2;
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(this.adminId));
        if (this.adminId == getAccountInstance().getUserConfig().clientUserId || (user != null && !user.bot)) {
            z = true;
        }
        this.canEdit = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$10(View view, int i) {
        if ((i < this.linksStartRow || i >= this.linksEndRow) && (i < this.revokedLinksStartRow || i >= this.revokedLinksEndRow)) {
            return false;
        }
        ((LinkCell) view).optionsView.callOnClick();
        try {
            view.performHapticFeedback(0, 2);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(TLRPC.TL_error tL_error) {
        this.deletingRevokedLinks = false;
        if (tL_error == null) {
            DiffCallback diffCallbackSaveListState = saveListState();
            this.revokedInvites.clear();
            updateRecyclerViewAnimated(diffCallbackSaveListState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$6(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(AlertDialog alertDialog, int i) {
        TLRPC.TL_messages_deleteRevokedExportedChatInvites tL_messages_deleteRevokedExportedChatInvites = new TLRPC.TL_messages_deleteRevokedExportedChatInvites();
        tL_messages_deleteRevokedExportedChatInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
        tL_messages_deleteRevokedExportedChatInvites.admin_id = this.adminId == getUserConfig().getClientUserId() ? getMessagesController().getInputUser(getUserConfig().getCurrentUser()) : getMessagesController().getInputUser(this.adminId);
        this.deletingRevokedLinks = true;
        getConnectionsManager().sendRequest(tL_messages_deleteRevokedExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$7(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(Context context, View view, int i) {
        BaseFragment profileActivity;
        if (i == this.creatorRow) {
            TLRPC.User user = (TLRPC.User) this.users.get(Long.valueOf(this.invite.admin_id));
            if (user == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", user.id);
            MessagesController.getInstance(UserConfig.selectedAccount).putUser(user, false);
            profileActivity = new ProfileActivity(bundle);
        } else {
            if (i != this.createNewLinkRow) {
                int i2 = this.linksStartRow;
                if (i >= i2 && i < this.linksEndRow) {
                    InviteLinkBottomSheet inviteLinkBottomSheet = new InviteLinkBottomSheet(context, (TLRPC.TL_chatInviteExported) this.invites.get(i - i2), this.info, this.users, this, this.currentChatId, false, this.isChannel);
                    this.inviteLinkBottomSheet = inviteLinkBottomSheet;
                    inviteLinkBottomSheet.setCanEdit(this.canEdit);
                    this.inviteLinkBottomSheet.show();
                    return;
                }
                int i3 = this.revokedLinksStartRow;
                if (i >= i3 && i < this.revokedLinksEndRow) {
                    InviteLinkBottomSheet inviteLinkBottomSheet2 = new InviteLinkBottomSheet(context, (TLRPC.TL_chatInviteExported) this.revokedInvites.get(i - i3), this.info, this.users, this, this.currentChatId, false, this.isChannel);
                    this.inviteLinkBottomSheet = inviteLinkBottomSheet2;
                    inviteLinkBottomSheet2.show();
                    return;
                }
                if (i == this.revokeAllRow) {
                    if (this.deletingRevokedLinks) {
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    builder.setTitle(LocaleController.getString(R.string.DeleteAllRevokedLinks));
                    builder.setMessage(LocaleController.getString(R.string.DeleteAllRevokedLinkHelp));
                    builder.setPositiveButton(LocaleController.getString(R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda6
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i4) {
                            this.f$0.lambda$createView$8(alertDialog, i4);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(R.string.Cancel), null);
                    showDialog(builder.create());
                    return;
                }
                int i4 = this.adminsStartRow;
                if (i < i4 || i >= this.adminsEndRow) {
                    return;
                }
                TLRPC.TL_chatAdminWithInvites tL_chatAdminWithInvites = (TLRPC.TL_chatAdminWithInvites) this.admins.get(i - i4);
                if (this.users.containsKey(Long.valueOf(tL_chatAdminWithInvites.admin_id))) {
                    getMessagesController().putUser((TLRPC.User) this.users.get(Long.valueOf(tL_chatAdminWithInvites.admin_id)), false);
                }
                ManageLinksActivity manageLinksActivity = new ManageLinksActivity(this.currentChatId, tL_chatAdminWithInvites.admin_id, tL_chatAdminWithInvites.invites_count);
                manageLinksActivity.setInfo(this.info, null);
                presentFragment(manageLinksActivity);
                return;
            }
            LinkEditActivity linkEditActivity = new LinkEditActivity(0, this.currentChatId);
            linkEditActivity.setCallback(this.linkEditActivityCallback);
            profileActivity = linkEditActivity;
        }
        presentFragment(profileActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLink$13(TLRPC.TL_error tL_error, TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        if (tL_error == null) {
            this.linkEditActivityCallback.onLinkRemoved(tL_chatInviteExported);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLink$14(final TLRPC.TL_chatInviteExported tL_chatInviteExported, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteLink$13(tL_error, tL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$17() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof ManageChatUserCell) {
                    ((ManageChatUserCell) childAt).update(0);
                }
                if (childAt instanceof LinkActionView) {
                    ((LinkActionView) childAt).updateColors();
                }
            }
        }
        InviteLinkBottomSheet inviteLinkBottomSheet = this.inviteLinkBottomSheet;
        if (inviteLinkBottomSheet != null) {
            inviteLinkBottomSheet.updateColors();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$0(TLRPC.TL_error tL_error, TLObject tLObject) {
        RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
        this.linksLoading = false;
        if (tL_error == null) {
            TLRPC.TL_messages_chatAdminsWithInvites tL_messages_chatAdminsWithInvites = (TLRPC.TL_messages_chatAdminsWithInvites) tLObject;
            for (int i = 0; i < tL_messages_chatAdminsWithInvites.admins.size(); i++) {
                TLRPC.TL_chatAdminWithInvites tL_chatAdminWithInvites = (TLRPC.TL_chatAdminWithInvites) tL_messages_chatAdminsWithInvites.admins.get(i);
                if (tL_chatAdminWithInvites.admin_id != getAccountInstance().getUserConfig().clientUserId) {
                    this.admins.add(tL_chatAdminWithInvites);
                }
            }
            for (int i2 = 0; i2 < tL_messages_chatAdminsWithInvites.users.size(); i2++) {
                TLRPC.User user = (TLRPC.User) tL_messages_chatAdminsWithInvites.users.get(i2);
                this.users.put(Long.valueOf(user.id), user);
            }
        }
        int i3 = this.rowCount;
        this.adminsLoaded = true;
        this.hasMore = false;
        if (this.admins.size() > 0 && (recyclerItemsEnterAnimator = this.recyclerItemsEnterAnimator) != null && !this.isPaused && this.isOpened) {
            recyclerItemsEnterAnimator.showItemsAnimated(i3 + 1);
        }
        if (!this.hasMore || this.invites.size() + this.revokedInvites.size() + this.admins.size() >= 5) {
            resumeDelayedFragmentAnimation();
        }
        if (!this.hasMore && !this.loadRevoked) {
            this.hasMore = true;
            this.loadRevoked = true;
            loadLinks(false);
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$1(final TLRPC.TL_error tL_error, final TLObject tLObject) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLinks$0(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$2(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLinks$1(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadLinks$3(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLRPC.TL_error tL_error, TLObject tLObject, boolean z) {
        boolean z2;
        boolean z3;
        DiffCallback diffCallbackSaveListState = saveListState();
        this.linksLoading = false;
        this.hasMore = false;
        if (tL_chatInviteExported != null) {
            this.invite = tL_chatInviteExported;
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null) {
                chatFull.exported_invite = tL_chatInviteExported;
            }
        }
        if (tL_error == null) {
            TLRPC.TL_messages_exportedChatInvites tL_messages_exportedChatInvites = (TLRPC.TL_messages_exportedChatInvites) tLObject;
            if (z) {
                for (int i = 0; i < tL_messages_exportedChatInvites.invites.size(); i++) {
                    TLRPC.TL_chatInviteExported tL_chatInviteExported2 = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvites.invites.get(i);
                    fixDate(tL_chatInviteExported2);
                    this.revokedInvites.add(tL_chatInviteExported2);
                }
            } else {
                if (this.adminId != getAccountInstance().getUserConfig().clientUserId && this.invites.size() == 0 && tL_messages_exportedChatInvites.invites.size() > 0) {
                    this.invite = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvites.invites.get(0);
                    tL_messages_exportedChatInvites.invites.remove(0);
                }
                for (int i2 = 0; i2 < tL_messages_exportedChatInvites.invites.size(); i2++) {
                    TLRPC.TL_chatInviteExported tL_chatInviteExported3 = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvites.invites.get(i2);
                    fixDate(tL_chatInviteExported3);
                    this.invites.add(tL_chatInviteExported3);
                }
            }
            for (int i3 = 0; i3 < tL_messages_exportedChatInvites.users.size(); i3++) {
                this.users.put(Long.valueOf(((TLRPC.User) tL_messages_exportedChatInvites.users.get(i3)).id), (TLRPC.User) tL_messages_exportedChatInvites.users.get(i3));
            }
            int i4 = this.rowCount;
            if (tL_messages_exportedChatInvites.invites.size() == 0) {
                this.hasMore = false;
            } else {
                this.hasMore = !z ? this.invites.size() + 1 >= tL_messages_exportedChatInvites.count : this.revokedInvites.size() + 1 >= tL_messages_exportedChatInvites.count;
            }
            if (tL_messages_exportedChatInvites.invites.size() <= 0 || !this.isOpened) {
                z2 = true;
            } else {
                RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = this.recyclerItemsEnterAnimator;
                if (recyclerItemsEnterAnimator != null && !this.isPaused) {
                    recyclerItemsEnterAnimator.showItemsAnimated(i4 + 1);
                }
                z2 = false;
            }
            TLRPC.ChatFull chatFull2 = this.info;
            if (chatFull2 != null && !z) {
                chatFull2.invitesCount = tL_messages_exportedChatInvites.count;
                getMessagesStorage().saveChatLinksCount(this.currentChatId, this.info.invitesCount);
            }
        } else {
            this.hasMore = false;
            z2 = false;
        }
        if (this.hasMore || this.loadRevoked || this.adminId != getAccountInstance().getUserConfig().clientUserId) {
            if (this.hasMore || this.loadRevoked) {
                z3 = false;
                if (this.hasMore || this.invites.size() + this.revokedInvites.size() + this.admins.size() >= 5) {
                    resumeDelayedFragmentAnimation();
                }
                if (z3) {
                    loadLinks(false);
                }
                if (!z2 && this.listViewAdapter != null && this.listView.getChildCount() > 0) {
                    updateRecyclerViewAnimated(diffCallbackSaveListState);
                    return;
                }
                updateRows(true);
            }
            this.hasMore = true;
            this.loadRevoked = true;
        } else {
            this.hasMore = true;
            this.loadAdmins = true;
        }
        z3 = true;
        if (this.hasMore) {
            resumeDelayedFragmentAnimation();
        }
        if (z3) {
        }
        if (!z2) {
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinks$4(final TLRPC.TL_chatInviteExported tL_chatInviteExported, final TLRPC.TL_error tL_error, final TLObject tLObject, final boolean z) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLinks$3(tL_chatInviteExported, tL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadLinks$5(TLRPC.TL_chatInviteExported tL_chatInviteExported, final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        TLRPC.TL_chatInviteExported tL_chatInviteExported2;
        if (tL_error == null) {
            TLRPC.TL_messages_exportedChatInvites tL_messages_exportedChatInvites = (TLRPC.TL_messages_exportedChatInvites) tLObject;
            if (tL_messages_exportedChatInvites.invites.size() <= 0 || tL_chatInviteExported == null) {
                tL_chatInviteExported2 = null;
            } else {
                for (int i = 0; i < tL_messages_exportedChatInvites.invites.size(); i++) {
                    if (((TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvites.invites.get(i)).link.equals(tL_chatInviteExported.link)) {
                        tL_chatInviteExported2 = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvites.invites.remove(i);
                        break;
                    }
                }
                tL_chatInviteExported2 = null;
            }
        }
        final TLRPC.TL_chatInviteExported tL_chatInviteExported3 = tL_chatInviteExported2;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLinks$4(tL_chatInviteExported3, tL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLink$15(TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        if (tL_error == null) {
            if (tLObject instanceof TLRPC.TL_messages_exportedChatInviteReplaced) {
                TLRPC.TL_messages_exportedChatInviteReplaced tL_messages_exportedChatInviteReplaced = (TLRPC.TL_messages_exportedChatInviteReplaced) tLObject;
                if (!this.isPublic) {
                    this.invite = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInviteReplaced.new_invite;
                }
                tL_chatInviteExported.revoked = true;
                DiffCallback diffCallbackSaveListState = saveListState();
                if (this.isPublic && this.adminId == getAccountInstance().getUserConfig().getClientUserId()) {
                    this.invites.remove(tL_chatInviteExported);
                    this.invites.add(0, (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInviteReplaced.new_invite);
                } else if (this.invite != null) {
                    this.invite = (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInviteReplaced.new_invite;
                }
                this.revokedInvites.add(0, tL_chatInviteExported);
                updateRecyclerViewAnimated(diffCallbackSaveListState);
            } else {
                this.linkEditActivityCallback.onLinkEdited(tL_chatInviteExported, tLObject);
                TLRPC.ChatFull chatFull = this.info;
                if (chatFull != null) {
                    int i = chatFull.invitesCount - 1;
                    chatFull.invitesCount = i;
                    if (i < 0) {
                        chatFull.invitesCount = 0;
                    }
                    getMessagesStorage().saveChatLinksCount(this.currentChatId, this.info.invitesCount);
                }
            }
            if (getParentActivity() != null) {
                BulletinFactory.of(this).createSimpleBulletin(R.raw.linkbroken, LocaleController.getString(R.string.InviteRevokedHint)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLink$16(final TLRPC.TL_chatInviteExported tL_chatInviteExported, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$revokeLink$15(tL_error, tLObject, tL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokePermanent$11(TLRPC.TL_error tL_error, TLObject tLObject, TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        if (tL_error == null) {
            TLRPC.TL_chatInviteExported tL_chatInviteExported2 = (TLRPC.TL_chatInviteExported) tLObject;
            this.invite = tL_chatInviteExported2;
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null) {
                chatFull.exported_invite = tL_chatInviteExported2;
            }
            if (getParentActivity() == null) {
                return;
            }
            tL_chatInviteExported.revoked = true;
            DiffCallback diffCallbackSaveListState = saveListState();
            this.revokedInvites.add(0, tL_chatInviteExported);
            updateRecyclerViewAnimated(diffCallbackSaveListState);
            BulletinFactory.of(this).createSimpleBulletin(R.raw.linkbroken, LocaleController.getString(R.string.InviteRevokedHint)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokePermanent$12(final TLRPC.TL_chatInviteExported tL_chatInviteExported, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$revokePermanent$11(tL_error, tLObject, tL_chatInviteExported);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadLinks(boolean z) {
        ArrayList arrayList;
        int iSendRequest;
        if (!this.loadAdmins || this.adminsLoaded) {
            TLRPC.TL_messages_getExportedChatInvites tL_messages_getExportedChatInvites = new TLRPC.TL_messages_getExportedChatInvites();
            tL_messages_getExportedChatInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
            long j = this.adminId;
            long clientUserId = getUserConfig().getClientUserId();
            MessagesController messagesController = getMessagesController();
            tL_messages_getExportedChatInvites.admin_id = j == clientUserId ? messagesController.getInputUser(getUserConfig().getCurrentUser()) : messagesController.getInputUser(this.adminId);
            final boolean z2 = this.loadRevoked;
            if (z2) {
                tL_messages_getExportedChatInvites.revoked = true;
                if (!this.revokedInvites.isEmpty()) {
                    tL_messages_getExportedChatInvites.flags |= 4;
                    ArrayList arrayList2 = this.revokedInvites;
                    tL_messages_getExportedChatInvites.offset_link = ((TLRPC.TL_chatInviteExported) arrayList2.get(arrayList2.size() - 1)).link;
                    arrayList = this.revokedInvites;
                    tL_messages_getExportedChatInvites.offset_date = ((TLRPC.TL_chatInviteExported) arrayList.get(arrayList.size() - 1)).date;
                }
                this.linksLoading = true;
                final TLRPC.TL_chatInviteExported tL_chatInviteExported = !this.isPublic ? null : this.invite;
                iSendRequest = getConnectionsManager().sendRequest(tL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadLinks$5(tL_chatInviteExported, z2, tLObject, tL_error);
                    }
                });
            } else {
                if (!this.invites.isEmpty()) {
                    tL_messages_getExportedChatInvites.flags |= 4;
                    ArrayList arrayList3 = this.invites;
                    tL_messages_getExportedChatInvites.offset_link = ((TLRPC.TL_chatInviteExported) arrayList3.get(arrayList3.size() - 1)).link;
                    arrayList = this.invites;
                    tL_messages_getExportedChatInvites.offset_date = ((TLRPC.TL_chatInviteExported) arrayList.get(arrayList.size() - 1)).date;
                }
                this.linksLoading = true;
                if (!this.isPublic) {
                }
                iSendRequest = getConnectionsManager().sendRequest(tL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadLinks$5(tL_chatInviteExported, z2, tLObject, tL_error);
                    }
                });
            }
        } else {
            this.linksLoading = true;
            TLRPC.TL_messages_getAdminsWithInvites tL_messages_getAdminsWithInvites = new TLRPC.TL_messages_getAdminsWithInvites();
            tL_messages_getAdminsWithInvites.peer = getMessagesController().getInputPeer(-this.currentChatId);
            iSendRequest = getConnectionsManager().sendRequest(tL_messages_getAdminsWithInvites, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadLinks$2(tLObject, tL_error);
                }
            });
        }
        getConnectionsManager().bindRequestToGuid(iSendRequest, getClassGuid());
        if (z) {
            updateRows(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokePermanent() {
        if (this.adminId != getAccountInstance().getUserConfig().clientUserId) {
            revokeLink(this.invite);
            return;
        }
        TLRPC.TL_messages_exportChatInvite tL_messages_exportChatInvite = new TLRPC.TL_messages_exportChatInvite();
        tL_messages_exportChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
        tL_messages_exportChatInvite.legacy_revoke_permanent = true;
        final TLRPC.TL_chatInviteExported tL_chatInviteExported = this.invite;
        this.invite = null;
        this.info.exported_invite = null;
        int iSendRequest = getConnectionsManager().sendRequest(tL_messages_exportChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$revokePermanent$12(tL_chatInviteExported, tLObject, tL_error);
            }
        });
        AndroidUtilities.updateVisibleRows(this.listView);
        getConnectionsManager().bindRequestToGuid(iSendRequest, this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DiffCallback saveListState() {
        DiffCallback diffCallback = new DiffCallback();
        diffCallback.fillPositions(diffCallback.oldPositionToItem);
        diffCallback.oldLinksStartRow = this.linksStartRow;
        diffCallback.oldLinksEndRow = this.linksEndRow;
        diffCallback.oldRevokedLinksStartRow = this.revokedLinksStartRow;
        diffCallback.oldRevokedLinksEndRow = this.revokedLinksEndRow;
        diffCallback.oldAdminsStartRow = this.adminsStartRow;
        diffCallback.oldAdminsEndRow = this.adminsEndRow;
        diffCallback.oldRowCount = this.rowCount;
        diffCallback.oldLinks.clear();
        diffCallback.oldLinks.addAll(this.invites);
        diffCallback.oldRevokedLinks.clear();
        diffCallback.oldRevokedLinks.addAll(this.revokedInvites);
        return diffCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRecyclerViewAnimated(DiffCallback diffCallback) {
        if (this.isPaused || this.listViewAdapter == null || this.listView == null) {
            updateRows(true);
            return;
        }
        updateRows(false);
        diffCallback.fillPositions(diffCallback.newPositionToItem);
        DiffUtil.calculateDiff(diffCallback).dispatchUpdatesTo(this.listViewAdapter);
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateRows(boolean z) {
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.currentChatId));
        this.currentChat = chat;
        if (chat == null) {
            return;
        }
        this.creatorRow = -1;
        this.creatorDividerRow = -1;
        this.linksStartRow = -1;
        this.linksEndRow = -1;
        this.linksLoadingRow = -1;
        this.revokedLinksStartRow = -1;
        this.revokedLinksEndRow = -1;
        this.revokedHeader = -1;
        this.revokedDivider = -1;
        this.lastDivider = -1;
        this.revokeAllRow = -1;
        this.revokeAllDivider = -1;
        this.createLinkHelpRow = -1;
        this.helpRow = -1;
        this.createNewLinkRow = -1;
        this.adminsEndRow = -1;
        this.adminsStartRow = -1;
        this.adminsDividerRow = -1;
        this.adminsHeaderRow = -1;
        this.linksHeaderRow = -1;
        this.dividerRow = -1;
        this.linksInfoRow = -1;
        this.rowCount = 0;
        boolean z2 = this.adminId != getAccountInstance().getUserConfig().clientUserId;
        int i = this.rowCount;
        int i2 = i + 1;
        if (z2) {
            this.creatorRow = i;
            this.rowCount = i + 2;
            this.creatorDividerRow = i2;
        } else {
            this.rowCount = i2;
            this.helpRow = i;
        }
        int i3 = this.rowCount;
        this.permanentLinkHeaderRow = i3;
        int i4 = i3 + 2;
        this.rowCount = i4;
        this.permanentLinkRow = i3 + 1;
        if (!z2) {
            this.dividerRow = i4;
            this.rowCount = i3 + 4;
            this.createNewLinkRow = i3 + 3;
        } else if (!this.invites.isEmpty()) {
            int i5 = this.rowCount;
            this.dividerRow = i5;
            this.rowCount = i5 + 2;
            this.linksHeaderRow = i5 + 1;
        }
        if (!this.invites.isEmpty()) {
            int i6 = this.rowCount;
            this.linksStartRow = i6;
            int size = i6 + this.invites.size();
            this.rowCount = size;
            this.linksEndRow = size;
        }
        if (!z2 && this.invites.isEmpty() && this.createNewLinkRow >= 0 && (!this.linksLoading || this.loadAdmins || this.loadRevoked)) {
            int i7 = this.rowCount;
            this.rowCount = i7 + 1;
            this.createLinkHelpRow = i7;
        }
        if (!z2 && this.admins.size() > 0) {
            if ((!this.invites.isEmpty() || this.createNewLinkRow >= 0) && this.createLinkHelpRow == -1) {
                int i8 = this.rowCount;
                this.rowCount = i8 + 1;
                this.adminsDividerRow = i8;
            }
            int i9 = this.rowCount;
            int i10 = i9 + 1;
            this.rowCount = i10;
            this.adminsHeaderRow = i9;
            this.adminsStartRow = i10;
            int size2 = i10 + this.admins.size();
            this.rowCount = size2;
            this.adminsEndRow = size2;
        }
        if (!this.revokedInvites.isEmpty()) {
            if (this.adminsStartRow >= 0 || (((!this.invites.isEmpty() || this.createNewLinkRow >= 0) && this.createLinkHelpRow == -1) || (z2 && this.linksStartRow == -1))) {
                int i11 = this.rowCount;
                this.rowCount = i11 + 1;
                this.revokedDivider = i11;
            }
            int i12 = this.rowCount;
            int i13 = i12 + 1;
            this.rowCount = i13;
            this.revokedHeader = i12;
            this.revokedLinksStartRow = i13;
            int size3 = i13 + this.revokedInvites.size();
            this.revokedLinksEndRow = size3;
            this.revokeAllDivider = size3;
            this.rowCount = size3 + 2;
            this.revokeAllRow = size3 + 1;
        }
        if (!this.loadAdmins && !this.loadRevoked && ((this.linksLoading || this.hasMore) && !z2)) {
            int i14 = this.rowCount;
            this.rowCount = i14 + 1;
            this.linksLoadingRow = i14;
        }
        if (!this.invites.isEmpty()) {
            int i15 = this.linksEndRow;
            int i16 = this.rowCount;
            if (i15 == i16) {
                this.rowCount = i16 + 1;
                this.linksInfoRow = i16;
            } else if (!this.invites.isEmpty() || !this.revokedInvites.isEmpty()) {
                int i17 = this.rowCount;
                this.rowCount = i17 + 1;
                this.lastDivider = i17;
            }
        }
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter == null || !z) {
            return;
        }
        listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(R.string.InviteLinks));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ManageLinksActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ManageLinksActivity.this.lambda$onBackPressed$354();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.ManageLinksActivity.3
            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                AndroidUtilities.runOnUIThread(ManageLinksActivity.this.updateTimerRunnable, 500L);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                AndroidUtilities.cancelRunOnUIThread(ManageLinksActivity.this.updateTimerRunnable);
            }
        };
        this.fragmentView = frameLayout;
        int i = Theme.key_windowBackgroundGray;
        frameLayout.setBackgroundColor(Theme.getColor(i));
        this.fragmentView.setTag(Integer.valueOf(i));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        this.listView = new RecyclerListView(context);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false) { // from class: org.telegram.ui.ManageLinksActivity.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.listView.setLayoutManager(linearLayoutManager);
        RecyclerListView recyclerListView = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listViewAdapter = listAdapter;
        recyclerListView.setAdapter(listAdapter);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ManageLinksActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                super.onScrolled(recyclerView, i2, i3);
                ManageLinksActivity manageLinksActivity = ManageLinksActivity.this;
                if (!manageLinksActivity.hasMore || manageLinksActivity.linksLoading) {
                    return;
                }
                if (ManageLinksActivity.this.rowCount - linearLayoutManager.findLastVisibleItemPosition() < 10) {
                    ManageLinksActivity.this.loadLinks(true);
                }
            }
        });
        this.recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.listView, false);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(420L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$9(context, view, i2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$createView$10(view, i2);
            }
        });
        this.linkIcon = ContextCompat.getDrawable(context, R.drawable.msg_link_1);
        this.linkIconRevoked = ContextCompat.getDrawable(context, R.drawable.msg_link_2);
        this.linkIconRevenue = ContextCompat.getDrawable(context, R.drawable.large_income);
        this.linkIcon.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        updateRows(true);
        this.timeDif = getConnectionsManager().getCurrentTime() - (System.currentTimeMillis() / 1000);
        return this.fragmentView;
    }

    public void deleteLink(final TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        TLRPC.TL_messages_deleteExportedChatInvite tL_messages_deleteExportedChatInvite = new TLRPC.TL_messages_deleteExportedChatInvite();
        tL_messages_deleteExportedChatInvite.link = tL_chatInviteExported.link;
        tL_messages_deleteExportedChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
        getConnectionsManager().sendRequest(tL_messages_deleteExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteLink$14(tL_chatInviteExported, tLObject, tL_error);
            }
        });
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.dialogDeleted && ((Long) objArr[0]).longValue() == (-this.currentChatId)) {
            INavigationLayout iNavigationLayout = this.parentLayout;
            if (iNavigationLayout == null || iNavigationLayout.getLastFragment() != this) {
                removeSelfFromStack();
            } else {
                lambda$onBackPressed$354();
            }
        }
    }

    public void editLink(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        LinkEditActivity linkEditActivity = new LinkEditActivity(1, this.currentChatId);
        linkEditActivity.setCallback(this.linkEditActivityCallback);
        linkEditActivity.setInviteToEdit(tL_chatInviteExported);
        presentFragment(linkEditActivity);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fixDate(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        boolean z;
        if (tL_chatInviteExported.expire_date > 0) {
            z = getConnectionsManager().getCurrentTime() >= tL_chatInviteExported.expire_date;
        } else {
            int i = tL_chatInviteExported.usage_limit;
            if (i <= 0) {
                return;
            } else {
                if (tL_chatInviteExported.usage >= i) {
                }
            }
        }
        tL_chatInviteExported.expired = z;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$17();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, CreationTextCell.class, LinkActionView.class, LinkCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, i));
        ActionBar actionBar = this.actionBar;
        int i2 = ThemeDescription.FLAG_BACKGROUND;
        int i3 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i2, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{ManageChatUserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HintInnerCell.class}, new String[]{"messageTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_message));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_unreadCounterMuted));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{ManageChatTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{CreationTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{CreationTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{CreationTextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LinkCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LinkCell.class}, new String[]{"subtitleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{LinkCell.class}, new String[]{"optionsView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menu));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.dialogDeleted);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.dialogDeleted);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        InviteLinkBottomSheet inviteLinkBottomSheet;
        super.onTransitionAnimationEnd(z, z2);
        if (z) {
            this.isOpened = true;
            if (z2 && (inviteLinkBottomSheet = this.inviteLinkBottomSheet) != null && inviteLinkBottomSheet.isNeedReopen) {
                inviteLinkBottomSheet.show();
            }
        }
        this.notificationsLocker.unlock();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        super.onTransitionAnimationStart(z, z2);
        this.notificationsLocker.lock();
    }

    public void revokeLink(final TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        TLRPC.TL_messages_editExportedChatInvite tL_messages_editExportedChatInvite = new TLRPC.TL_messages_editExportedChatInvite();
        tL_messages_editExportedChatInvite.link = tL_chatInviteExported.link;
        tL_messages_editExportedChatInvite.revoked = true;
        tL_messages_editExportedChatInvite.peer = getMessagesController().getInputPeer(-this.currentChatId);
        getConnectionsManager().sendRequest(tL_messages_editExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ManageLinksActivity$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$revokeLink$16(tL_chatInviteExported, tLObject, tL_error);
            }
        });
    }

    public void setInfo(TLRPC.ChatFull chatFull, TLRPC.ExportedChatInvite exportedChatInvite) {
        this.info = chatFull;
        this.invite = (TLRPC.TL_chatInviteExported) exportedChatInvite;
        this.isPublic = ChatObject.isPublic(this.currentChat);
        loadLinks(true);
    }
}

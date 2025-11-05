package org.telegram.ui.Stars;

import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_payments$connectedBotStarRef;
import org.telegram.tgnet.tl.TL_payments$connectedStarRefBots;
import org.telegram.tgnet.tl.TL_payments$getConnectedStarRefBot;
import org.telegram.tgnet.tl.TL_payments$getConnectedStarRefBots;
import org.telegram.tgnet.tl.TL_payments$getSuggestedStarRefBots;
import org.telegram.tgnet.tl.TL_payments$starRefProgram;
import org.telegram.tgnet.tl.TL_payments$suggestedStarRefBots;
import org.telegram.tgnet.tl.TL_stars$StarsAmount;
import org.telegram.tgnet.tl.TL_stars$StarsStatus;
import org.telegram.tgnet.tl.TL_stars$TL_payments_getStarsTransactions;
import org.telegram.tgnet.tl.TL_stars$TL_starsTonAmount;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChannelMonetizationLayout;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class BotStarsController {
    private static volatile BotStarsController[] Instance = new BotStarsController[4];
    private static final Object[] lockObjects = new Object[4];
    public ArrayList adminedBots;
    public ArrayList adminedChannels;
    public final int currentAccount;
    private boolean loadingAdminedBots;
    private boolean loadingAdminedChannels;
    private final HashMap lastLoadedBotStarsStats = new HashMap();
    private final HashMap botStarsStats = new HashMap();
    private final HashMap lastLoadedTonStats = new HashMap();
    private final HashMap tonStats = new HashMap();
    private final HashMap transactions = new HashMap();
    private final HashMap connectedBots = new HashMap();
    private final HashMap suggestedBots = new HashMap();

    public static class ChannelConnectedBots {
        public int count;
        public final int currentAccount;
        public final long dialogId;
        public boolean endReached;
        public long lastRequestTime;
        private int reqId;
        public final ArrayList bots = new ArrayList();
        private boolean loading = false;
        private boolean error = false;

        public ChannelConnectedBots(int i, long j) {
            this.currentAccount = i;
            this.dialogId = j;
            check();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(TLObject tLObject) {
            this.reqId = 0;
            if (tLObject instanceof TL_payments$connectedStarRefBots) {
                TL_payments$connectedStarRefBots tL_payments$connectedStarRefBots = (TL_payments$connectedStarRefBots) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(tL_payments$connectedStarRefBots.users, false);
                if (this.count <= 0) {
                    this.bots.clear();
                }
                this.count = tL_payments$connectedStarRefBots.count;
                this.bots.addAll(tL_payments$connectedStarRefBots.connected_bots);
                this.endReached = tL_payments$connectedStarRefBots.connected_bots.isEmpty() || this.bots.size() >= this.count;
            } else {
                this.error = true;
                this.endReached = true;
            }
            this.loading = false;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelConnectedBotsUpdate, Long.valueOf(this.dialogId));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(tLObject);
                }
            });
        }

        public void apply(TL_payments$connectedStarRefBots tL_payments$connectedStarRefBots) {
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments$connectedStarRefBots.users, false);
            clear();
            this.bots.clear();
            cancel();
            this.count = tL_payments$connectedStarRefBots.count;
            this.bots.addAll(tL_payments$connectedStarRefBots.connected_bots);
            this.endReached = tL_payments$connectedStarRefBots.connected_bots.isEmpty() || this.bots.size() >= this.count;
            this.error = false;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelConnectedBotsUpdate, Long.valueOf(this.dialogId));
            load();
        }

        public void applyEdit(TL_payments$connectedStarRefBots tL_payments$connectedStarRefBots) {
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments$connectedStarRefBots.users, false);
            for (int i = 0; i < tL_payments$connectedStarRefBots.connected_bots.size(); i++) {
                TL_payments$connectedBotStarRef tL_payments$connectedBotStarRef = (TL_payments$connectedBotStarRef) tL_payments$connectedStarRefBots.connected_bots.get(i);
                int i2 = 0;
                while (true) {
                    if (i2 >= this.bots.size()) {
                        break;
                    }
                    if (((TL_payments$connectedBotStarRef) this.bots.get(i2)).bot_id != tL_payments$connectedBotStarRef.bot_id) {
                        i2++;
                    } else if (tL_payments$connectedBotStarRef.revoked) {
                        this.bots.remove(i2);
                        this.count = Math.max(this.count - 1, 0);
                    } else {
                        this.bots.set(i2, tL_payments$connectedBotStarRef);
                    }
                }
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelConnectedBotsUpdate, Long.valueOf(this.dialogId));
            load();
        }

        public void cancel() {
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            this.loading = false;
        }

        public void check() {
            if (System.currentTimeMillis() - this.lastRequestTime > 900000) {
                clear();
                cancel();
                load();
            }
        }

        public void clear() {
            this.count = 0;
            this.error = false;
            this.endReached = false;
        }

        public boolean isLoading() {
            return this.loading;
        }

        public void load() {
            if (this.loading || this.error || this.endReached) {
                return;
            }
            this.lastRequestTime = System.currentTimeMillis();
            this.loading = true;
            TL_payments$getConnectedStarRefBots tL_payments$getConnectedStarRefBots = new TL_payments$getConnectedStarRefBots();
            tL_payments$getConnectedStarRefBots.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_payments$getConnectedStarRefBots.limit = 20;
            if (!this.bots.isEmpty()) {
                ArrayList arrayList = this.bots;
                TL_payments$connectedBotStarRef tL_payments$connectedBotStarRef = (TL_payments$connectedBotStarRef) arrayList.get(arrayList.size() - 1);
                tL_payments$getConnectedStarRefBots.flags |= 4;
                tL_payments$getConnectedStarRefBots.offset_date = tL_payments$connectedBotStarRef.date;
                tL_payments$getConnectedStarRefBots.offset_link = tL_payments$connectedBotStarRef.url;
            }
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments$getConnectedStarRefBots, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$ChannelConnectedBots$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$1(tLObject, tL_error);
                }
            });
        }
    }

    public static class ChannelSuggestedBots {
        public int count;
        public final int currentAccount;
        public final long dialogId;
        public boolean endReached;
        public long lastRequestTime;
        private int reqId;
        public final ArrayList bots = new ArrayList();
        private Sort sorting = Sort.BY_PROFITABILITY;
        private boolean loading = false;
        private boolean error = false;
        private String lastOffset = null;

        public enum Sort {
            BY_PROFITABILITY,
            BY_REVENUE,
            BY_DATE
        }

        public ChannelSuggestedBots(int i, long j) {
            this.currentAccount = i;
            this.dialogId = j;
            check();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(TLObject tLObject) {
            if (tLObject instanceof TL_payments$suggestedStarRefBots) {
                TL_payments$suggestedStarRefBots tL_payments$suggestedStarRefBots = (TL_payments$suggestedStarRefBots) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(tL_payments$suggestedStarRefBots.users, false);
                if (this.count <= 0) {
                    this.bots.clear();
                }
                this.count = tL_payments$suggestedStarRefBots.count;
                this.bots.addAll(tL_payments$suggestedStarRefBots.suggested_bots);
                this.lastOffset = tL_payments$suggestedStarRefBots.next_offset;
                this.endReached = tL_payments$suggestedStarRefBots.suggested_bots.isEmpty() || this.bots.size() >= this.count;
            } else {
                this.error = true;
                this.endReached = true;
            }
            this.loading = false;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelSuggestedBotsUpdate, Long.valueOf(this.dialogId));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(tLObject);
                }
            });
        }

        public void cancel() {
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            this.loading = false;
        }

        public void check() {
            if (System.currentTimeMillis() - this.lastRequestTime > 900000) {
                clear();
                cancel();
                load();
            }
        }

        public void clear() {
            this.count = 0;
            this.endReached = false;
            this.error = false;
            this.lastRequestTime = 0L;
            this.lastOffset = null;
        }

        public Sort getSort() {
            return this.sorting;
        }

        public boolean isLoading() {
            return this.loading;
        }

        public void load() {
            if (this.loading || this.error || this.endReached) {
                return;
            }
            this.lastRequestTime = System.currentTimeMillis();
            this.loading = true;
            TL_payments$getSuggestedStarRefBots tL_payments$getSuggestedStarRefBots = new TL_payments$getSuggestedStarRefBots();
            tL_payments$getSuggestedStarRefBots.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_payments$getSuggestedStarRefBots.limit = 20;
            Sort sort = this.sorting;
            tL_payments$getSuggestedStarRefBots.order_by_date = sort == Sort.BY_DATE;
            tL_payments$getSuggestedStarRefBots.order_by_revenue = sort == Sort.BY_REVENUE;
            tL_payments$getSuggestedStarRefBots.offset = !TextUtils.isEmpty(this.lastOffset) ? this.lastOffset : "";
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments$getSuggestedStarRefBots, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$ChannelSuggestedBots$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$1(tLObject, tL_error);
                }
            });
        }

        public void reload() {
            clear();
            cancel();
            load();
        }

        public void remove(long j) {
            for (int i = 0; i < this.bots.size(); i++) {
                if (((TL_payments$starRefProgram) this.bots.get(i)).bot_id == j) {
                    this.bots.remove(i);
                    this.count--;
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelSuggestedBotsUpdate, Long.valueOf(this.dialogId));
                    return;
                }
            }
        }

        public void setSort(Sort sort) {
            if (this.sorting != sort) {
                this.sorting = sort;
                reload();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TransactionsState {
        private final boolean[] endReached;
        private final boolean[] loading;
        private final String[] offset;
        public final ArrayList[] transactions;
        public final boolean[] transactionsExist;

        private TransactionsState() {
            this.transactions = new ArrayList[]{new ArrayList(), new ArrayList(), new ArrayList()};
            this.transactionsExist = new boolean[3];
            this.offset = new String[3];
            this.loading = new boolean[3];
            this.endReached = new boolean[3];
        }
    }

    static {
        for (int i = 0; i < 4; i++) {
            lockObjects[i] = new Object();
        }
    }

    private BotStarsController(int i) {
        this.currentAccount = i;
    }

    public static BotStarsController getInstance(int i) {
        BotStarsController botStarsController = Instance[i];
        if (botStarsController == null) {
            synchronized (lockObjects[i]) {
                try {
                    botStarsController = Instance[i];
                    if (botStarsController == null) {
                        BotStarsController[] botStarsControllerArr = Instance;
                        BotStarsController botStarsController2 = new BotStarsController(i);
                        botStarsControllerArr[i] = botStarsController2;
                        botStarsController = botStarsController2;
                    }
                } finally {
                }
            }
        }
        return botStarsController;
    }

    private TransactionsState getTransactionsState(long j) {
        TransactionsState transactionsState = (TransactionsState) this.transactions.get(Long.valueOf(j));
        if (transactionsState != null) {
            return transactionsState;
        }
        HashMap map = this.transactions;
        Long lValueOf = Long.valueOf(j);
        TransactionsState transactionsState2 = new TransactionsState();
        map.put(lValueOf, transactionsState2);
        return transactionsState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getConnectedBot$10(AlertDialog alertDialog, TLObject tLObject, long j, Utilities.Callback callback) {
        TL_payments$connectedBotStarRef tL_payments$connectedBotStarRef;
        alertDialog.dismiss();
        if (tLObject instanceof TL_payments$connectedStarRefBots) {
            TL_payments$connectedStarRefBots tL_payments$connectedStarRefBots = (TL_payments$connectedStarRefBots) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments$connectedStarRefBots.users, false);
            for (int i = 0; i < tL_payments$connectedStarRefBots.connected_bots.size(); i++) {
                if (((TL_payments$connectedBotStarRef) tL_payments$connectedStarRefBots.connected_bots.get(i)).bot_id == j && !((TL_payments$connectedBotStarRef) tL_payments$connectedStarRefBots.connected_bots.get(i)).revoked) {
                    tL_payments$connectedBotStarRef = (TL_payments$connectedBotStarRef) tL_payments$connectedStarRefBots.connected_bots.get(i);
                    break;
                }
            }
            tL_payments$connectedBotStarRef = null;
        } else {
            tL_payments$connectedBotStarRef = null;
        }
        callback.run(tL_payments$connectedBotStarRef);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getConnectedBot$11(final AlertDialog alertDialog, final long j, final Utilities.Callback callback, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getConnectedBot$10(alertDialog, tLObject, j, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getConnectedBot$12(int i, DialogInterface dialogInterface) {
        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStarsRevenueStats$0(TLObject tLObject, long j) {
        if (tLObject instanceof TLRPC.TL_payments_starsRevenueStats) {
            this.botStarsStats.put(Long.valueOf(j), (TLRPC.TL_payments_starsRevenueStats) tLObject);
        } else {
            this.botStarsStats.put(Long.valueOf(j), null);
        }
        this.lastLoadedBotStarsStats.put(Long.valueOf(j), Long.valueOf(System.currentTimeMillis()));
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botStarsUpdated, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStarsRevenueStats$1(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getStarsRevenueStats$0(tLObject, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTONRevenueStats$2(TLObject tLObject, long j) {
        if (tLObject instanceof TLRPC.TL_payments_starsRevenueStats) {
            this.tonStats.put(Long.valueOf(j), (TLRPC.TL_payments_starsRevenueStats) tLObject);
        } else {
            this.tonStats.put(Long.valueOf(j), null);
        }
        this.lastLoadedTonStats.put(Long.valueOf(j), Long.valueOf(System.currentTimeMillis()));
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botStarsUpdated, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTONRevenueStats$3(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getTONRevenueStats$2(tLObject, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedBots$6(TLObject tLObject) {
        this.adminedBots = new ArrayList();
        this.loadingAdminedBots = false;
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            for (int i = 0; i < vector.objects.size(); i++) {
                this.adminedBots.add((TLRPC.User) vector.objects.get(i));
            }
            MessagesController.getInstance(this.currentAccount).putUsers(this.adminedBots, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedBots$7(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdminedBots$6(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$8(TLObject tLObject) {
        this.adminedChannels = new ArrayList();
        this.loadingAdminedChannels = false;
        if (tLObject instanceof TLRPC.messages_Chats) {
            TLRPC.messages_Chats messages_chats = (TLRPC.messages_Chats) tLObject;
            MessagesController.getInstance(this.currentAccount).putChats(messages_chats.chats, false);
            this.adminedChannels.addAll(messages_chats.chats);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.adminedChannelsLoaded, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$9(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdminedChannels$8(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTransactions$4(TransactionsState transactionsState, int i, TLObject tLObject, long j) {
        transactionsState.loading[i] = false;
        if (tLObject instanceof TL_stars$StarsStatus) {
            TL_stars$StarsStatus tL_stars$StarsStatus = (TL_stars$StarsStatus) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_stars$StarsStatus.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_stars$StarsStatus.chats, false);
            transactionsState.transactions[i].addAll(tL_stars$StarsStatus.history);
            transactionsState.transactionsExist[i] = !transactionsState.transactions[i].isEmpty() || transactionsState.transactionsExist[i];
            transactionsState.endReached[i] = (tL_stars$StarsStatus.flags & 1) == 0;
            transactionsState.offset[i] = transactionsState.endReached[i] ? null : tL_stars$StarsStatus.next_offset;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botStarsTransactionsLoaded, Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTransactions$5(final TransactionsState transactionsState, final int i, final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadTransactions$4(transactionsState, i, tLObject, j);
            }
        });
    }

    public boolean botHasStars(long j) {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        TLRPC.TL_payments_starsRevenueStats starsRevenueStats = getStarsRevenueStats(j);
        return (starsRevenueStats == null || (tL_starsRevenueStatus = starsRevenueStats.status) == null || (tL_starsRevenueStatus.available_balance.amount <= 0 && tL_starsRevenueStatus.overall_revenue.amount <= 0 && tL_starsRevenueStatus.current_balance.amount <= 0)) ? false : true;
    }

    public boolean botHasTON(long j) {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        TLRPC.TL_payments_starsRevenueStats tONRevenueStats = getTONRevenueStats(j, false);
        if (tONRevenueStats == null || (tL_starsRevenueStatus = tONRevenueStats.status) == null) {
            return false;
        }
        return tL_starsRevenueStatus.current_balance.amount > 0 || tL_starsRevenueStatus.available_balance.amount > 0 || tL_starsRevenueStatus.overall_revenue.amount > 0;
    }

    public boolean didFullyLoadTransactions(long j, int i) {
        return getTransactionsState(j).endReached[i];
    }

    public ArrayList getAdmined() {
        loadAdminedBots();
        loadAdminedChannels();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.adminedBots;
        if (arrayList2 != null) {
            arrayList.addAll(arrayList2);
        }
        ArrayList arrayList3 = this.adminedChannels;
        if (arrayList3 != null) {
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }

    public ArrayList getAdminedChannels() {
        loadAdminedChannels();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.adminedChannels;
        if (arrayList2 != null) {
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public long getAvailableBalance(long j) {
        TLRPC.TL_payments_starsRevenueStats starsRevenueStats = getStarsRevenueStats(j);
        if (starsRevenueStats == null) {
            return 0L;
        }
        return starsRevenueStats.status.available_balance.amount;
    }

    public TL_stars$StarsAmount getBotStarsBalance(long j) {
        TLRPC.TL_payments_starsRevenueStats starsRevenueStats = getStarsRevenueStats(j);
        return starsRevenueStats == null ? TL_stars$StarsAmount.ofStars(0L) : starsRevenueStats.status.current_balance;
    }

    public ChannelConnectedBots getChannelConnectedBots(long j) {
        ChannelConnectedBots channelConnectedBots = (ChannelConnectedBots) this.connectedBots.get(Long.valueOf(j));
        if (channelConnectedBots != null) {
            return channelConnectedBots;
        }
        HashMap map = this.connectedBots;
        Long lValueOf = Long.valueOf(j);
        ChannelConnectedBots channelConnectedBots2 = new ChannelConnectedBots(this.currentAccount, j);
        map.put(lValueOf, channelConnectedBots2);
        return channelConnectedBots2;
    }

    public ChannelSuggestedBots getChannelSuggestedBots(long j) {
        ChannelSuggestedBots channelSuggestedBots = (ChannelSuggestedBots) this.suggestedBots.get(Long.valueOf(j));
        if (channelSuggestedBots != null) {
            return channelSuggestedBots;
        }
        HashMap map = this.suggestedBots;
        Long lValueOf = Long.valueOf(j);
        ChannelSuggestedBots channelSuggestedBots2 = new ChannelSuggestedBots(this.currentAccount, j);
        map.put(lValueOf, channelSuggestedBots2);
        return channelSuggestedBots2;
    }

    public void getConnectedBot(Context context, long j, final long j2, final Utilities.Callback callback) {
        if (callback == null) {
            return;
        }
        ChannelConnectedBots channelConnectedBots = (ChannelConnectedBots) this.connectedBots.get(Long.valueOf(j));
        if (channelConnectedBots != null) {
            for (int i = 0; i < channelConnectedBots.bots.size(); i++) {
                if (!((TL_payments$connectedBotStarRef) channelConnectedBots.bots.get(i)).revoked && ((TL_payments$connectedBotStarRef) channelConnectedBots.bots.get(i)).bot_id == j2) {
                    callback.run((TL_payments$connectedBotStarRef) channelConnectedBots.bots.get(i));
                    return;
                }
            }
        }
        final AlertDialog alertDialog = new AlertDialog(context, 3);
        TL_payments$getConnectedStarRefBot tL_payments$getConnectedStarRefBot = new TL_payments$getConnectedStarRefBot();
        tL_payments$getConnectedStarRefBot.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_payments$getConnectedStarRefBot.bot = MessagesController.getInstance(this.currentAccount).getInputUser(j2);
        final int iSendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments$getConnectedStarRefBot, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getConnectedBot$11(alertDialog, j2, callback, tLObject, tL_error);
            }
        });
        alertDialog.setCanCancel(true);
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.lambda$getConnectedBot$12(iSendRequest, dialogInterface);
            }
        });
        alertDialog.showDelayed(200L);
    }

    public TLRPC.TL_payments_starsRevenueStats getStarsRevenueStats(long j) {
        return getStarsRevenueStats(j, false);
    }

    public TLRPC.TL_payments_starsRevenueStats getStarsRevenueStats(final long j, boolean z) {
        Long l = (Long) this.lastLoadedBotStarsStats.get(Long.valueOf(j));
        TLRPC.TL_payments_starsRevenueStats tL_payments_starsRevenueStats = (TLRPC.TL_payments_starsRevenueStats) this.botStarsStats.get(Long.valueOf(j));
        if (l == null || System.currentTimeMillis() - l.longValue() > 300000 || z) {
            TLRPC.TL_payments_getStarsRevenueStats tL_payments_getStarsRevenueStats = new TLRPC.TL_payments_getStarsRevenueStats();
            tL_payments_getStarsRevenueStats.dark = Theme.isCurrentThemeDark();
            tL_payments_getStarsRevenueStats.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getStarsRevenueStats, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$getStarsRevenueStats$1(j, tLObject, tL_error);
                }
            });
        }
        return tL_payments_starsRevenueStats;
    }

    public long getTONBalance(long j) {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        TL_stars$StarsAmount tL_stars$StarsAmount;
        TLRPC.TL_payments_starsRevenueStats tONRevenueStats = getTONRevenueStats(j, false);
        if (tONRevenueStats == null || (tL_starsRevenueStatus = tONRevenueStats.status) == null || (tL_stars$StarsAmount = tL_starsRevenueStatus.current_balance) == null) {
            return 0L;
        }
        return tL_stars$StarsAmount.amount;
    }

    public TLRPC.TL_payments_starsRevenueStats getTONRevenueStats(final long j, boolean z) {
        Long l = (Long) this.lastLoadedTonStats.get(Long.valueOf(j));
        TLRPC.TL_payments_starsRevenueStats tL_payments_starsRevenueStats = (TLRPC.TL_payments_starsRevenueStats) this.tonStats.get(Long.valueOf(j));
        if (l == null || System.currentTimeMillis() - l.longValue() > 300000 || z) {
            TLRPC.TL_payments_getStarsRevenueStats tL_payments_getStarsRevenueStats = new TLRPC.TL_payments_getStarsRevenueStats();
            tL_payments_getStarsRevenueStats.ton = true;
            tL_payments_getStarsRevenueStats.dark = Theme.isCurrentThemeDark();
            tL_payments_getStarsRevenueStats.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getStarsRevenueStats, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$getTONRevenueStats$3(j, tLObject, tL_error);
                }
            }, null, null, 0, chatFull != null ? chatFull.stats_dc : Integer.MAX_VALUE, 1, true);
        }
        return tL_payments_starsRevenueStats;
    }

    public ArrayList getTransactions(long j, int i) {
        return getTransactionsState(j).transactions[i];
    }

    public boolean hasTransactions(long j) {
        return hasTransactions(j, 0);
    }

    public boolean hasTransactions(long j, int i) {
        return !getTransactionsState(j).transactions[i].isEmpty();
    }

    public void invalidateStarsBalance(long j) {
        getStarsRevenueStats(j, true);
    }

    public void invalidateTransactions(long j, boolean z) {
        TransactionsState transactionsState = getTransactionsState(j);
        for (int i = 0; i < 3; i++) {
            if (!transactionsState.loading[i]) {
                transactionsState.transactions[i].clear();
                transactionsState.offset[i] = null;
                transactionsState.loading[i] = false;
                transactionsState.endReached[i] = false;
                if (z) {
                    loadTransactions(j, i);
                }
            }
        }
    }

    public boolean isStarsBalanceAvailable(long j) {
        return getStarsRevenueStats(j) != null;
    }

    public boolean isTONBalanceAvailable(long j) {
        return getTONRevenueStats(j, false) != null;
    }

    public void loadAdminedBots() {
        if (this.loadingAdminedBots || this.adminedBots != null) {
            return;
        }
        this.loadingAdminedBots = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.tl.TL_bots$getAdminedBots
            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
                return Vector.TLDeserialize(inputSerializedData, i, z, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1());
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(OutputSerializedData outputSerializedData) {
                outputSerializedData.writeInt32(-1334764157);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdminedBots$7(tLObject, tL_error);
            }
        });
    }

    public void loadAdminedChannels() {
        if (this.loadingAdminedChannels || this.adminedChannels != null) {
            return;
        }
        this.loadingAdminedChannels = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdminedChannels$9(tLObject, tL_error);
            }
        });
    }

    public void loadTransactions(final long j, final int i) {
        final TransactionsState transactionsState = getTransactionsState(j);
        if (transactionsState.loading[i] || transactionsState.endReached[i]) {
            return;
        }
        transactionsState.loading[i] = true;
        TL_stars$TL_payments_getStarsTransactions tL_stars$TL_payments_getStarsTransactions = new TL_stars$TL_payments_getStarsTransactions();
        tL_stars$TL_payments_getStarsTransactions.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stars$TL_payments_getStarsTransactions.inbound = i == 1;
        tL_stars$TL_payments_getStarsTransactions.outbound = i == 2;
        String str = transactionsState.offset[i];
        tL_stars$TL_payments_getStarsTransactions.offset = str;
        if (str == null) {
            tL_stars$TL_payments_getStarsTransactions.offset = "";
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stars$TL_payments_getStarsTransactions, new RequestDelegate() { // from class: org.telegram.ui.Stars.BotStarsController$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadTransactions$5(transactionsState, i, j, tLObject, tL_error);
            }
        });
    }

    public void onUpdate(TLRPC.TL_updateStarsRevenueStatus tL_updateStarsRevenueStatus) {
        if (tL_updateStarsRevenueStatus == null) {
            return;
        }
        long peerDialogId = DialogObject.getPeerDialogId(tL_updateStarsRevenueStatus.peer);
        if (peerDialogId >= 0) {
            TLRPC.TL_payments_starsRevenueStats starsRevenueStats = getStarsRevenueStats(peerDialogId, true);
            if (starsRevenueStats != null) {
                starsRevenueStats.status = tL_updateStarsRevenueStatus.status;
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.botStarsUpdated, Long.valueOf(peerDialogId));
            }
            invalidateTransactions(peerDialogId, true);
            return;
        }
        ChannelMonetizationLayout channelMonetizationLayout = ChannelMonetizationLayout.instance;
        if (channelMonetizationLayout == null || channelMonetizationLayout.dialogId != DialogObject.getPeerDialogId(tL_updateStarsRevenueStatus.peer)) {
            return;
        }
        ChannelMonetizationLayout channelMonetizationLayout2 = ChannelMonetizationLayout.instance;
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus = tL_updateStarsRevenueStatus.status;
        channelMonetizationLayout2.setupBalances(tL_starsRevenueStatus.current_balance instanceof TL_stars$TL_starsTonAmount, tL_starsRevenueStatus);
        ChannelMonetizationLayout.instance.reloadTransactions();
    }

    public void preloadStarsStats(long j) {
        Long l = (Long) this.lastLoadedBotStarsStats.get(Long.valueOf(j));
        getStarsRevenueStats(j, l == null || System.currentTimeMillis() - l.longValue() > 30000);
    }

    public void preloadTonStats(long j) {
        Long l = (Long) this.lastLoadedTonStats.get(Long.valueOf(j));
        getTONRevenueStats(j, l == null || System.currentTimeMillis() - l.longValue() > 30000);
    }
}

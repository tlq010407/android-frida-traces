package org.telegram.messenger;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.SavedMessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.LaunchActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SavedMessagesController {
    public ArrayList<SavedDialog> allDialogs;
    private ArrayList<SavedDialog> cachedDialogs;
    private final LongSparseArray checkMessagesCallbacks;
    private final int currentAccount;
    private int dialogsCount;
    private int dialogsCountHidden;
    public boolean dialogsEndReached;
    private boolean dialogsLoaded;
    private boolean dialogsLoading;
    private final long forumDialogId;
    private boolean loadedCache;
    private ArrayList<SavedDialog> loadedDialogs;
    private boolean loadingCache;
    private boolean loadingCacheOnly;
    private final Runnable saveCacheRunnable;
    private boolean saving;
    public boolean unsupported;

    public static class SavedDialog {
        public long dialogId;
        private int lastDate;
        private int localDate;
        public MessageObject message;
        public int messagesCount;
        public boolean messagesCountLoaded;
        public boolean pinned;
        private int pinnedOrder;
        public long readInboxMaxId;
        public long readOutboxMaxId;
        public int top_message_id;
        public long unreadCount;

        public static SavedDialog fromMessage(int i, TLRPC.Message message, boolean z) {
            SavedDialog savedDialog = new SavedDialog();
            savedDialog.dialogId = MessageObject.getSavedDialogId(UserConfig.getInstance(i).getClientUserId(), message);
            savedDialog.pinned = false;
            savedDialog.top_message_id = message.id;
            savedDialog.message = new MessageObject(i, message, null, null, null, null, null, false, false, 0L, false, false, z);
            return savedDialog;
        }

        public static SavedDialog fromTL(int i, TLRPC.savedDialog saveddialog, ArrayList<TLRPC.Message> arrayList, boolean z) {
            TLRPC.Message message;
            SavedDialog savedDialog = new SavedDialog();
            savedDialog.dialogId = DialogObject.getPeerDialogId(saveddialog.peer);
            savedDialog.pinned = saveddialog.pinned;
            savedDialog.top_message_id = saveddialog.top_message;
            savedDialog.unreadCount = saveddialog.unread_count;
            savedDialog.readInboxMaxId = saveddialog.read_inbox_max_id;
            savedDialog.readOutboxMaxId = saveddialog.read_outbox_max_id;
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    message = null;
                    break;
                }
                message = arrayList.get(i2);
                if (savedDialog.top_message_id == message.id) {
                    break;
                }
                i2++;
            }
            TLRPC.Message message2 = message;
            if (message2 != null) {
                savedDialog.message = new MessageObject(i, message2, null, null, null, null, null, false, false, 0L, false, false, z);
            }
            return savedDialog;
        }

        private int getDateInternal() {
            TLRPC.Message message;
            MessageObject messageObject = this.message;
            return (messageObject == null || (message = messageObject.messageOwner) == null) ? this.localDate : (message.flags & LiteMode.FLAG_CHAT_SCALE) != 0 ? message.edit_date : message.date;
        }

        public int getDate() {
            int dateInternal = getDateInternal();
            this.lastDate = dateInternal;
            return dateInternal;
        }

        public boolean isHidden() {
            TLRPC.Message message;
            MessageObject messageObject = this.message;
            return (messageObject == null || (message = messageObject.messageOwner) == null || !(message.action instanceof TLRPC.TL_messageActionHistoryClear)) ? false : true;
        }
    }

    public SavedMessagesController(int i) {
        this(i, 0L);
    }

    public SavedMessagesController(int i, long j) {
        this.cachedDialogs = new ArrayList<>();
        this.loadedDialogs = new ArrayList<>();
        this.allDialogs = new ArrayList<>();
        this.saveCacheRunnable = new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.saveCache();
            }
        };
        this.checkMessagesCallbacks = new LongSparseArray();
        this.currentAccount = i;
        this.forumDialogId = j;
        this.unsupported = MessagesController.getMainSettings(i).getBoolean("savedMessagesUnsupported", true);
    }

    private void deleteCache() {
        if (this.saving) {
            return;
        }
        this.saving = true;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteCache$13(messagesStorage);
            }
        });
    }

    private ArrayList<Long> getCurrentPinnedOrder(ArrayList<SavedDialog> arrayList) {
        ArrayList<Long> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.pinned) {
                arrayList2.add(Long.valueOf(savedDialog.dialogId));
            }
        }
        return arrayList2;
    }

    private void invalidate() {
        SavedDialog savedDialog;
        if (this.dialogsLoaded && this.loadedDialogs.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.loadedDialogs.size(); i++) {
            SavedDialog savedDialog2 = this.loadedDialogs.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= this.cachedDialogs.size()) {
                    savedDialog = null;
                    break;
                }
                savedDialog = this.cachedDialogs.get(i2);
                if (savedDialog.dialogId == savedDialog2.dialogId) {
                    break;
                } else {
                    i2++;
                }
            }
            if (savedDialog == null && !savedDialog2.pinned) {
                this.cachedDialogs.add(savedDialog2);
            }
        }
        if (this.forumDialogId != 0) {
            UserConfig.getInstance(this.currentAccount).getPreferences().edit().remove("topics_end_reached_" + (-this.forumDialogId)).apply();
        }
        this.loadedDialogs.clear();
        this.dialogsLoaded = false;
        this.dialogsCount = 0;
        this.dialogsEndReached = false;
        update();
        loadDialogs(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteCache$12() {
        this.saving = false;
        this.loadedCache = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteCache$13(MessagesStorage messagesStorage) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = messagesStorage.getDatabase().executeFast("DELETE FROM saved_dialogs WHERE forumChatId = ?");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindLong(1, this.forumDialogId);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteCache$12();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasSavedMessages$14(TLObject tLObject, long j) {
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            int size = messages_messages.messages.size();
            if (messages_messages instanceof TLRPC.TL_messages_messagesSlice) {
                size = ((TLRPC.TL_messages_messagesSlice) messages_messages).count;
            } else if (this.forumDialogId != 0 && (messages_messages instanceof TLRPC.TL_messages_channelMessages)) {
                size = messages_messages.count;
            }
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
            boolean z = size > 0;
            if (size > 0) {
                if (updatedDialogCount(j, size, true)) {
                    update();
                } else if (!messages_messages.messages.isEmpty()) {
                    SavedDialog savedDialogFromMessage = SavedDialog.fromMessage(this.currentAccount, (TLRPC.Message) messages_messages.messages.get(0), this.forumDialogId == 0);
                    savedDialogFromMessage.messagesCount = size;
                    savedDialogFromMessage.messagesCountLoaded = true;
                    this.cachedDialogs.add(savedDialogFromMessage);
                    update();
                }
            }
            ArrayList arrayList = (ArrayList) this.checkMessagesCallbacks.get(j);
            this.checkMessagesCallbacks.remove(j);
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    ((Utilities.Callback) arrayList.get(i)).run(Boolean.valueOf(z));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasSavedMessages$15(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hasSavedMessages$14(tLObject, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCache$6(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, Runnable runnable) {
        this.loadingCache = false;
        this.loadedCache = true;
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList3);
        this.cachedDialogs.clear();
        this.cachedDialogs.addAll(arrayList4);
        updateAllDialogs(true);
        if (runnable == null || this.loadingCacheOnly) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadCache$7(MessagesStorage messagesStorage, long j, final Runnable runnable) throws Throwable {
        SQLiteCursor sQLiteCursor;
        SavedDialog savedDialog;
        SQLiteDatabase sQLiteDatabase;
        Long lValueOf;
        ArrayList<Long> arrayList;
        long j2;
        ArrayList arrayList2;
        ArrayList<Long> arrayList3;
        int i = 0;
        SQLiteDatabase database = messagesStorage.getDatabase();
        final ArrayList arrayList4 = new ArrayList();
        ArrayList<Long> arrayList5 = new ArrayList<>();
        ArrayList<Long> arrayList6 = new ArrayList<>();
        ArrayList arrayList7 = new ArrayList();
        final ArrayList<TLRPC.User> arrayList8 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList9 = new ArrayList<>();
        final ArrayList<TLRPC.Document> arrayList10 = new ArrayList<>();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized2 = database.queryFinalized("SELECT did, date, last_mid, pinned, flags, folder_id, last_mid_group, count, unread_count, max_read_id, read_outbox FROM saved_dialogs WHERE forumChatId = ? ORDER BY pinned ASC, date DESC", Long.valueOf(this.forumDialogId));
            while (sQLiteCursorQueryFinalized2.next()) {
                try {
                    try {
                        savedDialog = new SavedDialog();
                        sQLiteDatabase = database;
                        savedDialog.dialogId = sQLiteCursorQueryFinalized2.longValue(i);
                        savedDialog.localDate = sQLiteCursorQueryFinalized2.intValue(1);
                        savedDialog.top_message_id = sQLiteCursorQueryFinalized2.intValue(2);
                        savedDialog.pinnedOrder = sQLiteCursorQueryFinalized2.intValue(3);
                        savedDialog.messagesCountLoaded = (sQLiteCursorQueryFinalized2.intValue(4) & 1) != 0;
                        savedDialog.pinned = savedDialog.pinnedOrder != 999;
                        savedDialog.messagesCount = sQLiteCursorQueryFinalized2.intValue(7);
                        savedDialog.unreadCount = sQLiteCursorQueryFinalized2.longValue(8);
                        savedDialog.readInboxMaxId = sQLiteCursorQueryFinalized2.longValue(9);
                        savedDialog.readOutboxMaxId = sQLiteCursorQueryFinalized2.longValue(10);
                        long j3 = savedDialog.dialogId;
                        if (j3 < 0) {
                            lValueOf = Long.valueOf(-j3);
                            arrayList = arrayList6;
                        } else {
                            lValueOf = Long.valueOf(j3);
                            arrayList = arrayList5;
                        }
                        arrayList.add(lValueOf);
                        j2 = this.forumDialogId;
                        if (j2 == 0) {
                            j2 = j;
                        }
                        arrayList2 = arrayList4;
                    } catch (Exception e) {
                        e = e;
                    }
                    try {
                        database = sQLiteDatabase;
                        sQLiteCursorQueryFinalized = database.queryFinalized("SELECT data FROM messages_topics WHERE uid = ? AND mid = ? AND topic_id = ?", Long.valueOf(j2), Integer.valueOf(savedDialog.top_message_id), Long.valueOf(savedDialog.dialogId));
                        if (sQLiteCursorQueryFinalized.next()) {
                            NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                            TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(true), true);
                            MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList5, arrayList6, arrayList7);
                            arrayList3 = arrayList5;
                            savedDialog.message = new MessageObject(this.currentAccount, messageTLdeserialize, null, null, null, null, null, false, false, 0L, false, false, this.forumDialogId == 0);
                        } else {
                            arrayList3 = arrayList5;
                        }
                        sQLiteCursorQueryFinalized.dispose();
                        arrayList4 = arrayList2;
                        arrayList4.add(savedDialog);
                        arrayList5 = arrayList3;
                        i = 0;
                    } catch (Exception e2) {
                        e = e2;
                        arrayList4 = arrayList2;
                        SQLiteCursor sQLiteCursor2 = sQLiteCursorQueryFinalized;
                        sQLiteCursorQueryFinalized = sQLiteCursorQueryFinalized2;
                        sQLiteCursor = sQLiteCursor2;
                        try {
                            FileLog.e(e);
                            if (sQLiteCursorQueryFinalized != null) {
                                sQLiteCursorQueryFinalized.dispose();
                            }
                            if (sQLiteCursor != null) {
                                sQLiteCursorQueryFinalized = sQLiteCursor;
                                sQLiteCursorQueryFinalized.dispose();
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$loadCache$6(arrayList8, arrayList9, arrayList10, arrayList4, runnable);
                                }
                            });
                        } catch (Throwable th) {
                            th = th;
                            if (sQLiteCursorQueryFinalized != null) {
                            }
                            if (sQLiteCursor != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    SQLiteCursor sQLiteCursor3 = sQLiteCursorQueryFinalized;
                    sQLiteCursorQueryFinalized = sQLiteCursorQueryFinalized2;
                    sQLiteCursor = sQLiteCursor3;
                    if (sQLiteCursorQueryFinalized != null) {
                        sQLiteCursorQueryFinalized.dispose();
                    }
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                    throw th;
                }
            }
            ArrayList<Long> arrayList11 = arrayList5;
            if (!arrayList11.isEmpty()) {
                messagesStorage.getUsersInternal(arrayList11, arrayList8);
            }
            if (!arrayList6.isEmpty()) {
                messagesStorage.getChatsInternal(TextUtils.join(",", arrayList6), arrayList9);
            }
            if (!arrayList7.isEmpty()) {
                messagesStorage.getAnimatedEmoji(TextUtils.join(",", arrayList7), arrayList10);
            }
            sQLiteCursorQueryFinalized2.dispose();
        } catch (Exception e3) {
            e = e3;
            sQLiteCursor = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteCursor = null;
        }
        if (sQLiteCursorQueryFinalized != null) {
            sQLiteCursorQueryFinalized.dispose();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadCache$6(arrayList8, arrayList9, arrayList10, arrayList4, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogs$1() {
        loadDialogs(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0232  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadDialogs$2(TLObject tLObject, ArrayList arrayList, TLRPC.TL_error tL_error) {
        boolean z = this.unsupported;
        if (tLObject instanceof TLRPC.TL_messages_savedDialogs) {
            this.dialogsLoaded = true;
            TLRPC.TL_messages_savedDialogs tL_messages_savedDialogs = (TLRPC.TL_messages_savedDialogs) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_savedDialogs.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_savedDialogs.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_messages_savedDialogs.users, tL_messages_savedDialogs.chats, true, true);
            MessagesStorage.getInstance(this.currentAccount).putMessages(tL_messages_savedDialogs.messages, false, true, false, 0, false, 3, 0L);
            for (int i = 0; i < tL_messages_savedDialogs.dialogs.size(); i++) {
                SavedDialog savedDialogFromTL = SavedDialog.fromTL(this.currentAccount, (TLRPC.savedDialog) tL_messages_savedDialogs.dialogs.get(i), tL_messages_savedDialogs.messages, this.forumDialogId == 0);
                int i2 = 0;
                while (true) {
                    if (i2 >= this.cachedDialogs.size()) {
                        break;
                    }
                    if (this.cachedDialogs.get(i2).dialogId == savedDialogFromTL.dialogId) {
                        savedDialogFromTL.messagesCount = this.cachedDialogs.get(i2).messagesCount;
                        this.cachedDialogs.get(i2).pinned = savedDialogFromTL.pinned;
                        break;
                    }
                    i2++;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= this.loadedDialogs.size()) {
                        this.loadedDialogs.add(savedDialogFromTL);
                        if (savedDialogFromTL.isHidden()) {
                            this.dialogsCountHidden++;
                        }
                    } else if (this.loadedDialogs.get(i3).dialogId == savedDialogFromTL.dialogId) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.dialogsEndReached = true;
            this.dialogsCount = tL_messages_savedDialogs.dialogs.size();
        } else {
            if (!(tLObject instanceof TLRPC.TL_messages_savedDialogsSlice)) {
                if (tLObject instanceof TLRPC.TL_messages_savedDialogsNotModified) {
                    this.dialogsLoaded = true;
                    this.loadedDialogs.addAll(arrayList);
                    this.dialogsCount = ((TLRPC.TL_messages_savedDialogsNotModified) tLObject).count;
                    this.dialogsCountHidden = 0;
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        if (((SavedDialog) arrayList.get(i4)).isHidden()) {
                            this.dialogsCountHidden++;
                        }
                    }
                    boolean z2 = this.dialogsEndReached;
                    boolean z3 = this.loadedDialogs.size() >= this.dialogsCount;
                    this.dialogsEndReached = z3;
                    this.unsupported = false;
                    if (z3 && !z2) {
                        updateAllDialogs(true);
                    }
                } else if (tL_error != null) {
                    this.dialogsLoaded = true;
                    if ("SAVED_DIALOGS_UNSUPPORTED".equals(tL_error.text)) {
                        this.unsupported = true;
                    }
                }
                if (this.unsupported != z) {
                    MessagesController.getMainSettings(this.currentAccount).edit().putBoolean("savedMessagesUnsupported", this.unsupported).apply();
                }
                if (this.forumDialogId != 0 && this.dialogsEndReached) {
                    UserConfig.getInstance(this.currentAccount).getPreferences().edit().putBoolean("topics_end_reached_" + (-this.forumDialogId), true).apply();
                }
                this.dialogsLoading = false;
            }
            this.dialogsLoaded = true;
            TLRPC.TL_messages_savedDialogsSlice tL_messages_savedDialogsSlice = (TLRPC.TL_messages_savedDialogsSlice) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_savedDialogsSlice.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_savedDialogsSlice.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_messages_savedDialogsSlice.users, tL_messages_savedDialogsSlice.chats, true, true);
            MessagesStorage.getInstance(this.currentAccount).putMessages(tL_messages_savedDialogsSlice.messages, false, true, false, 0, false, 3, 0L);
            for (int i5 = 0; i5 < tL_messages_savedDialogsSlice.dialogs.size(); i5++) {
                SavedDialog savedDialogFromTL2 = SavedDialog.fromTL(this.currentAccount, (TLRPC.savedDialog) tL_messages_savedDialogsSlice.dialogs.get(i5), tL_messages_savedDialogsSlice.messages, this.forumDialogId == 0);
                int i6 = 0;
                while (true) {
                    if (i6 >= this.cachedDialogs.size()) {
                        break;
                    }
                    if (this.cachedDialogs.get(i6).dialogId == savedDialogFromTL2.dialogId) {
                        savedDialogFromTL2.messagesCount = this.cachedDialogs.get(i6).messagesCount;
                        this.cachedDialogs.get(i6).pinned = savedDialogFromTL2.pinned;
                        break;
                    }
                    i6++;
                }
                int i7 = 0;
                while (true) {
                    if (i7 >= this.loadedDialogs.size()) {
                        this.loadedDialogs.add(savedDialogFromTL2);
                        if (savedDialogFromTL2.isHidden()) {
                            this.dialogsCountHidden++;
                        }
                    } else if (this.loadedDialogs.get(i7).dialogId == savedDialogFromTL2.dialogId) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.dialogsCount = tL_messages_savedDialogsSlice.count;
            this.dialogsEndReached = getPinnedCount() + this.loadedDialogs.size() >= this.dialogsCount || tL_messages_savedDialogsSlice.dialogs.size() == 0;
        }
        updateAllDialogs(true);
        saveCacheSchedule();
        this.unsupported = false;
        if (this.unsupported != z) {
        }
        if (this.forumDialogId != 0) {
            UserConfig.getInstance(this.currentAccount).getPreferences().edit().putBoolean("topics_end_reached_" + (-this.forumDialogId), true).apply();
        }
        this.dialogsLoading = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogs$3(final ArrayList arrayList, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadDialogs$2(tLObject, arrayList, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveCache$10() {
        this.saving = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveCache$11(MessagesStorage messagesStorage, ArrayList arrayList) {
        SQLiteDatabase database = messagesStorage.getDatabase();
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        sQLitePreparedStatementExecuteFast = null;
        try {
            try {
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = database.executeFast("DELETE FROM saved_dialogs WHERE forumChatId = ?");
                sQLitePreparedStatementExecuteFast2.requery();
                sQLitePreparedStatementExecuteFast2.bindLong(1, this.forumDialogId);
                sQLitePreparedStatementExecuteFast2.step();
                sQLitePreparedStatementExecuteFast2.dispose();
                sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO saved_dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    SavedDialog savedDialog = (SavedDialog) arrayList.get(i);
                    sQLitePreparedStatementExecuteFast.requery();
                    sQLitePreparedStatementExecuteFast.bindLong(1, savedDialog.dialogId);
                    sQLitePreparedStatementExecuteFast.bindInteger(2, savedDialog.getDate());
                    sQLitePreparedStatementExecuteFast.bindInteger(3, savedDialog.top_message_id);
                    sQLitePreparedStatementExecuteFast.bindInteger(4, savedDialog.pinned ? i : 999);
                    sQLitePreparedStatementExecuteFast.bindInteger(5, savedDialog.messagesCountLoaded ? 1 : 0);
                    sQLitePreparedStatementExecuteFast.bindInteger(6, 0);
                    sQLitePreparedStatementExecuteFast.bindInteger(7, 0);
                    sQLitePreparedStatementExecuteFast.bindInteger(8, savedDialog.messagesCount);
                    sQLitePreparedStatementExecuteFast.bindLong(9, this.forumDialogId);
                    sQLitePreparedStatementExecuteFast.bindLong(10, savedDialog.unreadCount);
                    sQLitePreparedStatementExecuteFast.bindLong(11, savedDialog.readInboxMaxId);
                    sQLitePreparedStatementExecuteFast.bindLong(12, savedDialog.readOutboxMaxId);
                    sQLitePreparedStatementExecuteFast.step();
                }
                sQLitePreparedStatementExecuteFast.dispose();
            } catch (Exception e) {
                FileLog.e(e);
                if (sQLitePreparedStatementExecuteFast != null) {
                }
            }
            sQLitePreparedStatementExecuteFast.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveCache$10();
                }
            });
        } catch (Throwable th) {
            if (sQLitePreparedStatementExecuteFast != null) {
                sQLitePreparedStatementExecuteFast.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAllDialogs$0(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog2.getDate() - savedDialog.getDate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsLastMessage$8(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, LongSparseArray longSparseArray) {
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList3);
        for (int i = 0; i < arrayList4.size(); i++) {
            removeDialog(((Long) arrayList4.get(i)).longValue());
        }
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            long jKeyAt = longSparseArray.keyAt(i2);
            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) longSparseArray.valueAt(i2), null, null, null, null, null, false, false, 0L, false, false, this.forumDialogId == 0);
            for (int i3 = 0; i3 < this.loadedDialogs.size(); i3++) {
                SavedDialog savedDialog = this.loadedDialogs.get(i3);
                if (savedDialog.dialogId == jKeyAt) {
                    savedDialog.top_message_id = messageObject.getId();
                    savedDialog.message = messageObject;
                }
            }
            for (int i4 = 0; i4 < this.cachedDialogs.size(); i4++) {
                SavedDialog savedDialog2 = this.cachedDialogs.get(i4);
                if (savedDialog2.dialogId == jKeyAt) {
                    savedDialog2.top_message_id = messageObject.getId();
                    savedDialog2.message = messageObject;
                }
            }
        }
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f2 A[PHI: r2 r11
      0x00f2: PHI (r2v3 java.util.ArrayList<org.telegram.tgnet.TLRPC$Document>) = 
      (r2v4 java.util.ArrayList<org.telegram.tgnet.TLRPC$Document>)
      (r2v7 java.util.ArrayList<org.telegram.tgnet.TLRPC$Document>)
     binds: [B:54:0x00f0, B:50:0x00e6] A[DONT_GENERATE, DONT_INLINE]
      0x00f2: PHI (r11v2 org.telegram.SQLite.SQLiteCursor) = (r11v3 org.telegram.SQLite.SQLiteCursor), (r11v6 org.telegram.SQLite.SQLiteCursor) binds: [B:54:0x00f0, B:50:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$updateDialogsLastMessage$9(MessagesStorage messagesStorage, ArrayList arrayList, long j) throws Throwable {
        ArrayList<TLRPC.Document> arrayList2;
        ArrayList<TLRPC.Document> arrayList3;
        SQLiteCursor sQLiteCursor;
        SavedDialog savedDialog;
        SQLiteDatabase database = messagesStorage.getDatabase();
        final ArrayList arrayList4 = new ArrayList();
        final LongSparseArray longSparseArray = new LongSparseArray();
        ArrayList<Long> arrayList5 = new ArrayList<>();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        final ArrayList<TLRPC.User> arrayList8 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList9 = new ArrayList<>();
        ArrayList<TLRPC.Document> arrayList10 = new ArrayList<>();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        int i = 0;
        while (i < arrayList.size()) {
            try {
                try {
                    try {
                        savedDialog = (SavedDialog) arrayList.get(i);
                        arrayList3 = arrayList10;
                        sQLiteCursor = sQLiteCursorQueryFinalized;
                    } catch (Exception e) {
                        e = e;
                        arrayList3 = arrayList10;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    try {
                        long j2 = this.forumDialogId;
                        if (j2 == 0) {
                            j2 = j;
                        }
                        sQLiteCursorQueryFinalized = database.queryFinalized("SELECT mid, data FROM messages_topics WHERE uid = ? AND topic_id = ? ORDER BY mid DESC LIMIT 1", Long.valueOf(j2), Long.valueOf(savedDialog.dialogId));
                        try {
                            try {
                                if (sQLiteCursorQueryFinalized.next()) {
                                    sQLiteCursorQueryFinalized.intValue(0);
                                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(1);
                                    TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(true), true);
                                    MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList5, arrayList6, arrayList7);
                                    longSparseArray.put(savedDialog.dialogId, messageTLdeserialize);
                                } else {
                                    arrayList4.add(Long.valueOf(savedDialog.dialogId));
                                }
                                sQLiteCursorQueryFinalized.dispose();
                                i++;
                                arrayList10 = arrayList3;
                            } catch (Throwable th2) {
                                th = th2;
                                if (sQLiteCursorQueryFinalized != null) {
                                    sQLiteCursorQueryFinalized.dispose();
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            arrayList2 = arrayList3;
                            FileLog.e(e);
                            if (sQLiteCursorQueryFinalized != null) {
                            }
                            final ArrayList<TLRPC.Document> arrayList11 = arrayList2;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$updateDialogsLastMessage$8(arrayList8, arrayList9, arrayList11, arrayList4, longSparseArray);
                                }
                            });
                        }
                    } catch (Exception e3) {
                        e = e3;
                        arrayList2 = arrayList3;
                        sQLiteCursorQueryFinalized = sQLiteCursor;
                        FileLog.e(e);
                        if (sQLiteCursorQueryFinalized != null) {
                        }
                        final ArrayList arrayList112 = arrayList2;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$updateDialogsLastMessage$8(arrayList8, arrayList9, arrayList112, arrayList4, longSparseArray);
                            }
                        });
                    }
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteCursorQueryFinalized = sQLiteCursor;
                    if (sQLiteCursorQueryFinalized != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                arrayList2 = arrayList10;
            }
        }
        arrayList3 = arrayList10;
        sQLiteCursor = sQLiteCursorQueryFinalized;
        if (!arrayList5.isEmpty()) {
            messagesStorage.getUsersInternal(arrayList5, arrayList8);
        }
        if (!arrayList6.isEmpty()) {
            messagesStorage.getChatsInternal(TextUtils.join(",", arrayList6), arrayList9);
        }
        if (arrayList7.isEmpty()) {
            arrayList2 = arrayList3;
        } else {
            arrayList2 = arrayList3;
            try {
                messagesStorage.getAnimatedEmoji(TextUtils.join(",", arrayList7), arrayList2);
            } catch (Exception e5) {
                e = e5;
                sQLiteCursorQueryFinalized = sQLiteCursor;
                FileLog.e(e);
                if (sQLiteCursorQueryFinalized != null) {
                    sQLiteCursorQueryFinalized.dispose();
                }
                final ArrayList arrayList1122 = arrayList2;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateDialogsLastMessage$8(arrayList8, arrayList9, arrayList1122, arrayList4, longSparseArray);
                    }
                });
            }
        }
        if (sQLiteCursor != null) {
            sQLiteCursorQueryFinalized = sQLiteCursor;
            sQLiteCursorQueryFinalized.dispose();
        }
        final ArrayList arrayList11222 = arrayList2;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateDialogsLastMessage$8(arrayList8, arrayList9, arrayList11222, arrayList4, longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updatePinnedOrder$4(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog2.getDate() - savedDialog.getDate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updatePinnedOrder$5(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog.pinnedOrder - savedDialog2.pinnedOrder;
    }

    private void loadCache(final Runnable runnable) {
        if (this.loadingCache) {
            return;
        }
        this.loadingCache = true;
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$loadCache$7(messagesStorage, clientUserId, runnable);
            }
        });
    }

    public static void openSavedMessages() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", UserConfig.getInstance(lastFragment.getCurrentAccount()).getClientUserId());
        lastFragment.presentFragment(new ChatActivity(bundle));
    }

    private boolean processUpdateInternal(TLRPC.Update update) {
        if (update instanceof TLRPC.TL_updateSavedDialogPinned) {
            TLRPC.TL_updateSavedDialogPinned tL_updateSavedDialogPinned = (TLRPC.TL_updateSavedDialogPinned) update;
            TLRPC.DialogPeer dialogPeer = tL_updateSavedDialogPinned.peer;
            if (!(dialogPeer instanceof TLRPC.TL_dialogPeer)) {
                return false;
            }
            long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_dialogPeer) dialogPeer).peer);
            ArrayList<Long> arrayList = new ArrayList<>();
            arrayList.add(Long.valueOf(peerDialogId));
            return updatePinned(arrayList, tL_updateSavedDialogPinned.pinned, false);
        }
        if (!(update instanceof TLRPC.TL_updatePinnedSavedDialogs)) {
            return false;
        }
        TLRPC.TL_updatePinnedSavedDialogs tL_updatePinnedSavedDialogs = (TLRPC.TL_updatePinnedSavedDialogs) update;
        ArrayList<Long> arrayList2 = new ArrayList<>(tL_updatePinnedSavedDialogs.order.size());
        for (int i = 0; i < tL_updatePinnedSavedDialogs.order.size(); i++) {
            TLRPC.DialogPeer dialogPeer2 = (TLRPC.DialogPeer) tL_updatePinnedSavedDialogs.order.get(i);
            if (dialogPeer2 instanceof TLRPC.TL_dialogPeer) {
                arrayList2.add(Long.valueOf(DialogObject.getPeerDialogId(((TLRPC.TL_dialogPeer) dialogPeer2).peer)));
            }
        }
        return updatePinnedOrder(this.loadedDialogs, arrayList2) || updatePinnedOrder(this.cachedDialogs, arrayList2);
    }

    private int removeDialog(long j) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.allDialogs.size()) {
            if (this.allDialogs.get(i2).dialogId == j) {
                this.allDialogs.remove(i2);
                i3++;
                i2--;
            }
            i2++;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.loadedDialogs.size()) {
            if (this.loadedDialogs.get(i4).dialogId == j) {
                this.loadedDialogs.remove(i4);
                i5++;
                i4--;
            }
            i4++;
        }
        while (i < this.cachedDialogs.size()) {
            if (this.cachedDialogs.get(i).dialogId == j) {
                this.cachedDialogs.remove(i);
                i--;
            }
            i++;
        }
        if (this.forumDialogId != 0) {
            MessagesStorage.getInstance(this.currentAccount).removeTopic(this.forumDialogId, j);
        }
        return Math.max(i3, i5);
    }

    private boolean sameOrder(ArrayList<Long> arrayList, ArrayList<Long> arrayList2) {
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (!Objects.equals(arrayList.get(i), arrayList2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCache() {
        if (this.saving) {
            return;
        }
        this.saving = true;
        final ArrayList arrayList = new ArrayList(this.allDialogs);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveCache$11(messagesStorage, arrayList);
            }
        });
    }

    private void saveCacheSchedule() {
        AndroidUtilities.cancelRunOnUIThread(this.saveCacheRunnable);
        AndroidUtilities.runOnUIThread(this.saveCacheRunnable, 450L);
    }

    private void updateAllDialogs(boolean z) {
        this.allDialogs.clear();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.cachedDialogs.size(); i++) {
            SavedDialog savedDialog = this.cachedDialogs.get(i);
            if (savedDialog.pinned && !hashSet.contains(Long.valueOf(savedDialog.dialogId)) && !savedDialog.isHidden()) {
                this.allDialogs.add(savedDialog);
                hashSet.add(Long.valueOf(savedDialog.dialogId));
            }
        }
        for (int i2 = 0; i2 < this.loadedDialogs.size(); i2++) {
            SavedDialog savedDialog2 = this.loadedDialogs.get(i2);
            if (savedDialog2.pinned && !hashSet.contains(Long.valueOf(savedDialog2.dialogId)) && !savedDialog2.isHidden()) {
                this.allDialogs.add(savedDialog2);
                hashSet.add(Long.valueOf(savedDialog2.dialogId));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < this.loadedDialogs.size(); i3++) {
            SavedDialog savedDialog3 = this.loadedDialogs.get(i3);
            if (!hashSet.contains(Long.valueOf(savedDialog3.dialogId)) && !savedDialog3.isHidden()) {
                arrayList.add(savedDialog3);
                hashSet.add(Long.valueOf(savedDialog3.dialogId));
            }
        }
        if (!this.dialogsEndReached) {
            for (int i4 = 0; i4 < this.cachedDialogs.size(); i4++) {
                SavedDialog savedDialog4 = this.cachedDialogs.get(i4);
                if (!hashSet.contains(Long.valueOf(savedDialog4.dialogId)) && !savedDialog4.isHidden()) {
                    arrayList.add(savedDialog4);
                    hashSet.add(Long.valueOf(savedDialog4.dialogId));
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SavedMessagesController.lambda$updateAllDialogs$0((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
            }
        });
        this.allDialogs.addAll(arrayList);
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.savedMessagesDialogsUpdate, Long.valueOf(this.forumDialogId));
            if (hasDialogs() || !MessagesController.getInstance(this.currentAccount).savedViewAsChats) {
                return;
            }
            MessagesController.getInstance(this.currentAccount).setSavedViewAs(false);
        }
    }

    private void updateDialogsLastMessage(final ArrayList<SavedDialog> arrayList) {
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$updateDialogsLastMessage$9(messagesStorage, arrayList, clientUserId);
            }
        });
    }

    private boolean updatePinnedOrder(ArrayList<SavedDialog> arrayList, ArrayList<Long> arrayList2) {
        if (sameOrder(arrayList2, getCurrentPinnedOrder(arrayList))) {
            return false;
        }
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        while (i < arrayList.size()) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.pinned) {
                savedDialog.pinned = false;
                arrayList3.add(savedDialog);
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        arrayList.addAll(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            SavedDialog savedDialog2 = arrayList.get(i2);
            int iIndexOf = arrayList2.indexOf(Long.valueOf(savedDialog2.dialogId));
            if (iIndexOf >= 0) {
                savedDialog2.pinnedOrder = iIndexOf;
                savedDialog2.pinned = true;
                arrayList4.add(savedDialog2);
                arrayList.remove(i2);
                i2--;
            }
            i2++;
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda13
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SavedMessagesController.lambda$updatePinnedOrder$4((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
            }
        });
        Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda14
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SavedMessagesController.lambda$updatePinnedOrder$5((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
            }
        });
        arrayList.addAll(0, arrayList4);
        return true;
    }

    private void updatePinnedOrderToServer(ArrayList<Long> arrayList) {
        boolean zUpdatePinnedOrder = updatePinnedOrder(this.loadedDialogs, arrayList);
        boolean zUpdatePinnedOrder2 = updatePinnedOrder(this.cachedDialogs, arrayList);
        if (zUpdatePinnedOrder || zUpdatePinnedOrder2) {
            TLRPC.TL_messages_reorderPinnedSavedDialogs tL_messages_reorderPinnedSavedDialogs = new TLRPC.TL_messages_reorderPinnedSavedDialogs();
            tL_messages_reorderPinnedSavedDialogs.force = true;
            for (int i = 0; i < arrayList.size(); i++) {
                long jLongValue = arrayList.get(i).longValue();
                TLRPC.TL_inputDialogPeer tL_inputDialogPeer = new TLRPC.TL_inputDialogPeer();
                TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(jLongValue);
                tL_inputDialogPeer.peer = inputPeer;
                if (inputPeer != null) {
                    tL_messages_reorderPinnedSavedDialogs.order.add(tL_inputDialogPeer);
                }
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_reorderPinnedSavedDialogs, null);
            update();
        }
    }

    public void checkSavedDialogCount(long j) {
        SavedDialog savedDialogFindSavedDialog = findSavedDialog(j);
        if (savedDialogFindSavedDialog == null || savedDialogFindSavedDialog.messagesCountLoaded) {
            return;
        }
        hasSavedMessages(j, null);
    }

    public void cleanup() {
        this.cachedDialogs.clear();
        this.loadedDialogs.clear();
        this.dialogsLoaded = false;
        this.dialogsCount = 0;
        this.dialogsCountHidden = 0;
        this.dialogsEndReached = false;
        this.loadedCache = true;
        deleteCache();
        this.unsupported = true;
        MessagesController.getMainSettings(this.currentAccount).edit().remove("savedMessagesUnsupported").apply();
    }

    public boolean containsDialog(long j) {
        for (int i = 0; i < this.allDialogs.size(); i++) {
            if (this.allDialogs.get(i).dialogId == j) {
                return true;
            }
        }
        return false;
    }

    public void deleteAllDialogs() {
        this.dialogsCount = 0;
        this.allDialogs.clear();
        this.loadedDialogs.clear();
        this.cachedDialogs.clear();
        update();
    }

    public void deleteDialog(long j) {
        this.dialogsCount -= removeDialog(j);
        update();
    }

    public void deleteDialogs(ArrayList<Long> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            this.dialogsCount -= removeDialog(arrayList.get(i).longValue());
        }
        update();
    }

    public SavedDialog findSavedDialog(long j) {
        return findSavedDialog(this.allDialogs, j);
    }

    public SavedDialog findSavedDialog(ArrayList<SavedDialog> arrayList, long j) {
        for (int i = 0; i < arrayList.size(); i++) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.dialogId == j) {
                return savedDialog;
            }
        }
        return null;
    }

    public int getAllCount() {
        return this.dialogsEndReached ? this.allDialogs.size() : this.dialogsLoaded ? this.dialogsCount - this.dialogsCountHidden : this.cachedDialogs.size();
    }

    public int getLoadedCount() {
        return this.loadedDialogs.size();
    }

    public int getMessagesCount(long j) {
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            if (savedDialog.dialogId == j) {
                return savedDialog.messagesCount;
            }
        }
        return 0;
    }

    public int getPinnedCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.allDialogs.size(); i2++) {
            if (this.allDialogs.get(i2).pinned) {
                i++;
            }
        }
        return i;
    }

    public boolean hasDialogs() {
        if (getAllCount() <= 0) {
            return false;
        }
        return (this.allDialogs.size() == 1 && this.allDialogs.get(0).dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) ? false : true;
    }

    public void hasSavedMessages(final long j, Utilities.Callback<Boolean> callback) {
        SavedDialog savedDialogFindSavedDialog = findSavedDialog(j);
        if (savedDialogFindSavedDialog != null && savedDialogFindSavedDialog.messagesCount > 0 && savedDialogFindSavedDialog.messagesCountLoaded) {
            if (callback != null) {
                callback.run(Boolean.TRUE);
                return;
            }
            return;
        }
        ArrayList arrayList = (ArrayList) this.checkMessagesCallbacks.get(j);
        if (arrayList != null) {
            if (callback != null) {
                arrayList.add(callback);
                return;
            }
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        if (callback != null) {
            arrayList2.add(callback);
        }
        this.checkMessagesCallbacks.put(j, arrayList2);
        TLRPC.TL_messages_getSavedHistory tL_messages_getSavedHistory = new TLRPC.TL_messages_getSavedHistory();
        tL_messages_getSavedHistory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        if (this.forumDialogId != 0) {
            tL_messages_getSavedHistory.parent_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.forumDialogId);
        }
        tL_messages_getSavedHistory.limit = 1;
        tL_messages_getSavedHistory.hash = 0L;
        tL_messages_getSavedHistory.offset_id = Integer.MAX_VALUE;
        tL_messages_getSavedHistory.offset_date = Integer.MAX_VALUE;
        tL_messages_getSavedHistory.add_offset = -1;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getSavedHistory, new RequestDelegate() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$hasSavedMessages$15(j, tLObject, tL_error);
            }
        });
    }

    public boolean isLoading() {
        return this.dialogsLoading;
    }

    public void loadDialogs(boolean z) {
        SavedDialog savedDialog;
        TLRPC.InputPeer tL_inputPeerEmpty;
        this.loadingCacheOnly = z;
        if (this.dialogsLoading || this.dialogsEndReached || this.loadingCache) {
            return;
        }
        if (!this.loadedCache) {
            loadCache(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadDialogs$1();
                }
            });
            return;
        }
        if (z) {
            return;
        }
        this.dialogsLoading = true;
        TLRPC.TL_messages_getSavedDialogs tL_messages_getSavedDialogs = new TLRPC.TL_messages_getSavedDialogs();
        if (this.loadedDialogs.isEmpty()) {
            savedDialog = null;
        } else {
            ArrayList<SavedDialog> arrayList = this.loadedDialogs;
            savedDialog = arrayList.get(arrayList.size() - 1);
        }
        if (savedDialog != null) {
            tL_messages_getSavedDialogs.offset_id = savedDialog.top_message_id;
            tL_messages_getSavedDialogs.offset_date = savedDialog.getDate();
            tL_inputPeerEmpty = MessagesController.getInstance(this.currentAccount).getInputPeer(savedDialog.dialogId);
        } else {
            tL_messages_getSavedDialogs.offset_id = Integer.MAX_VALUE;
            tL_messages_getSavedDialogs.offset_date = 0;
            tL_inputPeerEmpty = new TLRPC.TL_inputPeerEmpty();
        }
        tL_messages_getSavedDialogs.offset_peer = tL_inputPeerEmpty;
        tL_messages_getSavedDialogs.limit = 20;
        if (this.forumDialogId != 0) {
            tL_messages_getSavedDialogs.flags |= 2;
            tL_messages_getSavedDialogs.parent_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.forumDialogId);
        }
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.allDialogs.subList(Math.min(this.loadedDialogs.size(), this.allDialogs.size()), Math.min(this.loadedDialogs.size() + tL_messages_getSavedDialogs.limit, this.allDialogs.size())));
        for (int i = 0; i < arrayList2.size(); i++) {
            SavedDialog savedDialog2 = (SavedDialog) arrayList2.get(i);
            long jCalcHash = MediaDataController.calcHash(tL_messages_getSavedDialogs.hash, savedDialog2.pinned ? 1L : 0L);
            tL_messages_getSavedDialogs.hash = jCalcHash;
            long jCalcHash2 = MediaDataController.calcHash(jCalcHash, Math.abs(savedDialog2.dialogId));
            tL_messages_getSavedDialogs.hash = jCalcHash2;
            long jCalcHash3 = MediaDataController.calcHash(jCalcHash2, savedDialog2.top_message_id);
            tL_messages_getSavedDialogs.hash = jCalcHash3;
            tL_messages_getSavedDialogs.hash = MediaDataController.calcHash(jCalcHash3, savedDialog2.getDate());
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getSavedDialogs, new RequestDelegate() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadDialogs$3(arrayList2, tLObject, tL_error);
            }
        });
    }

    public void preloadDialogs(boolean z) {
        if (this.dialogsLoaded) {
            return;
        }
        loadDialogs(z);
    }

    public void processUpdate(TLRPC.Update update) {
        if (processUpdateInternal(update)) {
            update();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArrayList<SavedDialog> searchDialogs(String str) {
        String userName;
        ArrayList<SavedDialog> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        String strTranslitSafe = AndroidUtilities.translitSafe(str.toLowerCase());
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            long j = savedDialog.dialogId;
            String string = null;
            if (j == UserObject.ANONYMOUS) {
                userName = LocaleController.getString(R.string.AnonymousForward);
            } else if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                userName = LocaleController.getString(R.string.MyNotes);
                string = LocaleController.getString(R.string.SavedMessages);
            } else {
                long j2 = savedDialog.dialogId;
                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                long j3 = savedDialog.dialogId;
                if (j2 >= 0) {
                    userName = UserObject.getUserName(messagesController.getUser(Long.valueOf(j3)));
                } else {
                    TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j3));
                    userName = chat != null ? chat.title : "";
                }
            }
            if (userName != null) {
                String strTranslitSafe2 = AndroidUtilities.translitSafe(userName.toLowerCase());
                if (!strTranslitSafe2.startsWith(strTranslitSafe)) {
                    if (!strTranslitSafe2.contains(" " + strTranslitSafe)) {
                        if (string != null) {
                            String strTranslitSafe3 = AndroidUtilities.translitSafe(string.toLowerCase());
                            if (!strTranslitSafe3.startsWith(strTranslitSafe)) {
                                if (strTranslitSafe3.contains(" " + strTranslitSafe)) {
                                    arrayList.add(savedDialog);
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public void update() {
        updateAllDialogs(true);
        saveCacheSchedule();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(long j, TLRPC.messages_Messages messages_messages) {
        boolean zUpdateSavedDialogs = updateSavedDialogs(messages_messages.messages);
        if (messages_messages instanceof TLRPC.TL_messages_messagesSlice) {
            zUpdateSavedDialogs = updatedDialogCount(j, messages_messages.count) || zUpdateSavedDialogs;
        } else if (messages_messages instanceof TLRPC.TL_messages_messages) {
            if (updatedDialogCount(j, messages_messages.messages.size()) || zUpdateSavedDialogs) {
            }
        } else if (messages_messages instanceof TLRPC.TL_messages_channelMessages) {
            if (updatedDialogCount(j, messages_messages.count) || zUpdateSavedDialogs) {
            }
        }
        if (zUpdateSavedDialogs) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.update();
                }
            });
        }
    }

    public void updateDeleted(LongSparseArray longSparseArray) {
        SavedDialog savedDialog;
        ArrayList<SavedDialog> arrayList = new ArrayList<>();
        boolean z = false;
        for (int i = 0; i < longSparseArray.size(); i++) {
            long jKeyAt = longSparseArray.keyAt(i);
            ArrayList arrayList2 = (ArrayList) longSparseArray.valueAt(i);
            int iMax = 0;
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                iMax = Math.max(iMax, ((Integer) arrayList2.get(i2)).intValue());
            }
            int i3 = 0;
            while (true) {
                if (i3 >= this.allDialogs.size()) {
                    savedDialog = null;
                    break;
                } else {
                    if (this.allDialogs.get(i3).dialogId == jKeyAt) {
                        savedDialog = this.allDialogs.get(i3);
                        break;
                    }
                    i3++;
                }
            }
            if (savedDialog != null) {
                if (savedDialog.messagesCountLoaded) {
                    int iMax2 = Math.max(0, savedDialog.messagesCount - arrayList2.size());
                    int i4 = savedDialog.messagesCount;
                    if (iMax2 != i4) {
                        savedDialog.messagesCount = Math.max(0, i4 - arrayList2.size());
                        z = true;
                    }
                }
                if (savedDialog.messagesCountLoaded && savedDialog.messagesCount <= 0) {
                    removeDialog(savedDialog.dialogId);
                } else if (savedDialog.top_message_id <= iMax) {
                    arrayList.add(savedDialog);
                }
                z = true;
            }
        }
        if (z) {
            if (arrayList.isEmpty()) {
                update();
            } else {
                updateDialogsLastMessage(arrayList);
            }
        }
    }

    public boolean updatePinned(ArrayList<Long> arrayList, boolean z, boolean z2) {
        ArrayList<Long> currentPinnedOrder = getCurrentPinnedOrder(this.allDialogs);
        ArrayList<Long> arrayList2 = new ArrayList<>(currentPinnedOrder);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Long l = arrayList.get(size);
            l.longValue();
            if (z && !arrayList2.contains(l)) {
                arrayList2.add(0, l);
            } else if (!z) {
                arrayList2.remove(l);
            }
        }
        if (arrayList2.size() > (UserConfig.getInstance(this.currentAccount).isPremium() ? MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitPremium : MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitDefault) || sameOrder(currentPinnedOrder, arrayList2)) {
            return false;
        }
        if (!z2) {
            return updatePinnedOrder(this.loadedDialogs, arrayList2) || updatePinnedOrder(this.cachedDialogs, arrayList2);
        }
        updatePinnedOrderToServer(arrayList2);
        return true;
    }

    public boolean updatePinnedOrder(ArrayList<Long> arrayList) {
        ArrayList<Long> currentPinnedOrder = getCurrentPinnedOrder(this.allDialogs);
        if (arrayList.size() > (UserConfig.getInstance(this.currentAccount).isPremium() ? MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitPremium : MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitDefault)) {
            return false;
        }
        if (sameOrder(currentPinnedOrder, arrayList)) {
            return true;
        }
        updatePinnedOrderToServer(arrayList);
        return true;
    }

    public boolean updateSavedDialog(TLRPC.Message message) {
        if (message == null) {
            return false;
        }
        long savedDialogId = MessageObject.getSavedDialogId(UserConfig.getInstance(this.currentAccount).getClientUserId(), message);
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            if (savedDialog.dialogId == savedDialogId) {
                MessageObject messageObject = new MessageObject(this.currentAccount, message, false, false);
                savedDialog.message = messageObject;
                savedDialog.top_message_id = messageObject.getId();
                return true;
            }
        }
        return false;
    }

    public boolean updateSavedDialogs(ArrayList<TLRPC.Message> arrayList) {
        boolean z;
        boolean z2;
        if (arrayList == null) {
            return false;
        }
        LongSparseArray longSparseArray = new LongSparseArray();
        LongSparseArray longSparseArray2 = new LongSparseArray();
        new HashSet();
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.Message message = arrayList.get(i);
            long savedDialogId = MessageObject.getSavedDialogId(clientUserId, message);
            if (savedDialogId == clientUserId || (message.id >= 0 && (message.send_state == 0 || message.fwd_from == null))) {
                TLRPC.Message message2 = (TLRPC.Message) longSparseArray.get(savedDialogId);
                if (message2 == null || message2.id < message.id) {
                    longSparseArray.put(savedDialogId, message);
                }
                Integer num = (Integer) longSparseArray2.get(savedDialogId);
                longSparseArray2.put(savedDialogId, Integer.valueOf((num == null ? 0 : num.intValue()) + 1));
            }
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            long jKeyAt = longSparseArray.keyAt(i2);
            TLRPC.Message message3 = (TLRPC.Message) longSparseArray.valueAt(i2);
            Integer numValueOf = (Integer) longSparseArray2.get(jKeyAt);
            if (this.forumDialogId == 0 || MessageObject.getMonoForumTopicId(message3) != 0) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.cachedDialogs.size()) {
                        z = false;
                        break;
                    }
                    SavedDialog savedDialog = this.cachedDialogs.get(i3);
                    if (savedDialog.dialogId == jKeyAt) {
                        int i4 = savedDialog.top_message_id;
                        int i5 = message3.id;
                        if (i4 < i5 || (i5 < 0 && message3.date > savedDialog.getDate())) {
                            if (savedDialog.top_message_id < message3.id) {
                                int i6 = 0;
                                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                    if (arrayList.get(i7).id > savedDialog.top_message_id) {
                                        i6++;
                                    }
                                }
                                savedDialog.messagesCount += i6;
                            }
                            MessageObject messageObject = new MessageObject(this.currentAccount, message3, false, false);
                            savedDialog.message = messageObject;
                            savedDialog.top_message_id = messageObject.getId();
                            z3 = true;
                        }
                        numValueOf = Integer.valueOf(numValueOf != null ? Math.max(numValueOf.intValue(), savedDialog.messagesCount) : savedDialog.messagesCount);
                        z = true;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    SavedDialog savedDialogFromMessage = SavedDialog.fromMessage(this.currentAccount, message3, this.forumDialogId == 0);
                    if (numValueOf != null) {
                        savedDialogFromMessage.messagesCount = numValueOf.intValue();
                    }
                    this.cachedDialogs.add(savedDialogFromMessage);
                    z3 = true;
                }
                int i8 = 0;
                while (true) {
                    if (i8 >= this.loadedDialogs.size()) {
                        z2 = false;
                        break;
                    }
                    SavedDialog savedDialog2 = this.loadedDialogs.get(i8);
                    if (savedDialog2.dialogId == jKeyAt) {
                        int i9 = savedDialog2.top_message_id;
                        int i10 = message3.id;
                        if (i9 < i10 || (i10 < 0 && message3.date > savedDialog2.getDate())) {
                            if (savedDialog2.top_message_id < message3.id) {
                                int i11 = 0;
                                for (int i12 = 0; i12 < arrayList.size(); i12++) {
                                    if (arrayList.get(i12).id > savedDialog2.top_message_id) {
                                        i11++;
                                    }
                                }
                                savedDialog2.messagesCount += i11;
                            }
                            MessageObject messageObject2 = new MessageObject(this.currentAccount, message3, false, false);
                            savedDialog2.message = messageObject2;
                            savedDialog2.top_message_id = messageObject2.getId();
                            z3 = true;
                        }
                        numValueOf = Integer.valueOf(numValueOf != null ? Math.max(numValueOf.intValue(), savedDialog2.messagesCount) : savedDialog2.messagesCount);
                        z2 = true;
                    } else {
                        i8++;
                    }
                }
                if (!z2) {
                    SavedDialog savedDialogFromMessage2 = SavedDialog.fromMessage(this.currentAccount, message3, this.forumDialogId == 0);
                    if (numValueOf != null) {
                        savedDialogFromMessage2.messagesCount = numValueOf.intValue();
                    }
                    this.loadedDialogs.add(savedDialogFromMessage2);
                    z3 = true;
                }
            }
        }
        return z3;
    }

    public boolean updatedDialogCount(long j, int i) {
        return updatedDialogCount(j, i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean updatedDialogCount(long j, int i, boolean z) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.allDialogs.size()) {
                break;
            }
            SavedDialog savedDialog = this.allDialogs.get(i2);
            if (savedDialog.dialogId != j) {
                i2++;
            } else if (savedDialog.messagesCount != i || (!savedDialog.messagesCountLoaded && z)) {
                savedDialog.messagesCount = i;
                savedDialog.messagesCountLoaded = true;
                return true;
            }
        }
    }
}

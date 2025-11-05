package org.telegram.messenger;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import androidx.collection.LongSparseArray;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.Forum.ForumUtilities;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class ChatsRemoteViewsFactory implements RemoteViewsService.RemoteViewsFactory {
    private AccountInstance accountInstance;
    private int appWidgetId;
    private RectF bitmapRect;
    private boolean deleted;
    private Context mContext;
    private Paint roundPaint;
    private ArrayList<Long> dids = new ArrayList<>();
    private LongSparseArray dialogs = new LongSparseArray();
    private LongSparseArray messageObjects = new LongSparseArray();

    public ChatsRemoteViewsFactory(Context context, Intent intent) {
        this.mContext = context;
        Theme.createDialogsResources(context);
        this.appWidgetId = intent.getIntExtra("appWidgetId", 0);
        SharedPreferences sharedPreferences = context.getSharedPreferences("shortcut_widget", 0);
        int i = sharedPreferences.getInt("account" + this.appWidgetId, -1);
        if (i >= 0) {
            this.accountInstance = AccountInstance.getInstance(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("deleted");
        sb.append(this.appWidgetId);
        this.deleted = sharedPreferences.getBoolean(sb.toString(), false) || this.accountInstance == null;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getCount() {
        if (this.deleted) {
            return 1;
        }
        return this.dids.size() + 1;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public RemoteViews getLoadingView() {
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:144|(1:146)(2:148|(1:150)(8:151|(1:153)(1:155)|154|156|245|157|247|168))|147|156|245|157|247|168) */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x03cf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x03d0, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
        r10 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012e A[PHI: r12 r13
      0x012e: PHI (r12v8 java.lang.String) = (r12v5 java.lang.String), (r12v12 java.lang.String) binds: [B:63:0x014a, B:53:0x012c] A[DONT_GENERATE, DONT_INLINE]
      0x012e: PHI (r13v4 org.telegram.tgnet.TLRPC$FileLocation) = (r13v2 org.telegram.tgnet.TLRPC$FileLocation), (r13v10 org.telegram.tgnet.TLRPC$FileLocation) binds: [B:63:0x014a, B:53:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0133 A[PHI: r12
      0x0133: PHI (r12v6 java.lang.String) = 
      (r12v5 java.lang.String)
      (r12v5 java.lang.String)
      (r12v5 java.lang.String)
      (r12v5 java.lang.String)
      (r12v12 java.lang.String)
      (r12v12 java.lang.String)
      (r12v12 java.lang.String)
      (r12v12 java.lang.String)
      (r12v12 java.lang.String)
     binds: [B:57:0x013c, B:59:0x0140, B:61:0x0146, B:63:0x014a, B:45:0x011a, B:47:0x011e, B:49:0x0122, B:51:0x0128, B:53:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RemoteViews getViewAt(int i) throws Resources.NotFoundException {
        TLRPC.Chat chat;
        String str;
        TLRPC.User user;
        TLRPC.FileLocation fileLocation;
        String monoForumTitle;
        TLRPC.FileLocation fileLocation2;
        TLRPC.ChatPhoto chatPhoto;
        Bitmap bitmapDecodeFile;
        int i2;
        String str2;
        int i3;
        int i4;
        TLRPC.Chat chat2;
        TLRPC.User user2;
        CharSequence charSequence;
        int i5;
        SpannableStringBuilder spannableStringBuilderValueOf;
        String str3;
        char c;
        int i6;
        String string;
        char c2;
        SpannableStringBuilder spannableStringBuilder;
        CharSequence string2;
        CharSequence charSequence2;
        AvatarDrawable avatarDrawable;
        String name;
        int i7;
        TLRPC.UserProfilePhoto userProfilePhoto;
        TLRPC.FileLocation fileLocation3;
        if (this.deleted) {
            RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), R.layout.widget_deleted);
            remoteViews.setTextViewText(R.id.widget_deleted_text, LocaleController.getString(R.string.WidgetLoggedOff));
            return remoteViews;
        }
        if (i >= this.dids.size()) {
            RemoteViews remoteViews2 = new RemoteViews(this.mContext.getPackageName(), R.layout.widget_edititem);
            remoteViews2.setTextViewText(R.id.widget_edititem_text, LocaleController.getString(R.string.TapToEditWidget));
            Bundle bundle = new Bundle();
            bundle.putInt("appWidgetId", this.appWidgetId);
            bundle.putInt("appWidgetType", 0);
            bundle.putInt("currentAccount", this.accountInstance.getCurrentAccount());
            Intent intent = new Intent();
            intent.putExtras(bundle);
            remoteViews2.setOnClickFillInIntent(R.id.widget_edititem, intent);
            return remoteViews2;
        }
        Long l = this.dids.get(i);
        CharSequence charSequence3 = "";
        if (DialogObject.isUserDialog(l.longValue())) {
            user = this.accountInstance.getMessagesController().getUser(l);
            if (user != null) {
                if (UserObject.isUserSelf(user)) {
                    i7 = R.string.SavedMessages;
                } else if (UserObject.isReplyUser(user)) {
                    i7 = R.string.RepliesTitle;
                } else if (UserObject.isDeleted(user)) {
                    i7 = R.string.HiddenName;
                } else {
                    name = ContactsController.formatName(user.first_name, user.last_name);
                    if (!UserObject.isReplyUser(user) || UserObject.isUserSelf(user) || (userProfilePhoto = user.photo) == null || (fileLocation3 = userProfilePhoto.photo_small) == null || fileLocation3.volume_id == 0 || fileLocation3.local_id == 0) {
                        fileLocation = null;
                        str = name;
                        chat = null;
                    } else {
                        fileLocation = fileLocation3;
                        str = name;
                        chat = null;
                    }
                }
                name = LocaleController.getString(i7);
                if (UserObject.isReplyUser(user)) {
                    fileLocation = null;
                    str = name;
                    chat = null;
                }
            } else {
                str = "";
                chat = null;
                fileLocation = null;
            }
        } else {
            TLRPC.Chat chat3 = this.accountInstance.getMessagesController().getChat(Long.valueOf(-l.longValue()));
            if (chat3 == null) {
                chat = chat3;
                str = "";
                user = null;
                fileLocation = null;
            } else if (ChatObject.isMonoForum(chat3)) {
                monoForumTitle = ForumUtilities.getMonoForumTitle(this.accountInstance.getCurrentAccount(), chat3);
                TLRPC.Chat chat4 = this.accountInstance.getMessagesController().getChat(Long.valueOf(chat3.linked_monoforum_id));
                if (chat4 == null || (chatPhoto = chat4.photo) == null || (fileLocation2 = chatPhoto.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                    fileLocation = null;
                    str = monoForumTitle;
                    chat = chat3;
                    user = null;
                } else {
                    fileLocation = fileLocation2;
                    str = monoForumTitle;
                    chat = chat3;
                    user = null;
                }
            } else {
                monoForumTitle = chat3.title;
                TLRPC.ChatPhoto chatPhoto2 = chat3.photo;
                if (chatPhoto2 == null || (fileLocation2 = chatPhoto2.photo_small) == null || fileLocation2.volume_id == 0 || fileLocation2.local_id == 0) {
                }
            }
        }
        RemoteViews remoteViews3 = new RemoteViews(this.mContext.getPackageName(), R.layout.shortcut_widget_item);
        remoteViews3.setTextViewText(R.id.shortcut_widget_item_text, str);
        if (fileLocation != null) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation, true).toString());
            } catch (Throwable th) {
                FileLog.e(th);
            }
        } else {
            bitmapDecodeFile = null;
        }
        int iDp = AndroidUtilities.dp(48.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.eraseColor(0);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (bitmapDecodeFile == null) {
            if (user != null) {
                avatarDrawable = new AvatarDrawable(user);
                if (UserObject.isReplyUser(user)) {
                    avatarDrawable.setAvatarType(12);
                } else if (UserObject.isUserSelf(user)) {
                    avatarDrawable.setAvatarType(1);
                }
            } else {
                avatarDrawable = new AvatarDrawable();
                avatarDrawable.setInfo(this.accountInstance.getCurrentAccount(), chat);
            }
            avatarDrawable.setBounds(0, 0, iDp, iDp);
            avatarDrawable.draw(canvas);
        } else {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
            if (this.roundPaint == null) {
                this.roundPaint = new Paint(1);
                this.bitmapRect = new RectF();
            }
            float width = iDp / bitmapDecodeFile.getWidth();
            canvas.save();
            canvas.scale(width, width);
            this.roundPaint.setShader(bitmapShader);
            this.bitmapRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            canvas.drawRoundRect(this.bitmapRect, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), this.roundPaint);
            canvas.restore();
        }
        canvas.setBitmap(null);
        remoteViews3.setImageViewBitmap(R.id.shortcut_widget_item_avatar, bitmapCreateBitmap);
        MessageObject messageObject = (MessageObject) this.messageObjects.get(l.longValue());
        TLRPC.Dialog dialog = (TLRPC.Dialog) this.dialogs.get(l.longValue());
        if (messageObject != null) {
            long fromChatId = messageObject.getFromChatId();
            if (DialogObject.isUserDialog(fromChatId)) {
                user2 = this.accountInstance.getMessagesController().getUser(Long.valueOf(fromChatId));
                chat2 = null;
            } else {
                chat2 = this.accountInstance.getMessagesController().getChat(Long.valueOf(-fromChatId));
                user2 = null;
            }
            int color = this.mContext.getResources().getColor(R.color.widget_text);
            if (!(messageObject.messageOwner instanceof TLRPC.TL_messageService)) {
                String str4 = "📎 ";
                if (chat == null || chat2 != null || (ChatObject.isChannel(chat) && !ChatObject.isMegagroup(chat))) {
                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                    if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia.photo instanceof TLRPC.TL_photoEmpty) && messageMedia.ttl_seconds != 0) {
                        i5 = R.string.AttachPhotoExpired;
                    } else if ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && (messageMedia.document instanceof TLRPC.TL_documentEmpty) && messageMedia.ttl_seconds != 0) {
                        i5 = R.string.AttachVideoExpired;
                    } else if (messageObject.caption != null) {
                        if (messageObject.isVideo()) {
                            str4 = "📹 ";
                        } else if (messageObject.isVoice()) {
                            str4 = "🎤 ";
                        } else if (messageObject.isMusic()) {
                            str4 = "🎧 ";
                        } else if (messageObject.isPhoto()) {
                            str4 = "🖼 ";
                        }
                        string2 = str4 + ((Object) messageObject.caption);
                    } else {
                        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                            charSequence = "📊 " + ((TLRPC.TL_messageMediaPoll) messageMedia).poll.question.text;
                        } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                            charSequence = "🎮 " + messageObject.messageOwner.media.game.title;
                        } else if (messageObject.type == 14) {
                            charSequence = String.format("🎧 %s - %s", messageObject.getMusicAuthor(), messageObject.getMusicTitle());
                        } else {
                            charSequence = messageObject.messageText;
                            AndroidUtilities.highlightText(charSequence, messageObject.highlightedWords, (Theme.ResourcesProvider) null);
                        }
                        CharSequence charSequence4 = charSequence;
                        string2 = charSequence4;
                        if (messageObject.messageOwner.media != null) {
                            charSequence2 = charSequence4;
                            string2 = charSequence4;
                            if (!messageObject.isMediaEmpty()) {
                            }
                        }
                    }
                    string2 = LocaleController.getString(i5);
                } else {
                    String string3 = messageObject.isOutOwner() ? LocaleController.getString(R.string.FromYou) : user2 != null ? UserObject.getFirstName(user2).replace("\n", "") : "DELETED";
                    CharSequence charSequence5 = messageObject.caption;
                    char c3 = ' ';
                    try {
                        if (charSequence5 != null) {
                            String string4 = charSequence5.toString();
                            if (string4.length() > 150) {
                                string4 = string4.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                            }
                            if (messageObject.isVideo()) {
                                str4 = "📹 ";
                            } else if (messageObject.isVoice()) {
                                str4 = "🎤 ";
                            } else if (messageObject.isMusic()) {
                                str4 = "🎧 ";
                            } else if (messageObject.isPhoto()) {
                                str4 = "🖼 ";
                            }
                            str3 = String.format("%2$s: \u2068%1$s\u2069", str4 + string4.replace('\n', ' '), string3);
                        } else if (messageObject.messageOwner.media == null || messageObject.isMediaEmpty()) {
                            String strSubstring = messageObject.messageOwner.message;
                            if (strSubstring != null) {
                                if (strSubstring.length() > 150) {
                                    strSubstring = strSubstring.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                }
                                str3 = String.format("%2$s: \u2068%1$s\u2069", strSubstring.replace('\n', ' ').trim(), string3);
                            } else {
                                spannableStringBuilderValueOf = SpannableStringBuilder.valueOf("");
                                spannableStringBuilder = spannableStringBuilderValueOf;
                                spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                                string2 = spannableStringBuilder;
                            }
                        } else {
                            color = this.mContext.getResources().getColor(R.color.widget_action_text);
                            TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                c = 1;
                                string = String.format("📊 \u2068%s\u2069", ((TLRPC.TL_messageMediaPoll) messageMedia2).poll.question.text);
                            } else {
                                c = 1;
                                if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                    string = String.format("🎮 \u2068%s\u2069", messageMedia2.game.title);
                                } else {
                                    if (messageObject.type == 14) {
                                        i6 = 2;
                                        string = String.format("🎧 \u2068%s - %s\u2069", messageObject.getMusicAuthor(), messageObject.getMusicTitle());
                                    } else {
                                        i6 = 2;
                                        string = messageObject.messageText.toString();
                                    }
                                    c3 = ' ';
                                    c2 = '\n';
                                    String strReplace = string.replace(c2, c3);
                                    Object[] objArr = new Object[i6];
                                    objArr[0] = strReplace;
                                    objArr[c] = string3;
                                    SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr));
                                    spannableStringBuilderValueOf2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), string3.length() + 2, spannableStringBuilderValueOf2.length(), 33);
                                    spannableStringBuilder = spannableStringBuilderValueOf2;
                                    spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                                    string2 = spannableStringBuilder;
                                }
                            }
                            c2 = '\n';
                            i6 = 2;
                            String strReplace2 = string.replace(c2, c3);
                            Object[] objArr2 = new Object[i6];
                            objArr2[0] = strReplace2;
                            objArr2[c] = string3;
                            SpannableStringBuilder spannableStringBuilderValueOf22 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr2));
                            spannableStringBuilderValueOf22.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), string3.length() + 2, spannableStringBuilderValueOf22.length(), 33);
                            spannableStringBuilder = spannableStringBuilderValueOf22;
                            spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                            string2 = spannableStringBuilder;
                        }
                        spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                        string2 = spannableStringBuilder;
                    } catch (Exception e) {
                        FileLog.e(e);
                        string2 = spannableStringBuilder;
                    }
                    spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str3);
                    spannableStringBuilder = spannableStringBuilderValueOf;
                }
                remoteViews3.setTextViewText(R.id.shortcut_widget_item_time, LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
                int i8 = R.id.shortcut_widget_item_message;
                remoteViews3.setTextViewText(i8, string2.toString());
                remoteViews3.setTextColor(i8, color);
            } else if (ChatObject.isChannel(chat)) {
                TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                charSequence2 = charSequence3;
                if (!(messageAction instanceof TLRPC.TL_messageActionHistoryClear)) {
                    charSequence2 = charSequence3;
                    if (!(messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                        charSequence2 = messageObject.messageText;
                    }
                }
            }
            color = this.mContext.getResources().getColor(R.color.widget_action_text);
            string2 = charSequence2;
            remoteViews3.setTextViewText(R.id.shortcut_widget_item_time, LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
            int i82 = R.id.shortcut_widget_item_message;
            remoteViews3.setTextViewText(i82, string2.toString());
            remoteViews3.setTextColor(i82, color);
        } else {
            if (dialog == null || (i2 = dialog.last_message_date) == 0) {
                remoteViews3.setTextViewText(R.id.shortcut_widget_item_time, "");
            } else {
                remoteViews3.setTextViewText(R.id.shortcut_widget_item_time, LocaleController.stringForMessageListDate(i2));
            }
            remoteViews3.setTextViewText(R.id.shortcut_widget_item_message, "");
        }
        if (dialog == null || (i3 = dialog.unread_count) <= 0) {
            remoteViews3.setViewVisibility(R.id.shortcut_widget_item_badge, 8);
        } else {
            int i9 = R.id.shortcut_widget_item_badge;
            remoteViews3.setTextViewText(i9, String.format("%d", Integer.valueOf(i3)));
            remoteViews3.setViewVisibility(i9, 0);
            if (this.accountInstance.getMessagesController().isDialogMuted(dialog.id, 0L)) {
                remoteViews3.setBoolean(i9, "setEnabled", false);
                i4 = R.drawable.widget_badge_muted_background;
            } else {
                remoteViews3.setBoolean(i9, "setEnabled", true);
                i4 = R.drawable.widget_badge_background;
            }
            remoteViews3.setInt(i9, "setBackgroundResource", i4);
        }
        Bundle bundle2 = new Bundle();
        boolean zIsUserDialog = DialogObject.isUserDialog(l.longValue());
        long jLongValue = l.longValue();
        if (zIsUserDialog) {
            str2 = "userId";
        } else {
            jLongValue = -jLongValue;
            str2 = "chatId";
        }
        bundle2.putLong(str2, jLongValue);
        bundle2.putInt("currentAccount", this.accountInstance.getCurrentAccount());
        Intent intent2 = new Intent();
        intent2.putExtras(bundle2);
        remoteViews3.setOnClickFillInIntent(R.id.shortcut_widget_item, intent2);
        remoteViews3.setViewVisibility(R.id.shortcut_widget_item_divider, i == getCount() ? 8 : 0);
        return remoteViews3;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onCreate() {
        ApplicationLoader.postInitApplication();
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDataSetChanged() throws InterruptedException {
        this.dids.clear();
        this.messageObjects.clear();
        AccountInstance accountInstance = this.accountInstance;
        if (accountInstance == null || !accountInstance.getUserConfig().isClientActivated()) {
            return;
        }
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        ArrayList<TLRPC.Chat> arrayList2 = new ArrayList<>();
        LongSparseArray longSparseArray = new LongSparseArray();
        this.accountInstance.getMessagesStorage().getWidgetDialogs(this.appWidgetId, 0, this.dids, this.dialogs, longSparseArray, arrayList, arrayList2);
        this.accountInstance.getMessagesController().putUsers(arrayList, true);
        this.accountInstance.getMessagesController().putChats(arrayList2, true);
        this.messageObjects.clear();
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            this.messageObjects.put(longSparseArray.keyAt(i), new MessageObject(this.accountInstance.getCurrentAccount(), (TLRPC.Message) longSparseArray.valueAt(i), (LongSparseArray) null, (LongSparseArray) null, false, true));
        }
    }

    @Override // android.widget.RemoteViewsService.RemoteViewsFactory
    public void onDestroy() {
    }
}

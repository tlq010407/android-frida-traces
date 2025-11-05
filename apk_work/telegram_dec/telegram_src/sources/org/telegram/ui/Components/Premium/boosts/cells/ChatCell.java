package org.telegram.ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ChatCell extends BaseCell {
    private TLRPC.Chat chat;
    private ChatDeleteListener chatDeleteListener;
    private final ImageView deleteImageView;
    private boolean removable;

    public interface ChatDeleteListener {
        void onChatDeleted(TLRPC.Chat chat);
    }

    public ChatCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        ImageView imageView = new ImageView(context);
        this.deleteImageView = imageView;
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
        imageView.setImageResource(R.drawable.poll_remove);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        imageView.setContentDescription(LocaleController.getString(R.string.Delete));
        boolean z = LocaleController.isRTL;
        int i = (z ? 3 : 5) | 17;
        float f = BitmapDescriptorFactory.HUE_RED;
        addView(imageView, LayoutHelper.createFrame(48, 50.0f, i, z ? 3.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, z ? BitmapDescriptorFactory.HUE_RED : 3.0f, BitmapDescriptorFactory.HUE_RED));
        this.titleTextView.setPadding(AndroidUtilities.dp(LocaleController.isRTL ? 24.0f : BitmapDescriptorFactory.HUE_RED), 0, AndroidUtilities.dp(LocaleController.isRTL ? f : 24.0f), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setChat$0(TLRPC.Chat chat, View view) {
        ChatDeleteListener chatDeleteListener = this.chatDeleteListener;
        if (chatDeleteListener != null) {
            chatDeleteListener.onChatDeleted(chat);
        }
    }

    public TLRPC.Chat getChat() {
        return this.chat;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return false;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.cells.BaseCell, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.deleteImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), 1073741824));
    }

    public void setChat(final TLRPC.Chat chat, int i, boolean z, int i2) {
        String pluralString;
        this.removable = z;
        this.chat = chat;
        this.avatarDrawable.setInfo(chat);
        this.imageView.setRoundRadius(AndroidUtilities.dp(20.0f));
        this.imageView.setForUserOrChat(chat, this.avatarDrawable);
        this.titleTextView.setText(Emoji.replaceEmoji(chat.title, this.titleTextView.getPaint().getFontMetricsInt(), false));
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
        if (!z) {
            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChannelWillReceiveBoost" : "BoostingGroupWillReceiveBoost", i, new Object[0]);
        } else if (i2 >= 1) {
            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "Subscribers" : "Members", i2, new Object[0]);
        } else {
            pluralString = LocaleController.getString(zIsChannelAndNotMegaGroup ? R.string.DiscussChannel : R.string.AccDescrGroup);
        }
        setSubtitle(pluralString);
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
        setDivider(true);
        ImageView imageView = this.deleteImageView;
        if (z) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(4);
        }
        this.deleteImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.ChatCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setChat$0(chat, view);
            }
        });
    }

    public void setChatDeleteListener(ChatDeleteListener chatDeleteListener) {
        this.chatDeleteListener = chatDeleteListener;
    }

    public void setCounter(int i, int i2) {
        String pluralString;
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.chat);
        if (!this.removable) {
            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChannelWillReceiveBoost" : "BoostingGroupWillReceiveBoost", i, new Object[0]);
        } else if (i2 >= 1) {
            pluralString = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "Subscribers" : "Members", i2, new Object[0]);
        } else {
            pluralString = LocaleController.getString(zIsChannelAndNotMegaGroup ? R.string.DiscussChannel : R.string.AccDescrGroup);
        }
        setSubtitle(pluralString);
    }
}

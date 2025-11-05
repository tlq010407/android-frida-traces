package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.LayoutHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class AccountSelectCell extends FrameLayout {
    private int accountNumber;
    private AvatarDrawable avatarDrawable;
    private ImageView checkImageView;
    private BackupImageView imageView;
    private TextView infoTextView;
    private SimpleTextView textView;

    public AccountSelectCell(Context context, boolean z) {
        float f;
        float f2;
        View view;
        float f3;
        int i;
        float f4;
        int i2;
        float f5;
        super(context);
        setMinimumWidth(AndroidUtilities.dp(196.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setTextSize(AndroidUtilities.dp(12.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.dp(18.0f));
        addView(this.imageView, LayoutHelper.createFrame(36, 36.0f, 51, 10.0f, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextSize(15);
        this.textView.setTypeface(AndroidUtilities.bold());
        this.textView.setEllipsizeByGradient(true);
        this.textView.setMaxLines(1);
        this.textView.setGravity(19);
        if (z) {
            addView(this.textView, LayoutHelper.createFrame(-2, -2.0f, 51, 61.0f, 7.0f, 8.0f, BitmapDescriptorFactory.HUE_RED));
            this.textView.setTextColor(Theme.getColor(Theme.key_voipgroup_nameText));
            this.textView.setText(LocaleController.getString(R.string.VoipGroupDisplayAs));
            TextView textView = new TextView(context);
            this.infoTextView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_voipgroup_lastSeenText));
            this.infoTextView.setTextSize(1, 15.0f);
            this.infoTextView.setLines(1);
            this.infoTextView.setMaxLines(1);
            this.infoTextView.setSingleLine(true);
            this.infoTextView.setMaxWidth(AndroidUtilities.dp(320.0f));
            this.infoTextView.setGravity(51);
            this.infoTextView.setEllipsize(TextUtils.TruncateAt.END);
            view = this.infoTextView;
            f3 = 8.0f;
            f = BitmapDescriptorFactory.HUE_RED;
            i = -2;
            f4 = -2.0f;
            i2 = 51;
            f5 = 61.0f;
            f2 = 27.0f;
        } else {
            SimpleTextView simpleTextView2 = this.textView;
            f = BitmapDescriptorFactory.HUE_RED;
            f2 = BitmapDescriptorFactory.HUE_RED;
            addView(simpleTextView2, LayoutHelper.createFrame(-1, -1.0f, 51, 61.0f, BitmapDescriptorFactory.HUE_RED, 52.0f, BitmapDescriptorFactory.HUE_RED));
            this.textView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
            ImageView imageView = new ImageView(context);
            this.checkImageView = imageView;
            imageView.setImageResource(R.drawable.account_check);
            this.checkImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.checkImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemCheck), PorterDuff.Mode.MULTIPLY));
            view = this.checkImageView;
            f3 = 6.0f;
            i = 40;
            f4 = -1.0f;
            i2 = 53;
            f5 = BitmapDescriptorFactory.HUE_RED;
        }
        addView(view, LayoutHelper.createFrame(i, f4, i2, f5, f2, f3, f));
    }

    private int width() {
        float fDp = AndroidUtilities.dp(196.0f);
        float fDp2 = AndroidUtilities.dp((this.checkImageView != null ? 50 : 0) + 69);
        float fMeasureText = this.textView.getTextPaint().measureText(this.textView.getText().toString());
        TextView textView = this.infoTextView;
        return (int) Math.max(fDp, fDp2 + Math.max(fMeasureText, textView != null ? textView.getPaint().measureText(this.infoTextView.getText().toString()) : BitmapDescriptorFactory.HUE_RED));
    }

    public int getAccountNumber() {
        return this.accountNumber;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.infoTextView == null) {
            this.textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.checkImageView != null || (this.infoTextView != null && getLayoutParams().width != -2)) {
            i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
        } else if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(width(), Integer.MIN_VALUE);
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(56.0f), 1073741824));
    }

    public void setAccount(int i, boolean z) {
        this.accountNumber = i;
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        this.avatarDrawable.setInfo(i, currentUser);
        this.textView.setText(ContactsController.formatName(currentUser.first_name, currentUser.last_name));
        this.imageView.getImageReceiver().setCurrentAccount(i);
        this.imageView.setForUserOrChat(currentUser, this.avatarDrawable);
        this.checkImageView.setVisibility((z && i == UserConfig.selectedAccount) ? 0 : 4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setObject(TLObject tLObject) {
        TextView textView;
        String name;
        TLRPC.Chat chat;
        if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            this.avatarDrawable.setInfo(user);
            textView = this.infoTextView;
            name = ContactsController.formatName(user.first_name, user.last_name);
            chat = user;
        } else {
            TLRPC.Chat chat2 = (TLRPC.Chat) tLObject;
            this.avatarDrawable.setInfo(chat2);
            textView = this.infoTextView;
            if (chat2 == null) {
                name = "";
                chat = chat2;
            } else {
                name = chat2.title;
                chat = chat2;
            }
        }
        textView.setText(name);
        this.imageView.setForUserOrChat(chat, this.avatarDrawable);
    }
}

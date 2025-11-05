package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.LayoutHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class TopicSearchCell extends FrameLayout {
    BackupImageView backupImageView;
    public boolean drawDivider;
    TextView textView;
    TLRPC.TL_forumTopic topic;

    public TopicSearchCell(Context context) {
        float f;
        float f2;
        int i;
        float f3;
        TextView textView;
        int i2;
        float f4;
        float f5;
        super(context);
        this.backupImageView = new BackupImageView(context);
        TextView textView2 = new TextView(context);
        this.textView = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.bold());
        if (LocaleController.isRTL) {
            BackupImageView backupImageView = this.backupImageView;
            f2 = BitmapDescriptorFactory.HUE_RED;
            i = 21;
            f5 = 12.0f;
            f3 = BitmapDescriptorFactory.HUE_RED;
            addView(backupImageView, LayoutHelper.createFrame(30, 30.0f, 21, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView = this.textView;
            f = 56.0f;
            i2 = -1;
            f4 = -2.0f;
        } else {
            BackupImageView backupImageView2 = this.backupImageView;
            f = 12.0f;
            f2 = BitmapDescriptorFactory.HUE_RED;
            i = 16;
            f3 = BitmapDescriptorFactory.HUE_RED;
            addView(backupImageView2, LayoutHelper.createFrame(30, 30.0f, 16, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            textView = this.textView;
            i2 = -1;
            f4 = -2.0f;
            f5 = 56.0f;
        }
        addView(textView, LayoutHelper.createFrame(i2, f4, i, f5, f3, f, f2));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            int iDp = AndroidUtilities.dp(56.0f);
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - iDp, getMeasuredHeight() - 1, Theme.dividerPaint);
            } else {
                canvas.drawLine(iDp, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }
    }

    public TLRPC.TL_forumTopic getTopic() {
        return this.topic;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), 1073741824));
    }

    public void setTopic(TLRPC.TL_forumTopic tL_forumTopic) {
        TextView textView;
        CharSequence charSequenceHighlightText;
        this.topic = tL_forumTopic;
        if (TextUtils.isEmpty(tL_forumTopic.searchQuery)) {
            textView = this.textView;
            charSequenceHighlightText = AndroidUtilities.removeDiacritics(tL_forumTopic.title);
        } else {
            textView = this.textView;
            charSequenceHighlightText = AndroidUtilities.highlightText(AndroidUtilities.removeDiacritics(tL_forumTopic.title), tL_forumTopic.searchQuery, (Theme.ResourcesProvider) null);
        }
        textView.setText(charSequenceHighlightText);
        ForumUtilities.setTopicIcon(this.backupImageView, tL_forumTopic);
        BackupImageView backupImageView = this.backupImageView;
        if (backupImageView == null || backupImageView.getImageReceiver() == null || !(this.backupImageView.getImageReceiver().getDrawable() instanceof ForumUtilities.GeneralTopicDrawable)) {
            return;
        }
        ((ForumUtilities.GeneralTopicDrawable) this.backupImageView.getImageReceiver().getDrawable()).setColor(Theme.getColor(Theme.key_chats_archiveBackground));
    }
}

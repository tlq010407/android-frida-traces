package org.telegram.ui.Components;

import android.text.TextPaint;
import android.view.View;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.TextStyleSpan;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class URLSpanUserMention extends URLSpanNoUnderline {
    private int currentType;
    private TextStyleSpan.TextStyleRun style;

    public URLSpanUserMention(String str, int i) {
        this(str, i, null);
    }

    public URLSpanUserMention(String str, int i, TextStyleSpan.TextStyleRun textStyleRun) {
        super(str);
        this.currentType = i;
        this.style = textStyleRun;
    }

    @Override // org.telegram.ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
    public void onClick(View view) {
        super.onClick(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0028  */
    @Override // org.telegram.ui.Components.URLSpanNoUnderline, android.text.style.ClickableSpan, android.text.style.CharacterStyle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateDrawState(TextPaint textPaint) {
        int i;
        int color;
        TextStyleSpan.TextStyleRun textStyleRun;
        super.updateDrawState(textPaint);
        int i2 = this.currentType;
        if (i2 == 3) {
            i = Theme.key_windowBackgroundWhiteLinkText;
        } else {
            if (i2 == 2) {
                color = -1;
                textPaint.setColor(color);
                textStyleRun = this.style;
                if (textStyleRun == null) {
                    textStyleRun.applyStyle(textPaint);
                    return;
                } else {
                    textPaint.setUnderlineText(false);
                    return;
                }
            }
            i = i2 == 1 ? Theme.key_chat_messageLinkOut : Theme.key_chat_messageLinkIn;
        }
        color = Theme.getColor(i);
        textPaint.setColor(color);
        textStyleRun = this.style;
        if (textStyleRun == null) {
        }
    }
}
